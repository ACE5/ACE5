using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO.Ports;
using System.Windows.Forms;
using ZedGraph;
namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        SerialPort UART = new SerialPort();
        int i = 0;
        int n = 0;
        int[] temp = new int[20];
        int[] lux = new int[5];
        int[] bien = new int[5];
        byte[] buffer = new byte[3];
        byte[] buffer1 = new byte[3];

        float kp1 = 0, ki1 = 0, kd1 = 0;
        //  float receivenhietdo = 0; 
        // float receivelux=0;
        //  float receiveerr = 0;
        int setting1 = 0;
        float receivelux = 0;
        public Form1()
        {
            InitializeComponent();
        }

        private void ExitButton_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Control.CheckForIllegalCrossThreadCalls = false;
            string[] ComList = SerialPort.GetPortNames();
            Array.Sort(ComList);
            PortComboBox.Items.AddRange(ComList);
        }

        private void timer1_Tick_1(object sender, EventArgs e)
        {

        }
        int check = 0; // để cho khi nhấn Start là sẽ bắt đầu từ điểm 0

        private void button1_Click(object sender, EventArgs e)
        {
        }

        private void ConnectButton_Click(object sender, EventArgs e)
        {
            if (PortComboBox.Text == "")
            {
                MessageBox.Show("Vui lòng chọn cổng com", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (serialPort1.IsOpen)
            {
                serialPort1.Close();
                ConnectButton.Text = "CONNECT";
                PortComboBox.Enabled = true;
            }
            else
            {
                try
                {
                    serialPort1.PortName = PortComboBox.Text;
                    serialPort1.Open();
                    ConnectButton.Text = "DISCONNECT";
                    PortComboBox.Enabled = false;
                }
                catch
                {
                    MessageBox.Show("Không thể mở cổng com", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }


        }

        private void PwmButton_Click(object sender, EventArgs e)
        {


        }

        private void ClearButton_Click(object sender, EventArgs e)
        {

        }

        private void serialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            if (serialPort1.IsOpen)
            {
                temp[i] = serialPort1.ReadByte();

                i++;

                if (i == 4)
                {
                    receivelux = (float)((temp[0] * 1000) + (temp[1] * 100) + (temp[2] * 10) + (temp[3])) / (float)10;
                    LuxTextBox.Text = receivelux.ToString();
                    i = 0;
                }

            }




        }

        private void SendPidButton_Click(object sender, EventArgs e)
        {
            if (KpTextBox.Text == "")
            {
                MessageBox.Show("Vui lòng nhập giá trị đầy đủ giá trị Kp,Ki,Kd", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (KiTextBox.Text == "")
            {
                MessageBox.Show("Vui lòng nhập giá trị đầy đủ giá trị Kp,Ki,Kd", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (KdTextBox.Text == "")
            {
                MessageBox.Show("Vui lòng nhập giá trị đầy đủ giá trị Kp,Ki,Kd", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (serialPort1.IsOpen)
            {


                setting1 = int.Parse(setPointTexbox.Text);
                kp1 = float.Parse(KpTextBox.Text);
                ki1 = float.Parse(KiTextBox.Text);
                kd1 = float.Parse(KdTextBox.Text);
                float kpp = kp1 * (float)10.0;
                float kii = ki1 * (float)10.0;
                float kdd = kd1 * (float)10.0;

                int nghin = (setting1 / 1000);
                int tram = ((setting1 % 1000) / 100);
                int chuc = (((setting1 % 1000) % 100) / 10);
                int dvi = (((setting1 % 1000) % 100) % 10);





                int MyInt5 = Convert.ToInt32(kpp);
                byte[] z = BitConverter.GetBytes(MyInt5);
                serialPort1.Write(z, 0, 1);

                int MyInt6 = Convert.ToInt32(kii);
                byte[] p = BitConverter.GetBytes(MyInt6);
                serialPort1.Write(p, 0, 1);

                int MyInt7 = Convert.ToInt32(kdd);
                byte[] m = BitConverter.GetBytes(MyInt7);
                serialPort1.Write(m, 0, 1);

                int MyInt8 = Convert.ToInt32(nghin);
                byte[] n = BitConverter.GetBytes(MyInt8);
                serialPort1.Write(n, 0, 1);

                int MyInt1 = Convert.ToInt32(tram);
                byte[] q = BitConverter.GetBytes(MyInt1);
                serialPort1.Write(q, 0, 1);

                int MyInt2 = Convert.ToInt32(chuc);
                byte[] w = BitConverter.GetBytes(MyInt2);
                serialPort1.Write(w, 0, 1);

                int MyInt3 = Convert.ToInt32(dvi);
                byte[] r = BitConverter.GetBytes(MyInt3);
                serialPort1.Write(r, 0, 1);

            }




        }
    }
}


      
    

