using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using System.Threading.Tasks;

namespace cerdec_gui
{

    public class Shelf
    {
        private float volt_tot;
        private Queue<float> volt_tots = new Queue<float>();

        private float temp_avg;
        private float temp_max;
        private float temp_min;
        private Queue<float> temp_avgs = new Queue<float>();
        private Queue<float> temp_maxs = new Queue<float>();
        private Queue<float> temp_mins = new Queue<float>();
        private Queue<DateTime> times = new Queue<DateTime>();
        private bool is_recording;

        private int temp_max_id;
        private int temp_min_id;

        private int alarms_errors;
        private int error_code;
        private string error_message;

        // ===================
        // === Constructors ==
        // ===================

        public Shelf()
        {
            volt_tot = 0.0F;

            temp_avg = 0.0F;
            temp_max = 0.0F;
            temp_min = 0.0F;

            is_recording = true;

            temp_max_id = 0;
            temp_min_id = 0;

            alarms_errors = 0x00;
            error_code = 0x00;
            error_message = "";
        }

        // ===================
        // = Getters/Setters =
        // ===================

        public float Volt_tot
        {
            get { return volt_tot; }
            set { volt_tot = value; }
        }

        public float Temp_min
        {
            get { return temp_min; }
            set { temp_min = value; }
        }

        public int Temp_min_id
        {
            get { return temp_min_id; }
            set { temp_min_id = value; }
        }

        public float Temp_avg
        {
            get { return temp_avg; }
            set { temp_avg = value; }
        }

        public float Temp_max
        {
            get { return temp_max; }
            set { temp_max = value; }
        }

        public int Temp_max_id
        {
            get { return temp_max_id; }
            set { temp_max_id = value; }
        }

        public int Alarms_errors
        {
            get { return alarms_errors; }
            set { alarms_errors = value; }
        }

        public int Error_code
        {
            get { return error_code; }
            set { error_code = value; }
        }

        public string Error_message
        {
            get { return error_message; }
            set { error_message = value; }
        }

        public Queue<float> Volt_tots
        {
            get { return volt_tots; }
            set { volt_tots = value; }
        }

        public Queue<float> Temp_avgs
        {
            get { return temp_avgs; }
            set { temp_avgs = value; }
        }

        public Queue<float> Temp_maxs
        {
            get { return temp_maxs; }
            set { temp_maxs = value; }
        }

        public Queue<float> Temp_mins
        {
            get { return temp_mins; }
            set { temp_mins = value; }
        }

        public Queue<DateTime> Times { get => times; set => times = value; }
        public bool Is_recording { get => is_recording; set => is_recording = value; }

        // ===================
        // ===== Parsers =====
        // ===================

        public static float parse_voltage(byte[] volt_data)
        {
            float res = 0x00;
            res = ((volt_data[1] << 8) + (volt_data[0])) * 0.02F;
            return res;
        }

        public static float parse_temp(byte temp_data)
        {
            float res = 0x00;
            res = temp_data * 0.5F - 40F;
            return res;
        }

        public string determine_error_message()
        {
            if(error_code == 0x00)
                return "";

            string message = "";

            if(error_code > 0xF0)
            {
                switch (error_code)
                {
                    case 0xF1:
                    case 0xF2:
                        message = "Master Controller: ROM Error";
                        break;

                    case 0xF5:
                    case 0xF6:
                    case 0xF7:
                    case 0xF8:
                    case 0xF9:
                        message = "Master Controller: Communication error to any module";
                        break;
                    default:
                        break;
                }
            }
            else
            {
                int mod_id = ((error_code & 0xF0) >> 4);
                mod_id++;
                switch (error_code & 0x0F)
                {
                    case 0x1:
                    case 0x9:
                        message = "Mod " + mod_id.ToString() + ": Communication error to Master Controller";
                        break;
                    case 0x2:
                        message = "Mod " + mod_id.ToString() + ": Communication error between ICs";
                        break;
                    case 0x3:
                        message = "Mod " + mod_id.ToString() + ": Set up error";
                        break;
                    case 0x4:
                    case 0x5:
                    case 0x6:
                    case 0x7:
                    case 0x8:
                        message = "Mod " + mod_id.ToString() + ": ROM error";
                        break;
                    case 0xA:
                        message = "Mod " + mod_id.ToString() + ": Cell count mismatch between defined and detection";
                        break;
                    case 0xB:
                        message = "Mod " + mod_id.ToString() + ": Irregular voltage detected";
                        break;
                    default:
                        break;
                }
            }

            Error_message = message;
            return message;
        }

        // ===================
        // === Class Funcs ===
        // ===================

        public void dequeue_old_data()
        {
            int thirty_seconds_data = 30 * 1000 / 50;
            if (Volt_tots.Count > thirty_seconds_data)
                Volt_tots.Dequeue();

            if (Temp_avgs.Count > thirty_seconds_data)
                Temp_avgs.Dequeue();

            if (Temp_maxs.Count > thirty_seconds_data)
                Temp_maxs.Dequeue();

            if (Temp_mins.Count > thirty_seconds_data)
                Temp_mins.Dequeue();

            if (Times.Count > thirty_seconds_data)
                Times.Dequeue();

        }

        public void enqueue_data()
        {
            if (!is_recording)
                return;

            dequeue_old_data();
            Volt_tots.Enqueue(Volt_tot);
            Temp_avgs.Enqueue(Temp_avg);
            Temp_maxs.Enqueue(Temp_max);
            Temp_mins.Enqueue(Temp_min);
        }

        public void enqueue_data(DateTime time)
        {
            if (!is_recording)
                return;

            dequeue_old_data();
            Volt_tots.Enqueue(Volt_tot);
            Temp_avgs.Enqueue(Temp_avg);
            Temp_maxs.Enqueue(Temp_max);
            Temp_mins.Enqueue(Temp_min);
            Times.Enqueue(time);
        }

        public void clear_queues()
        {
            Volt_tots.Clear();
            Temp_avgs.Clear();
            Temp_maxs.Clear();
            Temp_mins.Clear();
            Times.Clear();
        }

        public List<Queue<float>> data_for_graph()
        {
            List<Queue<float>> gift = new List<Queue<float>>
            {
                Volt_tots,
                Temp_avgs,
                Temp_maxs,
                Temp_mins
            };

            return gift;
        }

        public List<string> names_for_graph()
        {
            List<string> names = new List<string>
            {
                "Voltage (V)",
                "Avg. Temp (°F)",
                "Max Temp (°F)",
                "Min Temp (°F)"
            };

            return names;
        }

    }
}
