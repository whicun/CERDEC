using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cerdec_gui
{
    public partial class LogForm : Form
    {
        public LogForm(string type, string[] messages)
        {
            InitializeComponent();
            Text = type + " Log";
            string max_ind_width = (messages.Length.ToString().Length + 1).ToString();
            string message_format = "{0,-" + max_ind_width + "}{1}";
            for (int i = 0; i < messages.Length; i++)
            {
                messages[i] = String.Format(message_format, i, messages[i]);
            }
            LogField.Lines = messages;
        }
    }
}
