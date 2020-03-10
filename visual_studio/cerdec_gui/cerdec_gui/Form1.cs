using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Sockets;
using System.IO.Ports;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Forms;

namespace cerdec_gui
{

    public partial class MainForm : Form
    {
        // Form objects
        private Shelf shelf_one = new Shelf();
        private Module current_mod = new Module();
        private Converter pcka_conv = new Converter();
        private GraphForm data_form;
        private LogForm log_form;

        // Variables for connection
        private bool is_connected = false;

        // Variables for handling incoming/outgoing data
        private CommsLib comms_lib;
        private int data_type;

        // Timers
        private System.Timers.Timer refresh_timer;
        private System.Timers.Timer connection_timer;
        private System.Timers.Timer led_timer;
        private System.Timers.Timer log_timer;
        private System.Timers.Timer fetch_timer;

        // Log/Errors
        public Queue<string> system_messages;
        public Queue<string> user_messages;

        public MainForm()
        {
            InitializeComponent();
            system_messages = new Queue<string>();
            user_messages = new Queue<string>();
            refresh_timer = new System.Timers.Timer(50);
            connection_timer = new System.Timers.Timer(refresh_timer.Interval * 5);
            led_timer = new System.Timers.Timer(500);
            log_timer = new System.Timers.Timer(5000);
            fetch_timer = new System.Timers.Timer((1000 * 30) / 6); //new System.Timers.Timer(10);
            refresh_timer.Elapsed += refresh_thread;
            //connection_timer.Elapsed += disconnect_unit;
            led_timer.Elapsed += led_blink;
            log_timer.Elapsed += reset_gui_message;
            log_timer.AutoReset = false;
            fetch_timer.Elapsed += fetch_data;
        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            if(comms_lib != null)
                stop_stream();
        }

        private void set_settings()
        {
            try
            {
                // Restore last saved module
                current_mod.Id = Properties.Settings.Default.saved_mod;
                switch (current_mod.Id)
                {
                    case 1:
                        ModRB1.Checked = true;
                        break;

                    case 2:
                        ModRB2.Checked = true;
                        break;

                    case 3:
                        ModRB3.Checked = true;
                        break;

                    case 4:
                        ModRB4.Checked = true;
                        break;

                    case 5:
                        ModRB1.Checked = true;
                        break;

                    case 6:
                        ModRB1.Checked = true;
                        break;

                    case 7:
                        ModRB1.Checked = true;
                        break;

                    case 8:
                        ModRB1.Checked = true;
                        break;

                    case 9:
                        ModRB1.Checked = true;
                        break;

                }

                // Set the Converter mode to Off
                pcka_conv.Cmd_mode = CmdCodes.ModeOff;
                OffModeRB.Checked = true;

            }
            catch(Exception)
            {

            }

        }

        public bool sendCmd(byte[] cmd)
        {
            bool retv = false;
            if (comms_lib != null && comms_lib.Connected)
            {
                retv = comms_lib.send_cmd(cmd);
            }

            if (!retv)
            {
                if (ConnectTrackbar.InvokeRequired)
                {
                    ConnectTrackbar.Invoke(new MethodInvoker(delegate
                    {
                        ConnectTrackbar.Enabled = true;
                        ConnectTrackbar.Value = 0;
                        ConnectedLED.Value = false;
                    }));
                }
                else
                {
                    ConnectTrackbar.Enabled = true;
                    ConnectTrackbar.Value = 0;
                    ConnectedLED.Value = false;
                }
            }
            return retv;
        }

        private void start_stream()
        {
            start_data_fetch();
            /*
            // Clear the data queues
            shelf_one.clear_queues();
            current_mod.clear_queues();

            int sampleRate = 20 * 5; // 50msec period, but 5 packets of data per period
            int decimation = 3000 / sampleRate;

            //
            //  The number of datasets is defaulted to be
            //  the number 300 divided by the decimation rate.
            //  the allowed range is 1 - 60 datasets or 4 - 240 floating point
            //  values per message.
            //  Example...for 500 samples per second, the decimation rate is 6 no matter how many
            //  channels are supported. the maximum throughput of the USB channel is 3ksps. So for
            //  a sample rate of 500 samples per second this amounts to 2Ksps through the USB channel.
            //
            //  Decimations factors of 1 - 3000 are allowed.
            //
            //  For the formula below the number of data packets allowed per data stream message is 1 - 60.
            //
            //  Each dataset has 1 - 4 samples depending on the number of channels enabled. One per enabled channel.
            //
            //  For a decimation rate of 300 (10 sps) or higher (<10 sps), the number of datasets per data stream
            //  message is 1. To provide the 1 sample data stream message requires 1/10th of a second of sampling.
            //  
            //

            int np = 300 / decimation;
            if (np < 1) np = 1;
            if (np > 60) np = 60;

            //  The streaming begins
           
            byte basemask = 0x0F;

            byte[] cmd = new byte[6];
            cmd[0] = 0;
            cmd[1] = CmdCodes.StartStream;
            cmd[2] = (byte)np;
            cmd[3] = (byte)decimation;
            cmd[4] = (byte)(decimation >> 8);
            cmd[5] = basemask;
            sendCmd(cmd);
            */
        }

