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
      
     
        float receivelux=0;  
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

                if (i== 4)
                {                  
                     receivelux = (float)((temp[0] * 1000) + (temp[1] * 100) + (temp[2] * 10) + (temp[3])) / (float)10;
                    LuxTextBox.Text = receivelux.ToString();
                    i = 0;
                }
               
            }

           
         
               
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
         
        }

        private void SendPidButton_Click(object sender, EventArgs e)
        {
                

            }
          
                    
                     
      
        }


      
    }

