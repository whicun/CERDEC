using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Timers;
using System.Threading.Tasks;

namespace cerdec_gui
{
    public class Module
    {
        private int id;
        private float voltage;
        private float temp;
        private byte alarms_errors;
        private byte error_code;
        private string error_message;
        private int mismatch_count;
        private Queue<float> volts = new Queue<float>();
        private Queue<float> temps = new Queue<float>();
        private Queue<DateTime> times = new Queue<DateTime>();
        private bool is_recording;

        // ===================
        // === Constructors ==
        // ===================

        public Module()
        {
            id = 1;

            voltage = 0.0F;
            temp = 0.0F;

            is_recording = true;

            alarms_errors = 0x00;
            error_code = 0x00;
        }

        // ===================
        // = Getters/Setters =
        // ===================

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public float Voltage
        {
            get { return voltage; }
            set { voltage = value; }
        }

        public float Temp
        {
            get { return temp; }
            set { temp = value; }
        }

        public byte Alarms_errors
        {
            get { return alarms_errors; }
            set { alarms_errors = value; }
        }

        public byte Error_code
        {
            get { return error_code; }
            set { error_code = value; }
        }

        public string Error_message
        {
            get { return error_message; }
            set { error_message = value; }
        }

        public int Mismatch_count
        {
            get { return mismatch_count; }
            set { mismatch_count = value; }
        }

        public Queue<float> Volts
        {
            get { return volts; }
            set { volts = value; }
        }
        public Queue<float> Temps
        {
            get { return temps; }
            set { temps = value; }
        }

        public Queue<DateTime> Times { get => times; set => times = value; }
        public bool Is_recording { get => is_recording; set => is_recording = value; }

        public void dequeue_old_data()
        {
            int thirty_seconds_data = 30 * 1000 / 50;
            if (Volts.Count > thirty_seconds_data)
                Volts.Dequeue();

            if (Temps.Count > thirty_seconds_data)
                Temps.Dequeue();

            if (Times.Count > thirty_seconds_data)
                Times.Dequeue();
        }

        public void enqueue_data()
        {
            if (!is_recording)
                return;

            dequeue_old_data();
            Volts.Enqueue(Voltage);
            Temps.Enqueue(Temp);

        }

        public void enqueue_data(DateTime time)
        {
            if (!is_recording)
                return;

            dequeue_old_data();
            Volts.Enqueue(Voltage);
            Temps.Enqueue(Temp);
            Times.Enqueue(time);
        }

        public void clear_queues()
        {
            Volts.Clear();
            Temps.Clear();
            Times.Clear();
        }

        public List<Queue<float>> data_for_graph()
        {
            List<Queue<float>> gift = new List<Queue<float>>
            {
                Volts,
                Temps
            };

            return gift;
        }

        public List<string> names_for_graph()
        {
            List<string> names = new List<string>
            {
                "Voltage (V)",
                "Temp (°F)"
            };

            return names;
        }
    }
}