        private void start_timers()
        {
            if (!is_connected)
                return;

            refresh_timer.Start();
            connection_timer.Start();
        }

        private void stop_timers()
        {
            refresh_timer.Stop();
            connection_timer.Stop();
        }

        private void reset_connection_timer()
        {
            is_connected = false;
            connection_timer.Stop();
            connection_timer.Start();
        }

        private void led_start()
        {
            ConnectedLED.Value = true;
            led_timer.Start();
        }

        private void led_stop()
        {
            led_timer.Stop();
            ConnectedLED.Value = false;
        }

        private void led_blink(Object source, ElapsedEventArgs e)
        {
            ConnectedLED.Value = !ConnectedLED.Value;
        }

        public void stop_stream()
        {
            //  Command data streaming to stop...
            byte[] cmd = new byte[2];
            cmd[0] = 0;
            cmd[1] = CmdCodes.StopStream; // stop stream just in case
            sendCmd(cmd);
            Thread.Sleep(50);
        }

        private void disconnect_unit(Object source, ElapsedEventArgs e)
        {
            disconnect();
        }

        private void disconnect()
        {
            if (comms_lib != null)
            {
                comms_lib.close();
                comms_lib = null;
            }

            led_stop();
            stop_timers();
            fetch_timer.Stop();
        }

        private void ConnectTrackbar_Scroll(object sender, EventArgs e)
        {
            // Cast to a trackbar to use methods
            TrackBar trackbar_sender = ((TrackBar)sender);
            
            // Flag for resetting trackbar at end of method
            // If you change value of TB while in this method
            // it will make another call to this method while finishing that one
            bool go_offline = false;

            // Based on the requested connection status
            switch (trackbar_sender.Value)
            {
                case 0: // Offline

                    disconnect();

                    break;

                case 1: // Connect

                    // Get the available COM ports and the saved port
                    string[] com_ports = SerialPort.GetPortNames();
                    string saved_com_port = Properties.Settings.Default.saved_com_port;

                    // If there are no COM ports
                    if (com_ports == null || com_ports.Length == 0)
                    {
                        go_offline = !show_comms_setup_form("There are no available COM ports");
                        break;

                    } // If there is no saved com port
                    else if(saved_com_port == null || saved_com_port == "")
                    {
                        go_offline = !show_comms_setup_form("You must first select a COM Port");
                        break;

                    } // If the saved com port isn't in the list of available ports
                    else if(!Array.Exists(com_ports, ele => ele == saved_com_port))
                    {
                        go_offline = !show_comms_setup_form(saved_com_port.ToString() + " is no longer available");
                        break;
                    }

                    comms_lib = new CommsLib(saved_com_port, processRecData);
                    for (int i = 0; i < 3 && !comms_lib.Connected; i++) // Try to connect 3 times
                    {
                        comms_lib.close();
                        comms_lib = new CommsLib(saved_com_port, processRecData);
                    }

                    if (!comms_lib.Connected)
                    {
                        MessageBox.Show("Unable to connect to BMS on " + saved_com_port.ToString());
                        comms_lib.close();
                        ConnectTrackbar.Value = 0;
                        if (ConnectTrackbar.InvokeRequired)
                        {
                            ConnectTrackbar.Invoke(new MethodInvoker(delegate
                            {
                                ConnectTrackbar.Enabled = true;
                            }));
                        }
                        else
                        {
                            ConnectTrackbar.Enabled = true;
                        }
                        is_connected = false;
                        break;
                    }

                    if(comms_lib.Connected)
                    {

                        Thread.Sleep(500);

                        // Setup the saved settings
                        set_settings();

                        Thread.Sleep(250);

                        stop_stream();

                        // Turn on the LED
                        led_start();

                        // Pause for half-a-second.
                        Thread.Sleep(500);

                        // Get System Info here
                        // ...
                        //System.Threading.Thread.Sleep(1000);

                    }

                    is_connected = (comms_lib != null);

                    // Save the COM Port in the settings
                    save_comm_port(saved_com_port);

                    if (is_connected)
                        start_stream();

                    break;

                default:
                    break;
            }
            if (go_offline)
                trackbar_sender.Value = 0;
        }

        private void commsSetupToolStripMenuItem_Click(object sender, EventArgs e)
        {
            show_comms_setup_form();
        }

