using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

namespace cerdec_gui
{
    public partial class GraphForm : Form
    {
        Point? prev_position = null;
        private readonly ToolTip display_info = new ToolTip();

        public GraphForm(string plot_type, List<Queue<float>> data, List<string> names)
        {
            if (data.Count != names.Count)
            {
                MessageBox.Show("Data length and Series Name lengths don't match...");
                return;
            }

            InitializeComponent();

            this.Text = plot_type + " Info Plot";

            DataChart.Series.Clear();

            float[] data_array;
            for(int i = 0; i < data.Count; i++)
            {
                data_array = data[i].ToArray();
                Series new_series = new Series();
                new_series.Name = names[i];
                new_series.IsXValueIndexed = true;
                new_series.ChartType = SeriesChartType.Line;
                for (int j = 0; j < data_array.Length; j++)
                {
                    new_series.Points.AddXY(j * 0.05F, data_array[j]);
                }
                DataChart.Series.Add(new_series);
            }

            format_chart();
        }

        public GraphForm(string plot_type, DateTime[] times, List<Queue<float>> data, List<string> names)
        {
            if (data.Count != names.Count || times.Length != data[0].Count)
            {
                MessageBox.Show("Data length and Series Name lengths don't match...");
                return;
            }

            InitializeComponent();

            this.Text = plot_type + " Info Plot";

            DataChart.Series.Clear();

            float[] data_array;
            for (int i = 0; i < data.Count; i++)
            {
                data_array = data[i].ToArray();
                Series new_series = new Series();
                new_series.Name = names[i];
                new_series.IsXValueIndexed = true;
                new_series.ChartType = SeriesChartType.Line;
                for (int j = 0; (j < data_array.Length) && (j < times.Length); j++)
                {
                    new_series.Points.AddXY(times[j], data_array[j]);
                }
                DataChart.Series.Add(new_series);
            }

            format_chart();
        }

        private void format_chart()
        {
            DataChart.ChartAreas[0].AxisX.ScaleView.Zoomable = true;
            DataChart.ChartAreas[0].CursorX.AutoScroll = true;
            DataChart.ChartAreas[0].CursorX.IsUserSelectionEnabled = true;
            DataChart.ChartAreas[0].CursorY.AutoScroll = true;
            DataChart.ChartAreas[0].CursorY.IsUserSelectionEnabled = true;
            DataChart.ChartAreas[0].CursorX.IntervalType = DateTimeIntervalType.Auto;
            DataChart.ChartAreas[0].CursorX.Interval = 1;
            DataChart.ChartAreas[0].AxisX.ScrollBar.ButtonStyle = ScrollBarButtonStyles.All;
            DataChart.ChartAreas[0].AxisX.ScrollBar.IsPositionedInside = true;
            DataChart.ChartAreas[0].AxisX.Title = get_title();
            DataChart.ChartAreas[0].AxisX.LabelStyle.Format = "HH:mm:ss";
        }

        private string get_title()
        {
            string title;
            try
            {
                int final_ind = DataChart.Series[0].Points.Count - 1;
                DataPoint point;
                point = DataChart.Series[0].Points[0];
                title = DateTime.FromOADate(point.XValue).ToString("HH:mm:ss");
                point = DataChart.Series[0].Points[final_ind];
                title = title + " - " + DateTime.FromOADate(point.XValue).ToString("HH:mm:ss");
            }
            catch(Exception exc)
            {
                return "";
            }
            
            return title;
        }

        private void DataChart_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            var pos = e.Location;

            if (prev_position.HasValue && pos == prev_position.Value)
                return;

            display_info.RemoveAll();
            prev_position = pos;

            var results = DataChart.HitTest(pos.X, pos.Y, false, ChartElementType.DataPoint);
            foreach (var result in results)
            {
                if (result.ChartElementType == ChartElementType.DataPoint)
                {
                    var prop = result.Object as DataPoint;
                    if (prop != null)
                    {
                        string[] series_words = result.Series.Name.Split(' ');
                        string name = series_words[0];
                        for (int i = 1; i < series_words.Length - 1; i++)
                        {
                            name += " " + series_words[i];
                        }
                        string units = series_words.Last().Substring(1, series_words.Last().Length - 2); // Get rid of ( and )
                        string x_val = DateTime.FromOADate(prop.XValue).ToString("HH:mm:ss.ff");
                        string y_val = prop.YValues[0].ToString("F1");
                        string display_string = name + ": " + x_val + " , " + y_val + " " + units;
                        display_info.Show(display_string, this.DataChart, pos.X, pos.Y - 20);
                    }
                }
            }
        }
    }
}
