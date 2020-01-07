using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cerdec_gui
{

    public partial class MainForm : Form
    {
        // Background worker for R/T data 
        private BackgroundWorker RTBackgroundWorker;

        // UDP XPort discovery socket
        private Socket usb_sock = null;

        // Form objects
        private Shelf shelf_one = new Shelf();
        private Module current_mod = new Module();

        // Variables for connection
        private int connection_status;

        // Variables for handling incoming/outgoing data
        private byte data_index;

        public MainForm()
        {
            InitializeComponent();
            byte[] datas = {0x08, 0x07};
            float res;
            res = shelf_one.parse_voltage(datas);
            res = shelf_one.parse_temp(0x80);
            res = res;
        }
        /*
        private void processRecData(byte[] buff, int offset, int length, int bytes_in_buff, int buff_cap)
        {

            try
            {

                if(length < 2)
                    return;

                //  Let's process the various types of messages...
                switch (buff[offset + 1])  // switch on the type of message
                {
                    case CmdCodes.DataPacket: // data stream

                        if (length < 23)
                        {
                            //
                            //  Cannot be less than 23 bytes...which includes
                            //
                            //  1 byte address
                            //  1 byte command
                            //  1 byte number indicating number of datasets
                            //  2 byte number indicating the decimation factor from native sample rate of 5ksps (to be changed to 3ksps)
                            //  1 byte BM which channels are assigned to load, position, and velocity. specification document.
                            //  1 byte packet index
                            //  4 bytes - 1 Float value for Channel 1
                            //  4 bytes - 1 Float value for Channel 2
                            //  4 bytes - 1 float value for channel 3
                            //  4 bytes - 1 float value for Channel 4
                            //-----------------------------------------------
                            //  23 bytes total...
                            //

                            //
                            //  Additional data channel values can be applied but the hardware only supports 4 channels and the firmware developer has
                            //  decided to construct the message with places for unused data values...
                            //

                            break;
                        }

                        //  If here, message is equal to or greater than 23 bytes...We can
                        //  move on to the next phase of processing...
                        
                        //  Let's see if the packet index is equal to the data index. They need to match
                        //  in order for the hardware and the GUI to be synchronized...
                        if (buff[offset + 6] != data_index)
                        {

                            //
                            //  Attempt to re-synch by setting the expected data index to the packet index....
                            //

                            data_index = buff[offset + 6];
                        }

                        //
                        //  Advance the data index to what is expected to be the next packet index value...
                        //

                        data_index++;

                        //
                        //  Read the number of datasets the hardware 
                        // 

                        int n = buff[offset + 2];

                        float[] tmpfltarray = new float[n * 4];


                        //pbReceiveBufferCapacity.Value = n;

                        //
                        //  Iterate over the dataset...over all datasets.
                        //

                        for (int j = 0; j < n; j++)
                        {
                            //
                            //  Instead of being fixed at four channels, the actual number of enabled channels must be the maximum value.
                            //  The data is placed in the four locations in the numerical order of the channel.
                            //
                            //for (int i = 0; i < CommunicationLibrary.CHS_MAX; i++)

                            //
                            //  Since each dataset can contain more than one sample for an individual channel (packed), then we must employ an outer loop which advances the user through
                            //  the four samples correctly
                            //

                            //m_iDataSetIndexer++;

                            //if (m_iDataSetIndexer >= 100)
                            //{
                            //
                            //  Let's print out the data contents of the dataset so we can see what is happening...
                            //

                            //    for (int k = 0; k < n; k++)
                            //    {
                            //
                            //  four samples per dataset...
                            //

                            //      for (int l = 0; l < CommunicationLibrary.CHS_MAX; l++)
                            //       {

                            //       }


                            //    }
                            //}

                            int iSamplesEachChannelPerDataSet = 0;

                            switch (m_numActiveChannels)
                            {
                                case 1:
                                    iSamplesEachChannelPerDataSet = 1;
                                    break;
                                case 2:
                                    iSamplesEachChannelPerDataSet = 2;
                                    break;
                                case 3:
                                    iSamplesEachChannelPerDataSet = 3;
                                    break;
                                case 4:
                                    iSamplesEachChannelPerDataSet = 4;
                                    break;
                            }

                            //for (int pf = 0; pf < iSamplesEachChannelPerDataSet; pf++)
                            //{

                            for (int i = 0; i < m_numActiveChannels; i++)
                            {
                                try
                                {
                                    //
                                    //  We are not even bothering to apply the bitmask because it is assumed that all
                                    //  channels are to be assigned to load. 
                                    //
                                    //  Here's how this works...
                                    //
                                    //  1. The offset is always zero in this routine because we have an independent single command packet.
                                    //  2. Add the number 7 to point to the first byte of the channel 1 float for the first dataset
                                    //  3. (16 * j) points to the channel 1 float for the dataset of interest. You have to remember operator order of precedence here or get confused.
                                    //  4. (4 * i) points to the channel value (float of interest) in the dataset of interest.
                                    //


                                    //
                                    //  must correctly map the value in the message with the actual channel that is enabled...
                                    //

                                    float tmpfloat = 0;

                                    //
                                    //  Must address how data is being packed into the data stream....
                                    //

                                    //load[i] = BitConverter.ToSingle(buff, offset + 7 + (16 * j) + (4 * i));

                                    //load[i] = BitConverter.ToSingle(buff, offset + 7 + (16 * j) + (pf * 4) + (4 * i));
                                    load[i] = BitConverter.ToSingle(buff, offset + 7 + (((j * iSamplesEachChannelPerDataSet) + i) * 4));



                                    //
                                    //  Convert what is assumed to be lbs coming from the unit to the desired display unit. We should be able to handle %
                                    //

                                    tmpfloat = load[i] * (float)ESLDataAcquisitionStaticClassesAndEnumerations.ChannelConversionFactors[m_mainpanelCtrlGroups[i]];
                                    load[i] = tmpfloat;

                                    //
                                    //  update the maximum and minimum values 
                                    //

                                    if (max[i] < load[i])
                                    {
                                        max[i] = load[i];
                                    }
                                    if (min[i] > load[i])
                                    {
                                        min[i] = load[i];
                                    }


                                }
                                catch (Exception) { }
                            } // end for iteration across channel float value...
                            //}

                            //
                            //  In this function we run the auto-test and pass fail criteria...
                            //



                            // IF WE ARE IN STREAM MODE ONLY!
                            if (slideOpMode.Value == 2)
                            {
                                //
                                //  Process Break Enable message
                                //

                                ProcessBreakEnable(DateTime.Now);

                                //
                                //  Process Time Parameters...
                                //

                                ProcessTimeParameters(DateTime.Now);

                                //
                                //  Process pass/fail and auto-start parameters...
                                //

                                ProcessParameters();

                                bool bAnyChannelTesting = false;

                                for (int i = 0; i < m_numActiveChannels; i++)
                                {
                                    int iChannelIndex = m_mainpanelCtrlGroups[i];


                                    if (m_lstChannelTestInformation[iChannelIndex].m_bCollectData)
                                    {
                                        //
                                        //  if any of the channels are running a test (collecting data)
                                        //  then we must turn on the test led...
                                        //

                                        bAnyChannelTesting = true;
                                        double tmpD = 0;


                                        switch (iChannelIndex)
                                        {
                                            case 0:
                                                // If autostopping/starting is enabled and the AutoStart is enabled
                                                if (isAutoStopping && isThresholdAutoStart)
                                                {
                                                    // Check for the load to equal the autoStartThreshold
                                                    if (!autoStartFlag && load[i] >= autoStartThreshold)
                                                    {
                                                        autoStartFlag = true;
                                                    }

                                                    // If we've reached the start threshold
                                                    if (autoStartFlag)
                                                    {
                                                        Ch1DataBuffer.Add(load[i]);
                                                        m_lstChannelTestInformation[iChannelIndex].m_lNumberOfStoredSamples++;
                                                        tmpD = (double)(Ch1DataBuffer.Count * m_numActiveChannels) / (double)m_clMaxSamples * 100;
                                                    }
                                                    else
                                                    {
                                                        break;
                                                    }
                                                }
                                                else
                                                {
                                                    Ch1DataBuffer.Add(load[i]);
                                                    m_lstChannelTestInformation[iChannelIndex].m_lNumberOfStoredSamples++;
                                                    tmpD = (double)(Ch1DataBuffer.Count * m_numActiveChannels) / (double)m_clMaxSamples * 100;
                                                }

                                                // Enabling Auto Stop
                                                if (isAutoStopping)
                                                {
                                                    if (isThresholdAutoStop)
                                                    {
                                                        if (!firstAutoStopFlag && (load[i] > autoStopThreshold))
                                                        {
                                                            //if(load[i] > 20)
                                                            //{
                                                            //    load[i] = load[i];
                                                            //}
                                                            firstAutoStopFlag = true;
                                                            for (int k = Ch1DataBuffer.Count - 5; k < Ch1DataBuffer.Count; k++)
                                                            {
                                                                float currentVal = (Ch1DataBuffer[k] / (float)ESLDataAcquisitionStaticClassesAndEnumerations.ChannelConversionFactors[0]);
                                                                if (currentVal < autoStopThreshold)
                                                                {
                                                                    firstAutoStopFlag = false;
                                                                    k = Ch1DataBuffer.Count;
                                                                }
                                                            }
                                                        }
                                                        if (firstAutoStopFlag && (load[i] < autoStartThreshold))
                                                        {
                                                            secondAutoStopFlag = true;
                                                            for (int k = Ch1DataBuffer.Count - 5; k < Ch1DataBuffer.Count; k++)
                                                            {
                                                                float currentVal = (Ch1DataBuffer[k] / (float)ESLDataAcquisitionStaticClassesAndEnumerations.ChannelConversionFactors[0]);
                                                                if (currentVal > autoStartThreshold)
                                                                {
                                                                    secondAutoStopFlag = false;
                                                                }
                                                            }
                                                            if (secondAutoStopFlag)
                                                            {
                                                                StopTest((int)ChannelIndexEnumeration.CH_1);

                                                                bool allStopped = true;
                                                                for (int k = 0; k < CommunicationLibrary.CHS_MAX; k++)
                                                                {
                                                                    // if the channel is enabled, see if the test is running
                                                                    if (ESLDataAcquisitionStaticClassesAndEnumerations.ChannelEnable[k])
                                                                        allStopped &= m_lstChannelTestInformation[k].m_bTestStopped;
                                                                }
                                                                calcTestResults();
                                                                autoStopWatch.Stop();
                                                            }
                                                        }
                                                    }
                                                    if (isTimeAutoStop)
                                                    {
                                                        if (autoStopWatch.ElapsedMilliseconds > autoStopTime)
                                                        {
                                                            StopTest((int)ChannelIndexEnumeration.CH_1);

                                                            bool allStopped = true;
                                                            for (int k = 0; k < CommunicationLibrary.CHS_MAX; k++)
                                                            {
                                                                // if the channel is enabled, see if the test is running
                                                                if (ESLDataAcquisitionStaticClassesAndEnumerations.ChannelEnable[k])
                                                                    allStopped &= m_lstChannelTestInformation[k].m_bTestStopped;
                                                            }
                                                            calcTestResults();
                                                            autoStopWatch.Stop();
                                                        }
                                                    }
                                                }

                                                // Erik
                                                if (m_lstMainPanelControls[iChannelIndex].m_pbStatus.InvokeRequired)
                                                {
                                                    m_lstMainPanelControls[iChannelIndex].m_pbStatus.Invoke(new MethodInvoker(delegate
                                                    {
                                                        m_lstMainPanelControls[iChannelIndex].m_pbStatus.Value = (int)tmpD;
                                                    }));
                                                }
                                                else
                                                {
                                                    m_lstMainPanelControls[iChannelIndex].m_pbStatus.Value = (int)tmpD;
                                                }

                                                // Erik
                                                m_lstMainPanelControls[iChannelIndex].m_pbStatus.Value = (int)tmpD;
                                                break;
                                            case 1:
                                                Ch2DataBuffer.Add(load[i]);
                                                m_lstChannelTestInformation[iChannelIndex].m_lNumberOfStoredSamples++;
                                                tmpD = (double)(Ch2DataBuffer.Count * m_numActiveChannels) / (double)m_clMaxSamples * 100;
                                                // Erik
                                                //m_lstMainPanelControls[iChannelIndex].m_pbStatus.Value = (int)tmpD;
                                                break;
                                            case 2:
                                                Ch3DataBuffer.Add(load[i]);
                                                m_lstChannelTestInformation[iChannelIndex].m_lNumberOfStoredSamples++;
                                                tmpD = (double)(Ch3DataBuffer.Count * m_numActiveChannels) / (double)m_clMaxSamples * 100;
                                                // Erik
                                                //m_lstMainPanelControls[iChannelIndex].m_pbStatus.Value = (int)tmpD;
                                                break;
                                            case 3:
                                                Ch4DataBuffer.Add(load[i]);
                                                m_lstChannelTestInformation[iChannelIndex].m_lNumberOfStoredSamples++;
                                                tmpD = (double)(Ch4DataBuffer.Count * m_numActiveChannels) / (double)m_clMaxSamples * 100;
                                                // Erik
                                                //m_lstMainPanelControls[iChannelIndex].m_pbStatus.Value = (int)tmpD;
                                                break;
                                        }
                                    }

                                    ledTest.Value = bAnyChannelTesting;

                                    if (m_lstChannelTestInformation[iChannelIndex].m_lNumberOfStoredSamples >= (long)(double)m_clMaxSamples / (double)m_numActiveChannels)
                                    {
                                        //
                                        //  We have exceeded the maximum allowed number of samples for this channel and must
                                        //  terminate the test...Peform a manual test stop by clicking the button.
                                        //

                                        //
                                        //  Test Stopped due to too much data collected...We want to make sure this stop only occurs once under this condition...
                                        //  We don't have to worry about making sure the test start flag is set to true too.
                                        //

                                        if (!m_lstChannelTestInformation[i].m_bTestStopped)
                                        {
                                            StopTest(iChannelIndex);
                                        }


                                    }
                                }

                            }

                            //}  // end samples each per dataset...


                        } // end for iteration over all datasets...

                        //
                        //  number of datasets multiplied by the number of active channels equals the number of samples. 
                        //

                        m_iNumberOfSamples += (n * m_numActiveChannels);

                        m_dtStreamCurrentTime = DateTime.Now;

                        TimeSpan diff = m_dtStreamCurrentTime.Subtract(m_dtStreamStartTime);

                        double SecondsThisInterval = diff.TotalSeconds;

                        if (SecondsThisInterval > 1)
                        {
                            int sps = (int)((double)m_iNumberOfSamples / SecondsThisInterval);
                            //String strMsg = m_lstChannelTestInformation[0].m_lNumberOfStoredSamples.ToString() + "||" + m_lstChannelTestInformation[1].m_lNumberOfStoredSamples.ToString();
                            //String strMsg = Ch1DataBuffer.Count.ToString() + "||" + Ch2DataBuffer.Count.ToString();
                            //toolStripSamplesPerSecondStatus.Text = "Samples Per Second: " + sps.ToString();   // DON'T PRINT!
                            //toolStripSamplesPerSecondStatus.Text = strMsg;
                            m_dtStreamStartTime = DateTime.Now;
                            m_iNumberOfSamples = 0;
                        }



                        //
                        //  Determine if min and max controls need to be reset...
                        //

                        //for (int i = 0; i < CommunicationLibrary.CHS_MAX; i++)
                        for (int i = 0; i < m_numActiveChannels; i++)
                        {

                            if (rstmin[i])
                            {
                                rstmin[i] = false;
                                min[i] = load[i];

                            }

                            if (rstmax[i])
                            {
                                rstmax[i] = false;
                                max[i] = load[i];

                            }

                        }


                        //
                        //  Determine course of action when operational mode slide control is 
                        //

                        if (this.Visible && slideOpMode.Value == 2)
                        {
                            //
                            //  Turn on the data streaming LED
                            //

                            // Erik
                            //ledStream.Value = true;

                            //
                            //  Update this label to include the number of float values in the big buffer...
                            //  This number should only increase during a test
                            //

                            //toolStripTestDataStorageStatus.Text = bigBuffer.Count.ToString(); // DON'T PRINT

                            //
                            // Update the packet index
                            //
                            //toolStripLabelPacketIndexStatus.Text = "Packet Index: " + buff[offset + 6].ToString("X02");   // DON'T PRINT

                            //
                            //  Update the values in the display controls...
                            //

                            for (int i = 0; i < m_numActiveChannels; i++)
                            {
                                //
                                //  let's make the correct loop.
                                //

                                //
                                //  We must provide a conversion factor which converts the output unit reported by the sensor on this channel
                                //  to the current display.
                                //

                                if (m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neTrackIndicator.InvokeRequired)
                                {
                                    m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neTrackIndicator.Invoke(new MethodInvoker(delegate
                                    {
                                        m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neTrackIndicator.Value = load[i];
                                    }));
                                }
                                else
                                {
                                    m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neTrackIndicator.Value = load[i];
                                }

                                if (m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMaxIndicator.InvokeRequired)
                                {
                                    m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMaxIndicator.Invoke(new MethodInvoker(delegate
                                    {
                                        m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMaxIndicator.Value = max[i];
                                    }));
                                }
                                else
                                {
                                    m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMaxIndicator.Value = max[i];
                                }

                                if (m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMinIndicator.InvokeRequired)
                                {
                                    m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMinIndicator.Invoke(new MethodInvoker(delegate
                                    {
                                        m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMinIndicator.Value = min[i];
                                    }));
                                }
                                else
                                {
                                    m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMinIndicator.Value = min[i];
                                }

                                // Erik
                                //m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neTrackIndicator.Value = load[i];
                                //m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMaxIndicator.Value = max[i];
                                //m_lstMainPanelControls[m_mainpanelCtrlGroups[i]].m_neMinIndicator.Value = min[i];

                            }

                            //
                            //  turn the stream LED off here to get the "blinking" effect you see on the GUI...
                            //
                            // Erik
                            //ledStream.Value = false;
                        }




                        break;

                    case CmdCodes.GetUnitInfo:

                        if (length < 13)
                        {
                            break;
                        }
                        if (unitInfo == null)
                        {
                            unitInfo = new UnitInfo(buff, offset, length);
                        }
                        else
                        {
                            //
                            //  Let's display the parameters..
                            //


                            unitInfo.update(buff, offset, length);
                        }
                        if (fm2 != null && fm2.Visible) fm2.add(unitInfo.ToString());
                        break;

                    case CmdCodes.GetInterface:

                        break;

                    case CmdCodes.GetChannel:

                        if (length < 28)
                        {
                            break;
                        }

                        if (buff[offset + 2] < CommunicationLibrary.CHS_MAX)
                        {
                            if (channels[buff[offset + 2]] == null)
                            {
                                channels[buff[offset + 2]] = new Channel(buff, offset, length);
                            }
                            else
                            {
                                channels[buff[offset + 2]].update(buff, offset, length);
                            }

                            if (bcal != null && bcal.Visible)
                            {
                                bcal.newChannel(channels[buff[offset + 2]]);
                            }
                            if (fm2 != null && fm2.Visible) fm2.add(channels[buff[offset + 2]].ToString());
                        }
                        break;

                    case CmdCodes.GetSensor:

                        if (length < 28)
                        {
                            break;
                        }
                        if (buff[offset + 2] < CommunicationLibrary.SEN_MAX)
                        {
                            if (sensors[buff[offset + 2]] == null)
                            {
                                sensors[buff[offset + 2]] = new Sensor(buff, offset, length);
                            }
                            else
                            {
                                sensors[buff[offset + 2]].update(buff, offset, length);
                            }
                            if (scal != null && scal.Visible)
                            {
                                scal.newSensor(sensors[buff[offset + 2]]);
                            }
                            if (fm2 != null && fm2.Visible) fm2.add(sensors[buff[offset + 2]].ToString());
                        }
                        break;

                    case CmdCodes.GetQEPChannels:

                        if (length < 12)
                        {
                            break;
                        }
                        if (qep == null)
                        {
                            qep = new QEPChannels(buff, offset, length);
                        }
                        else
                        {
                            qep.update(buff, offset, length);
                        }
                        if (fm2 != null && fm2.Visible) fm2.add(qep.ToString());
                        break;

                    case CmdCodes.GetCurSensor:

                        if (length < 6)
                        {
                            break;
                        }
                        for (int i = 0; i < CommunicationLibrary.CHS_MAX; i++)
                        {
                            if (channels[i] != null && buff[offset + 2 + i] < CommunicationLibrary.SEN_MAX)
                            {
                                channels[i].CurrentSensor = buff[offset + 2 + i];
                                if (fm2 != null && fm2.Visible) fm2.add(channels[i].ToString());
                            }

                        }
                        break;

                    case CmdCodes.GetAFilterSize:

                        if (length < 4)
                        {
                            break;
                        }
                        if (unitInfo != null)
                        {
                            unitInfo.MAFSize = BitConverter.ToUInt16(buff, offset + 2);
                            unitInfo.DiffWin = BitConverter.ToSingle(buff, offset + 4);
                            if (fm2 != null && fm2.Visible) fm2.add(unitInfo.ToString());
                        }
                        break;

                    case CmdCodes.GetAutoId:

                        if (length < 7)
                        {
                            break;
                        }
                        if (unitInfo != null)
                        {
                            unitInfo.AutoID = (buff[offset + 2] != 0);
                            //if (fm2 != null && fm2.Visible) fm2.add("AutoID response\n"); ;
                        }

                        //
                        //  This return message is hardwired to each channel...
                        //

                        for (int i = 0; i < CommunicationLibrary.CHS_MAX; i++)
                        {
                            if (channels[i] != null)
                            {
                                channels[i].AutoId = (buff[offset + 3 + i] != 0);

                                //
                                //   Let's only make a change to this indicator if the channel is enabled...
                                //

                                if (ESLDataAcquisitionStaticClassesAndEnumerations.ChannelEnable[i])
                                {
                                    m_lstMainPanelControls[i].m_ledAutoID.Value = channels[i].AutoId;
                                }

                            }
                        }


                        break;

                    case CmdCodes.GetDisplay:

                        if (length < 14)
                        {
                            break;
                        }
                        if (dispinfo == null)
                        {
                            dispinfo = new DisplayInfo[CommunicationLibrary.VFD_MAX];
                        }
                        for (int i = 0; i < CommunicationLibrary.VFD_MAX; i++)
                        {
                            if (dispinfo[i] == null)
                            {
                                dispinfo[i] = new DisplayInfo(buff, offset + 2 + i * 3, 3, i);
                            }
                            else
                            {
                                dispinfo[i].update(buff, offset + 2 + i * 3, 3, i);

                            }
                            if (fm2 != null && fm2.Visible) fm2.add(dispinfo[i].ToString());
                        }
                        break;

                    case CmdCodes.GetDAC:

                        if (length < 74)
                        {
                            break;
                        }
                        if (dacinfo == null)
                        {
                            dacinfo = new DACInfo[CommunicationLibrary.DAC_MAX];
                        }
                        for (int i = 0; i < CommunicationLibrary.DAC_MAX; i++)
                        {
                            if (dacinfo[i] == null)
                            {
                                dacinfo[i] = new DACInfo(buff, offset + 2 + i * 22, 22, i);
                            }
                            else
                            {
                                dacinfo[i].update(buff, offset + 2 + i * 22, 22, i);
                            }
                            if (fm2 != null && fm2.Visible) fm2.add(dacinfo[i].ToString());
                        }
                        break;

                    case CmdCodes.GetLIMIT:

                        if (length < 46)
                        {
                            break;
                        }

                        if (limitinfo == null)
                        {
                            limitinfo = new LIMITInfo[CommunicationLibrary.LIM_MAX];
                        }
                        for (int i = 0; i < limitinfo.Length; i++)
                        {
                            if (limitinfo[i] == null)
                            {
                                limitinfo[i] = new LIMITInfo(buff, offset + 2 + i * 11, 11, i);
                            }
                            else
                            {
                                limitinfo[i].update(buff, offset + 2 + i * 11, 11, i);
                            }
                            if (fm2 != null && fm2.Visible) fm2.add(limitinfo[i].ToString());
                        }

                        if (slideOpMode.InvokeRequired)
                        {
                            slideOpMode.Invoke(new MethodInvoker(delegate
                            {
                                slideOpMode.Enabled = true;
                            }));
                        }
                        // Erik
                        //slideOpMode.Enabled = true;
                        break;

                    case CmdCodes.GetLIMITStatus:

                        if (length < 6 || limitinfo == null)
                        {
                            break;
                        }
                        for (int i = 0; i < limitinfo.Length; i++)
                        {
                            if (limitinfo[i] != null)
                            {
                                limitinfo[i].BM = buff[offset + 2 + i];
                                if (fm2 != null && fm2.Visible) fm2.add(limitinfo[i].GetStatus());
                            }
                        }



                        //
                        //  let's update the open closed indicators...
                        //
                        //  NO LIMIT/RELAYS!
                        /*
                        for (int i = 0; i < CommunicationLibrary.CHS_MAX; i++ )
                        {

                            if (ESLDataAcquisitionStaticClassesAndEnumerations.ChannelEnable[i] && m_lstChannelTestInformation[i].m_bCollectData)
                            {
                                bool indicator1 = limitinfo[i].Triggered;
                                bool indicator2 = limitinfo[i].NC;
                                String lclStr = "Closed";

                                if ((indicator1 && indicator2) || (!indicator1 && !indicator2))
                                {
                                    lclStr = "Open";
                                }



                                m_lstMainPanelControls[i].m_lblLimitRelayOpenCloseIndicator.Text = lclStr;
                                m_lstMainPanelControls[i].m_ledLIMIT.Value = limitinfo[i].Triggered;
                            }
                       
                        }
                        /
                        break;

                    case CmdCodes.SetBCalParam:
                    case CmdCodes.StartBCRead:

                        if (bcal != null && bcal.Visible)
                        {
                            bcal.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetSensorCalPa:
                    case CmdCodes.StartSCRead:
                    case CmdCodes.StartSCShuntRd:

                        if (scal != null && scal.Visible)
                        {
                            scal.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetDCalParam:
                    case CmdCodes.StartDCRead:

                        if (dcal != null && dcal.Visible)
                        {
                            dcal.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetDisplayLine:

                        if (vfd != null && vfd.Visible)
                        {
                            vfd.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetDACCh:

                        if (dacsetup != null && dacsetup.Visible)
                        {
                            dacsetup.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetLIMITCh:

                        if (limit != null && limit.Visible)
                        {
                            limit.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetCurSensor:

                        if (chsetup != null && chsetup.Visible)
                        {
                            chsetup.setResponse(buff, offset, length);
                        }
                        break;


                    case CmdCodes.SetQEPChannels:

                        if (qepf != null && qepf.Visible)
                        {
                            qepf.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetUnitSN:
                    case CmdCodes.SetUnitName:
                    case CmdCodes.SetAFilterSize:
                    case CmdCodes.SetAutoId:

                        if (prod != null && prod.Visible)
                        {
                            prod.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetSensorName:
                    case CmdCodes.SetSensorOUnit:
                    case CmdCodes.SetSensorBase:

                        if (ssetup != null && ssetup.Visible)
                        {
                            ssetup.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.SetDirectVolt:

                        if (dacvolt != null && dacvolt.Visible)
                        {
                            dacvolt.setResponse(buff, offset, length);
                        }
                        break;

                    case CmdCodes.CmdUnImpl:

                        break;

                    case CmdCodes.CmdInvalid:

                        break;

                    case CmdCodes.CmdExeErr:

                        break;

                    case CmdCodes.SwitchToASCII:

                        ledCom.Value = false;
                        break;

                    default:

                        break;
                }

            }
            catch (Exception exc)
            {

            }
        }
        */
    }
}
