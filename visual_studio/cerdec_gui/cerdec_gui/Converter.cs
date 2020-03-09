using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using System.Threading.Tasks;

namespace cerdec_gui
{

    public class Converter
    {
        private int[] temps = new int[8];
        private long upper_temp_limit = 1000;
        private long lower_temp_limit = -1;

        private long volt_bus_act;
        private long volt_bus_set;
        private long volt_esd_act;
        private long upper_volt_limit = 1000;
        private long lower_volt_limit = -1;

        private long curr_src_act;
        private long curr_load_act;
        private long curr_bus_act;
        private long curr_esd_act;
        private long upper_curr_limit = 10000;
        private long lower_curr_limit = -1;

        private long status;
        private long faults;

        private UInt16 cmd_mode;
        private UInt16 cmd_reset;

        private int msg_cnt_rx;
        private int msg_cnt_tx;

        public int[] Temps { get => temps; set => temps = value; }
        public long Volt_bus_act { get => volt_bus_act; set => volt_bus_act = value; }
        public long Volt_bus_set { get => volt_bus_set; set => volt_bus_set = value; }
        public long Volt_esd_act { get => volt_esd_act; set => volt_esd_act = value; }
        public long Curr_src_act { get => curr_src_act; set => curr_src_act = value; }
        public long Curr_load_act { get => curr_load_act; set => curr_load_act = value; }
        public long Curr_bus_act { get => curr_bus_act; set => curr_bus_act = value; }
        public long Curr_esd_act { get => curr_esd_act; set => curr_esd_act = value; }
        public long Status { get => status; set => status = value; }
        public long Faults { get => faults; set => faults = value; }
        public ushort Cmd_mode { get => cmd_mode; set => cmd_mode = value; }
        public ushort Cmd_reset { get => cmd_reset; set => cmd_reset = value; }
        public int Msg_cnt_rx { get => msg_cnt_rx; set => msg_cnt_rx = value; }
        public int Msg_cnt_tx { get => msg_cnt_tx; set => msg_cnt_tx = value; }
        public long Upper_volt_limit { get => upper_volt_limit; set => upper_volt_limit = value; }
        public long Lower_volt_limit { get => lower_volt_limit; set => lower_volt_limit = value; }
        public long Upper_temp_limit { get => upper_temp_limit; set => upper_temp_limit = value; }
        public long Lower_temp_limit { get => lower_temp_limit; set => lower_temp_limit = value; }
        public long Upper_curr_limit { get => upper_curr_limit; set => upper_curr_limit = value; }
        public long Lower_curr_limit { get => lower_curr_limit; set => lower_curr_limit = value; }
        
    }
}