        private void processRecData(byte[] buff, int offset, int length, int bytes_in_buff, int buff_cap)
        {
            try
            {
                if(length < 2)
                    return;

                int data_index;
                UInt16 prod_mod;
                DateTime time = DateTime.Now;

                is_connected = true;

                //  Let's process the various types of messages...
                switch (buff[offset + 1])  // switch on the type of message
                {
                    case CmdCodes.GetShelfData:

                        // Data Set 0: ESD Info
                        // Total Shelf Volt   Int 2B
                        // Shelf Avg. Temp    Int 2B
                        // Shelf Max Temp     Int 2B
                        // Shelf Min Temp     Int 2B
                        // Shelf Max Temp ID  Int 2B
                        // Shelf Min Temp ID  Int 2B
                        // Shelf Alarms       Int 2B
                        // Shelf Errors       Int 2B
                        // ====================== 16 Bytes

                        if (length < 5)
                            return;

                        data_index = 2;

                        // Shelf Data
                        shelf_one.Volt_tot = BitConverter.ToUInt16(buff, offset + data_index) / 10.0F; // Divide by 10 to get decimal point
                        data_index += 2;
                        shelf_one.Temp_avg = (BitConverter.ToUInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32; // Celsius to Fahrenheit
                        data_index += 2;
                        shelf_one.Temp_max = (BitConverter.ToUInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32;
                        data_index += 2;
                        shelf_one.Temp_min = (BitConverter.ToUInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32;
                        data_index += 2;
                        shelf_one.Temp_max_id = (BitConverter.ToUInt16(buff, offset + data_index) + 1); // Zero based index -> 1 basd index
                        data_index += 2;
                        shelf_one.Temp_min_id = (BitConverter.ToInt16(buff, offset + data_index) + 1);
                        data_index += 2;
                        shelf_one.Alarms_errors = BitConverter.ToInt16(buff, offset + data_index);
                        data_index += 2;
                        shelf_one.Error_code = BitConverter.ToInt16(buff, offset + data_index);
                        data_index += 2;

                        shelf_one.Error_message = shelf_one.determine_error_message();
                        shelf_one.enqueue_data(time);

                        break;
                    case CmdCodes.GetModData:

                        // Current Mod        Int 2B
                        // Mod Voltage        Int 2B
                        // Mod Temp           Int 2B
                        // Mod Errors         Int 2B
                        // ====================== 8B

                        if (length < 5)
                            return;

                        data_index = 2;

                        prod_mod = BitConverter.ToUInt16(buff, offset + data_index); // Already 1 index based
                        data_index += 2;
                        if (current_mod.Id == prod_mod)
                        {
                            current_mod.Mismatch_count = 0;

                            current_mod.Voltage = BitConverter.ToInt16(buff, offset + data_index) / 10.0F; // Divide by 10 to get decimal point
                            data_index += 2;
                            current_mod.Temp = (BitConverter.ToInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32; // Celsius to Fahrenheit
                            data_index += 2;

                            // Save the data to the 30sec Queues
                            current_mod.enqueue_data(time);


                            //refresh_mod_box();
                        }
                        else
                        {
                            if (current_mod.Mismatch_count++ > 3)
                                set_current_mod((byte)current_mod.Id);
                        }

                        break;
                    case CmdCodes.ConvVoltData:

                        // Data Set 1: Converter Voltages
                        // Set Point        Long 4B
                        // DC Bus           Long 4B
                        // ESD Bus          Long 4B
                        // ===================== 12B

                        if (length < 5)
                            return;

                        data_index = 2;

                        // Converter Voltage Data
                        pcka_conv.Volt_bus_set = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;
                        pcka_conv.Volt_bus_act = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;
                        pcka_conv.Volt_esd_act = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;

                        //refresh_conv_voltages();

                        break;
                    case CmdCodes.ConvCurrData:

                        // Data Set 2: Converter Currents
                        // Source           Long 4B
                        // Load             Long 4B
                        // Conv. DC         Long 4B
                        // ESD              Long 4B
                        // ===================== 16B

                        if (length < 5)
                            return;

                        data_index = 2;

                        // Converter Current Data
                        pcka_conv.Curr_src_act = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;
                        pcka_conv.Curr_load_act = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;
                        pcka_conv.Curr_bus_act = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;
                        pcka_conv.Curr_esd_act = BitConverter.ToInt32(buff, offset + data_index);
                        data_index += 4;

                        //refresh_conv_currents();

                        break;
                    case CmdCodes.ConvTempData:

                        // Data Set 3: Converter Temperatures
                        // Temp 1           Int 2B
                        // Temp 2           Int 2B
                        // Temp 3           Int 2B
                        // ...              ...
                        // Temp 8           Int 2B
                        // ==================== 16B

                        if (length < 5)
                            return;

                        data_index = 2;

                        // Converter Temperature Data
                        for (int i = 0; i < 8; i++)
                        {
                            pcka_conv.Temps[i] = BitConverter.ToInt16(buff, offset + data_index);
                            data_index += 2;
                        }

                        //refresh_conv_temps();

                        break;
                    case CmdCodes.ConvStat:

                        // Data Set 4: Convert Status Messages

                        if (length < 5)
                            return;

                        data_index = 2;

                        break;

                    case CmdCodes.DataPacket:

                        if(length < 10)
                        {
                            // Address                1B
                            // Data Packet ID         1B
                            // Num. of Data Set       1B
                            // Data Set index         1B

                            // Data Set 0: ESD Info
                            // Total Shelf Volt   Int 2B
                            // Shelf Avg. Temp    Int 2B
                            // Shelf Max Temp     Int 2B
                            // Shelf Min Temp     Int 2B
                            // Shelf Max Temp ID  Int 2B
                            // Shelf Min Temp ID  Int 2B
                            // Shelf Alarms       Int 2B
                            // Shelf Errors       Int 2B
                            // Current Mod        Int 2B
                            // Mod Voltage        Int 2B
                            // Mod Temp           Int 2B
                            // ====================== 26 Bytes

                            // Data Set 1: Converter Voltages
                            // Set Point        UInt 2B
                            // DC Bus           UInt 2B
                            // ESD Bus          UInt 2B
                            // ===================== 10 Bytes

                            // Data Set 2: Converter Currents
                            // Source            Int 2B
                            // Load              Int 2B
                            // Conv. DC          Int 2B
                            // ESD               Int 2B
                            // ===================== 12 Bytes

                            // Data Set 3: Converter Temperatures
                            // Temp 1           Int 2B
                            // Temp 2           Int 2B
                            // Temp 3           Int 2B
                            // ...              ...
                            // Temp 8           Int 2B
                            // ==================== 20 Bytes

                            // Data Set 4: Convert Status Messages

                            return;
                        }

                        if (!refresh_timer.Enabled && comms_lib != null)
                            start_timers();

                        int data_set = buff[offset + 3];
                        data_index = 4;

                        switch(data_set) // Switch on which data set is being sent
                        {
                            case 0:
                                
                                // Shelf Data
                                shelf_one.Volt_tot = BitConverter.ToUInt16(buff, offset + data_index) / 10.0F; // Divide by 10 to get decimal point
                                data_index += 2;
                                shelf_one.Temp_avg = (BitConverter.ToUInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32; // Celsius to Fahrenheit
                                data_index += 2;
                                shelf_one.Temp_max = (BitConverter.ToUInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32;
                                data_index += 2;
                                shelf_one.Temp_min = (BitConverter.ToUInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32;
                                data_index += 2;
                                shelf_one.Temp_max_id = (BitConverter.ToUInt16(buff, offset + data_index) + 1); // Zero based index -> 1 basd index
                                data_index += 2;
                                shelf_one.Temp_min_id = (BitConverter.ToInt16(buff, offset + data_index) + 1);
                                data_index += 2;
                                shelf_one.Alarms_errors = BitConverter.ToInt16(buff, offset + data_index);
                                data_index += 2;
                                shelf_one.Error_code = BitConverter.ToInt16(buff, offset + data_index);
                                data_index += 2;

                                shelf_one.Error_message = shelf_one.determine_error_message();
                                add_to_system_log("Shelf Info " + time.TimeOfDay.ToString());

                                //refresh_shelf_box();

                                prod_mod = BitConverter.ToUInt16(buff, offset + data_index); // Already 1 index based
                                data_index += 2;
                                if (current_mod.Id == prod_mod)
                                {
                                    current_mod.Mismatch_count = 0;

                                    current_mod.Voltage = BitConverter.ToInt16(buff, offset + data_index) / 10.0F; // Divide by 10 to get decimal point
                                    data_index += 2;
                                    current_mod.Temp = (BitConverter.ToInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32; // Celsius to Fahrenheit
                                    data_index += 2;

                                    // Save the data to the 30sec Queues
                                    current_mod.enqueue_data();

                                    //refresh_mod_box();
                                }
                                else
                                {
                                    if(current_mod.Mismatch_count++>3)
                                        set_current_mod((byte)current_mod.Id);   
                                }

                                // Save the data to the 30sec Queues
                                shelf_one.enqueue_data();

                                break;

                            case 1:

                                // Converter Voltage Data
                                pcka_conv.Volt_bus_set = (float)(BitConverter.ToUInt16(buff, offset + data_index) * (600.0F / UInt16.MaxValue));
                                data_index += 2;
                                pcka_conv.Volt_bus_act = (float)(BitConverter.ToUInt16(buff, offset + data_index) * (600.0F / UInt16.MaxValue));
                                data_index += 2;
                                pcka_conv.Volt_esd_act = (float)(BitConverter.ToUInt16(buff, offset + data_index) * (600.0F / UInt16.MaxValue));
                                data_index += 2;

                                //refresh_conv_voltages();

                                break;

                            case 2:

                                // Converter Current Data
                                pcka_conv.Curr_src_act = (float)(BitConverter.ToInt16(buff, offset + data_index) * (2000.0F / Int16.MaxValue));
                                data_index += 2;
                                pcka_conv.Curr_load_act = (float)(BitConverter.ToInt16(buff, offset + data_index) * (2000.0F / Int16.MaxValue));
                                data_index += 2;
                                pcka_conv.Curr_bus_act = (float)(BitConverter.ToInt16(buff, offset + data_index) * (2000.0F / Int16.MaxValue));
                                data_index += 2;
                                pcka_conv.Curr_esd_act = (float)(BitConverter.ToInt16(buff, offset + data_index) * (2000.0F / Int16.MaxValue));
                                data_index += 2;

                                //refresh_conv_currents();

                                break;

                            case 3:

                                // Converter Temperature Data
                                for(int i = 0; i < 8; i++)
                                {
                                    pcka_conv.Temps[i] = (float)((BitConverter.ToInt16(buff, offset + data_index) / 10.0F) * 9.0F / 5.0F + 32); // Cels -> Fahr
                                    data_index += 2;
                                }

                                //refresh_conv_temps();

                                break;

                            case 4:
                                break;
                        }

                        break;
                    
                    case CmdCodes.SetModUpdateTime:

                        switch(buff[offset + 2])
                        {
                            case CmdCodes.UpdateOff:
                                    
                                break;

                            case CmdCodes.UpdateSlow:

                                break;

                            case CmdCodes.UpdateMedium:

                                break;

                            case CmdCodes.UpdateFast:

                                break;
                        }

                        break;

                    case CmdCodes.CmdUnImpl:

                        break;

                    case CmdCodes.CmdInvalid:

                        break;

                    case CmdCodes.CmdExeErr:

                        break;

                    case CmdCodes.SwitchToASCII:

                        break;

                    default:

                        break;
                }

            }
            catch (Exception)
            {

            }
            return;
        }

        // ===================
        // ===== Timers ======
        // ===================

        // ===================
        // ===== Display ======
        // ===================

        private bool show_comms_setup_form()
        {
            CommsSetup comms_setup = new CommsSetup(Properties.Settings.Default.saved_com_port);
            if (comms_setup.ShowDialog() == DialogResult.OK)
            {
                Properties.Settings.Default.saved_com_port = comms_setup.com_port;
                Properties.Settings.Default.Save();
                return true;
            }

            return false;
        }

        private void save_comm_port(string saved_port)
        {
            Properties.Settings.Default.saved_com_port = saved_port;
            Properties.Settings.Default.Save();
        }

        private void set_textbox_text(TextBox text_box, string message)
        {
            if (text_box.InvokeRequired)
            {
                text_box.Invoke(new MethodInvoker(delegate
                {
                    try
                    {
                        text_box.Text = message;
                        text_box.Update(); // try and see if it will break first?
                    }
                    catch(Exception)
                    {

                    }
                }));
            }
            else
            {
                try
                {
                    text_box.Text = message;
                    text_box.Update(); // try and see if it will break first?
                }
                catch (Exception)
                {

                }
            }
        }

        private string get_textbox_text(TextBox text_box)
        {
            string text = "";
            if (text_box.InvokeRequired)
            {
                text_box.Invoke(new MethodInvoker(delegate
                {
                    text = text_box.Text;
                }));
            }
            else
            {
                text = text_box.Text;
            }
            return text;
        }

        private void refresh_shelf_box()
        {
            string num_format = "F1";
            set_textbox_text(TotalVoltField, shelf_one.Volt_tot.ToString(num_format)); // Total Voltage
            set_textbox_text(AvgTempField, shelf_one.Temp_avg.ToString(num_format)); // Average Temp
            set_textbox_text(MaxTempField, shelf_one.Temp_max.ToString(num_format)); // Max Temp
            set_textbox_text(MinTempField, shelf_one.Temp_min.ToString(num_format)); // Min Temp
            set_textbox_text(MaxTempIDField, shelf_one.Temp_max_id.ToString()); // Max Temp ID
            set_textbox_text(MinTempIDField, shelf_one.Temp_min_id.ToString()); // Min Temp ID
            set_textbox_text(ShelfErrorField, shelf_one.Error_code.ToString()); // Error Message
            determine_shelf_errors();
        }

        private void refresh_mod_box()
        {
            string num_format = "F1";
            set_textbox_text(ModVoltageField, current_mod.Voltage.ToString(num_format)); // Module Voltage
            set_textbox_text(ModTempField, current_mod.Temp.ToString(num_format)); // Module Temp
            set_textbox_text(ModErrorField, current_mod.Error_code.ToString()); // Error Code
            determine_mod_errors();
        }

        private void reset_mod_box()
        {
            set_textbox_text(ModVoltageField, ""); // Module Voltage
            set_textbox_text(ModTempField, ""); // Module Temp
            set_textbox_text(ModErrorField, ""); // Error Code
        }

        private void determine_shelf_errors()
        {
            // Error Code
            set_textbox_text(ShelfErrorField, "0x" + shelf_one.Error_code.ToString("X2"));
            update_error_checkbox(ShelfOverChargedCB, ((shelf_one.Alarms_errors & 0x01) == 0x01));
            update_error_checkbox(ShelfOverDischargedCB, ((shelf_one.Alarms_errors & 0x02) == 0x02));
            update_error_checkbox(ShelfOverTempCB, ((shelf_one.Alarms_errors & 0x04) == 0x04));
            update_error_checkbox(ShelfErrorCB, ((shelf_one.Alarms_errors & 0x08) == 0x08));
        }

        private void update_error_checkbox(CheckBox check_box, bool status)
        {
            if (check_box.InvokeRequired)
            {
                check_box.Invoke(new MethodInvoker(delegate
                {
                    check_box.Checked = status;
                }));
            }
            else
            {
                check_box.Checked = status;
            }
        }

        private void determine_mod_errors()
        {
            set_textbox_text(ModErrorField, "0x" + current_mod.Error_code.ToString("X2"));
            update_error_checkbox(ModOverChargedCB, ((current_mod.Alarms_errors & 0x01) == 0x01));
            update_error_checkbox(ModOverDischargedCB, ((current_mod.Alarms_errors & 0x02) == 0x02));
            update_error_checkbox(ModOverTempCB, ((current_mod.Alarms_errors & 0x04) == 0x04));
            update_error_checkbox(ModErrorCB, ((current_mod.Alarms_errors & 0x08) == 0x08));
        }

        private void refresh_conv_voltages()
        {
            string num_format = "F1";
            string message;
            string warning = "Beyond Limits!";
            // Set Point Voltage
            if (pcka_conv.Volt_bus_set > pcka_conv.Lower_volt_limit && pcka_conv.Volt_bus_set < pcka_conv.Upper_volt_limit)
            {
                message = pcka_conv.Volt_bus_set.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(SetPointVoltageField, message);

            // DC Bus Voltage
            if (pcka_conv.Volt_bus_act > pcka_conv.Lower_volt_limit && pcka_conv.Volt_bus_act < pcka_conv.Upper_volt_limit)
            {
                message = pcka_conv.Volt_bus_act.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(DCBusVoltageField, message);

            // ESD Bus Voltage
            if (pcka_conv.Volt_esd_act > pcka_conv.Lower_volt_limit && pcka_conv.Volt_esd_act < pcka_conv.Upper_volt_limit)
            {
                message = pcka_conv.Volt_esd_act.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(ESDBusVoltageField, message);
        }

        private void refresh_conv_currents()
        {
            string num_format = "F1";
            string message;
            string warning = "Beyond Limits!";
            // Source Current
            if (pcka_conv.Curr_src_act > pcka_conv.Lower_curr_limit && pcka_conv.Curr_src_act < pcka_conv.Upper_curr_limit)
            {
                message = pcka_conv.Curr_src_act.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(SourceCurrentField, message);

            // Load Current
            if (pcka_conv.Curr_load_act > pcka_conv.Lower_curr_limit && pcka_conv.Curr_load_act < pcka_conv.Upper_curr_limit)
            {
                message = pcka_conv.Curr_load_act.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(LoadCurrentField, message);

            // Converter DC Curr
            if (pcka_conv.Curr_bus_act > pcka_conv.Lower_curr_limit && pcka_conv.Curr_bus_act < pcka_conv.Upper_curr_limit)
            {
                message = pcka_conv.Curr_bus_act.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(ConvDCCurrentField, message);

            // ESD Current
            if (pcka_conv.Curr_esd_act > pcka_conv.Lower_curr_limit && pcka_conv.Curr_esd_act < pcka_conv.Upper_curr_limit)
            {
                message = pcka_conv.Curr_esd_act.ToString(num_format);
            }
            else
            {
                message = warning;
            }
            set_textbox_text(ESDCurrentField, message);
        }

        private void refresh_conv_temps()
        {
            string num_format = "F1";
            string message;
            string warning = "Beyond Limits!";
            TextBox[] temp_fields = { TempField1, TempField2, TempField3, TempField4, TempField5, TempField6, TempField7, TempField8 };
            for(int i = 0; i < temp_fields.Length; i++)
            {
                // Converter Temp Field (i)
                if (pcka_conv.Temps[i] > pcka_conv.Lower_temp_limit && pcka_conv.Temps[i] < pcka_conv.Upper_temp_limit)
                {
                    message = pcka_conv.Temps[i].ToString(num_format);
                }
                else
                {
                    message = warning;
                }
                set_textbox_text(temp_fields[i], message);
            }
            
        }

        private void refresh_thread(Object source, ElapsedEventArgs e)
        {
            try
            {
                refresh_gui();
                // Might need the below for updating the GUI
                //Thread th = new Thread(new ThreadStart(this.refresh_gui));
                //th.Start();
            }
            catch(Exception)
            {

            }
        }

        private void refresh_gui()
        {
            refresh_shelf_box();
            refresh_mod_box();
            refresh_conv_voltages();
            refresh_conv_currents();
            refresh_conv_temps();
            if (is_connected)
                reset_connection_timer();

            // Try to add time to series
            //DateTime time = DateTime.Now;
            //shelf_one.enqueue_data(time);
            //current_mod.enqueue_data(time);
        }

        private bool show_comms_setup_form(string message)
        {
            if (message != null && message != "")
                MessageBox.Show(message);

            return show_comms_setup_form();
        }

        private void ModRadioButtons_CheckedChanged(object sender, EventArgs e)
        {
            // Return if it's not a checked RB
            // Prevents event from firing 2x, once when
            // the old RB dechecks, then when new RB checks
            RadioButton radio_button = (RadioButton)sender;
            if (!radio_button.Checked)
                return;

            // Get rid of "ModRB" from name to get number of module
            int mod_num = int.Parse(radio_button.Name.Substring(5));

            if (radio_button.Focused)
            {
                save_current_mod(mod_num);
                reset_mod_box();
            }
            set_current_mod((byte)mod_num);
        }

        private bool set_current_mod(byte mod_num)
        {
            try
            {
                current_mod.Id = mod_num;
                current_mod.clear_queues();
                set_current_mod_taskmenu(mod_num);
                byte[] cmd = new byte[3];
                cmd[0] = 0;
                cmd[1] = CmdCodes.SetCurrMod;
                cmd[2] = mod_num;
                sendCmd(cmd);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        private void set_current_mod_taskmenu(byte mod)
        {
            string[] words = currentModuleToolStripMenuItem.Text.Split(' ');
            string mod_str = String.Format("({0})", mod);
            currentModuleToolStripMenuItem.Text = String.Join(" ", words[0], words[1], mod_str);
        }

        private void save_current_mod(int mod_num)
        {
            Properties.Settings.Default.saved_mod = mod_num;
            Properties.Settings.Default.Save();
        }

        private void ModeRadioButtons_CheckedChanged(object sender, EventArgs e)
        {
            // Return if it's not a checked RB
            // Prevents event from firing 2x, once when
            // the old RB dechecks, then when new RB checks
            RadioButton radio_button = (RadioButton)sender;
            if (!radio_button.Checked) // Return if it's not a checked RB
                return;

            if (OffModeRB.Checked)
                set_conv_mode(CmdCodes.ModeOff);

            if (IdleModeRB.Checked)
                set_conv_mode(CmdCodes.ModeIdle);

            if (VoltageModeRB.Checked)
                set_conv_mode(CmdCodes.ModeIdle);

            if (PowerModeRB.Checked)
                set_conv_mode(CmdCodes.ModePower);
        }

        private bool set_conv_mode(byte mode)
        {
            try
            {
                byte[] cmd = new byte[3];
                cmd[0] = 0;
                cmd[1] = CmdCodes.SetCMDMode;
                cmd[2] = mode;
                sendCmd(cmd);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        private void ShelfErrorField_DoubleClick(object sender, EventArgs e)
        {
            if(shelf_one.Error_message != "" && shelf_one.Error_message != null)
                MessageBox.Show(shelf_one.Error_message, "Shelf Error Message");
        }

        private void ModErrorField_DoubleClick(object sender, EventArgs e)
        {
            if(current_mod.Error_message != "" && current_mod.Error_message != null)
                MessageBox.Show(current_mod.Error_message);
        }

        private void print_to_status(string message)
        {
            set_textbox_text(StatusField, message);
        }

        private void ClearStatusButton_Click(object sender, EventArgs e)
        {
            print_to_status("");
        }

        private void ExitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void StartButton_Click(object sender, EventArgs e)
        {
            var rand = new Random();
            for(int i = 0; i < 650; i++)
            {
                shelf_one.Volt_tot = rand.Next(50, 55);
                shelf_one.Temp_avg = rand.Next(99, 101);
                shelf_one.Temp_min = rand.Next(33, 35);
                shelf_one.Temp_max = rand.Next(45, 50);

                current_mod.Voltage = rand.Next(60, 75);
                current_mod.Temp = rand.Next(80, 95);

                shelf_one.dequeue_old_data();
                shelf_one.enqueue_data();

                current_mod.dequeue_old_data();
                current_mod.enqueue_data();
            }

            data_form = new GraphForm("Shelf", shelf_one.data_for_graph(), shelf_one.names_for_graph());
            data_form.Show();

            data_form = new GraphForm("Module " + current_mod.Id.ToString(), current_mod.data_for_graph(), current_mod.names_for_graph());
            data_form.Show();

        }

        private void StopButton_Click(object sender, EventArgs e)
        {
            shelf_one.clear_queues();
            current_mod.clear_queues();
            print_to_status("Queues cleared");
        }

        private void ShelfPlotButton_Click(object sender, EventArgs e)
        {
            DateTime[] shelf_times = shelf_one.Times.ToArray();
            data_form = new GraphForm("Shelf", shelf_times, shelf_one.data_for_graph(), shelf_one.names_for_graph());
            data_form.Show();
            /*
             * data_form = new GraphForm("Shelf", shelf_one.data_for_graph(), shelf_one.names_for_graph());
            data_form.Show();
            */
        }

        private void ModPlotButton_Click(object sender, EventArgs e)
        {
            DateTime[] mod_times = current_mod.Times.ToArray();
            string title = String.Format("Module {0}", current_mod.Id);
            data_form = new GraphForm(title, mod_times, current_mod.data_for_graph(), current_mod.names_for_graph());
            data_form.Show();
            /*
            string title = String.Format("Module {0}", current_mod.Id);
            data_form = new GraphForm(title, current_mod.data_for_graph(), current_mod.names_for_graph());
            data_form.Show();
            */
        }

        public void add_to_system_log(string message)
        {
            if (system_messages == null || message == "")
                return;

            if (system_messages.Count > 1000)
                system_messages.Dequeue();
            
            system_messages.Enqueue(String.Format("{0,-9:HH:mm:ss}{1}", DateTime.Now, message));
            print_gui_message("new system message");
        }

        public void add_to_user_log(string message)
        {
            if (message == null || message == "")
                return;

            if (user_messages.Count > 1000)
                user_messages.Dequeue();

            user_messages.Enqueue(String.Format("{0,-9:HH:mm:ss}{1}", DateTime.Now, message));
            print_gui_message("new user log entry");
        }

        private void print_gui_message(string message)
        {
            set_textbox_text(GUIMessage, message);
            reset_log_timer();
        }

        private void reset_gui_message(Object source, ElapsedEventArgs e)
        {
            set_textbox_text(GUIMessage, "");
        }

        private void reset_log_timer()
        {
            log_timer.Stop();
            log_timer.Start();
            log_timer.AutoReset = false;
        }

        private void ViewUsersLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
            log_form = new LogForm("User's", user_messages.ToArray());
            log_form.Show();
        }

        private void ClearUsersLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
            user_messages.Clear();
        }

        private void UserLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
            log_form = new LogForm("User's", user_messages.ToArray());
            log_form.Show();
        }

        private void GUIMessage_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                add_to_user_log(get_textbox_text(GUIMessage));
        }

        private void EStopButton_Click(object sender, EventArgs e)
        {
            var rand = new Random();
            print_gui_message("auto-generating plots...");
            Thread.Sleep(50);
            float start_volt = 295.0F;
            float start_temp = 65.0F;
            float volt = start_volt;
            float temp = start_temp;
            for (int i = 0; i < 601; i++)
            {
                shelf_one.Volt_tot = volt + rand.Next(-100,100)/1000.0F;

                float temp_1 = temp + rand.Next(-100, 100) / 100.0F;
                float temp_2 = temp + rand.Next(-100, 100) / 100.0F;
                float temp_3 = temp + rand.Next(-100, 100) / 100.0F;
                float avg_temp, max_temp, min_temp;

                avg_temp = (temp_1 + temp_2 + temp_3) / 3.0F;
                min_temp = temp_1 < temp_2 ? temp_1 : temp_2;
                min_temp = min_temp < temp_3 ? min_temp : temp_3;
                max_temp = temp_1 > temp_2 ? temp_1 : temp_2;
                max_temp = max_temp > temp_3 ? max_temp : temp_3;


                shelf_one.Temp_avg = avg_temp;
                shelf_one.Temp_min = min_temp;
                shelf_one.Temp_max = max_temp;

                current_mod.Voltage = (volt/9.0F) + rand.Next(-100, 100) / 1000.0F;
                current_mod.Temp = temp + rand.Next(-100, 100) / 100.0F;

                // Try to add time to series
                DateTime time = DateTime.Now;
                shelf_one.enqueue_data(time);
                current_mod.enqueue_data(time);
                Thread.Sleep(50);

                volt = start_volt * (float)(Math.Exp(-0.001 * i));
                temp = start_temp + i * 0.075F + (i*i) * 0.00001F;
            }

            DateTime[] shelf_times = shelf_one.Times.ToArray();
            DateTime[] mod_times = current_mod.Times.ToArray();

            data_form = new GraphForm("Shelf", shelf_times, shelf_one.data_for_graph(), shelf_one.names_for_graph());
            data_form.Show();

            string title = String.Format("Module {0}", current_mod.Id);
            data_form = new GraphForm(title, mod_times, current_mod.data_for_graph(), current_mod.names_for_graph());
            data_form.Show();
        }

        private void fetch_data(Object source, ElapsedEventArgs e)
        {
            byte[] cmds = {
                CmdCodes.GetShelfData,
                CmdCodes.GetModData,
                CmdCodes.ConvVoltData,
                CmdCodes.ConvCurrData,
                CmdCodes.ConvTempData,
                CmdCodes.ConvStat
            };

            byte cmd = cmds[data_type];
            data_type = (data_type + 1) % cmds.Length;

            try
            {
                send_fetch_command(cmd);

                if (data_type == 0)
                    refresh_gui();
            }
            catch(Exception exc)
            {
                add_to_system_log(exc.Message);
            }
            
        }

        private void send_fetch_command(byte cmd)
        {
            try
            {
                byte[] message = new byte[2];
                message[0] = 0;
                message[1] = cmd;
                sendCmd(message);
            }
            catch (Exception)
            {
            }
        }

        private void start_data_fetch()
        {
            print_gui_message("Connected!");

            // Clear the data queues
            shelf_one.clear_queues();
            current_mod.clear_queues();
            fetch_timer.Start();
        }

        private void SystemLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
            log_form = new LogForm("System", system_messages.ToArray());
            log_form.Show();
        }

        private void ViewSystemLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
            log_form = new LogForm("System", system_messages.ToArray());
            log_form.Show();
        }

        private void ClearSystemLogToolStripMenuItem_Click(object sender, EventArgs e)
        {
            system_messages.Clear();
        }

        private void ShelfToolStripMenuItem_Click(object sender, EventArgs e)
        {
            data_form = new GraphForm("Shelf", shelf_one.data_for_graph(), shelf_one.names_for_graph());
            data_form.Show();
        }

        private void CurrentModuleToolStripMenuItem_Click(object sender, EventArgs e)
        {
            string title = String.Format("Module {0}", current_mod.Id);
            data_form = new GraphForm(title, current_mod.data_for_graph(), current_mod.names_for_graph());
            data_form.Show();
        }

        private void ShelfErrorMessageToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (shelf_one.Error_message != "" && shelf_one.Error_message != null)
                MessageBox.Show(shelf_one.Error_message, "Shelf Error Message");
            else
                MessageBox.Show("No error message for the shelf", "Shelf Error Message");
        }

        private void SetModuleUpdateTime(byte speed)
        {
            //  Command data streaming to stop...
            byte[] cmd = new byte[3];
            cmd[0] = 0;
            cmd[1] = CmdCodes.SetModUpdateTime;
            cmd[2] = speed;
            sendCmd(cmd);
        }

    }
}
