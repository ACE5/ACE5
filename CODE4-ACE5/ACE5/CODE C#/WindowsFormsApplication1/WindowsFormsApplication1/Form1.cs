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
        string chuoi, temp1;
        int number, pwm1;
        int tram, chuc, dvi,kq,kq2=0;
        float kp1 = 0, ki1 = 0, kd1 = 0;
      //  float receivenhietdo = 0; 
        float receivelux=0;
      //  float receiveerr = 0;
        int setting1 = 0;
        int phantram = 0;
     //   decimal receivelux=0;
        int tickStart = 0;
       
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
            //chart 
 
            GraphPane myPane = zedGraphControl1.GraphPane; // Khai báo sửa dụng Graph loại GraphPane;
            // Các thông tin cho đồ thị của mình
            myPane.Title.Text = "Đồ Thị Đáp ứng độ sáng Lux";
            myPane.XAxis.Title.Text = "Thời gian";
            myPane.YAxis.Title.Text = "Lux";
            myPane.YAxis.Scale.Min = 0;
            myPane.YAxis.Scale.Max = 800;
            // Định nghĩa list để vẽ đồ thị <=> 2 đường đồ thị
            RollingPointPairList list1 = new RollingPointPairList(1200);
            // Ở đây sử dụng list với 1200 điểm 
            RollingPointPairList list2 = new RollingPointPairList(1200);
            // dòng dưới là định nghĩa curve để vẽ.
            LineItem curve1 = myPane.AddCurve("Lux Cài Đặt", list1, Color.Red, SymbolType.None); // Color màu đỏ, đặc trưng cho đường 1
            // SymbolType là kiểu biểu thị đồ thị : điểm, đường tròn, tam giác ....
            LineItem curve2 = myPane.AddCurve("Lux Hiện tại", list2, Color.Blue, SymbolType.None); //  Color màu Xanh, đặc trưng cho đường 2

            //  khoảng cách là 50ms 1 lần
            timer1.Interval = 50;
           

            // Định hiện thị cho trục thời gian (Trục X)
            myPane.XAxis.Scale.Min = 0;  // Min  = 0;
            myPane.XAxis.Scale.Max = 30; // Mã  = 30;
            myPane.XAxis.Scale.MinorStep = 1;  // Đơn vị chia nhỏ nhất 1
            myPane.XAxis.Scale.MajorStep = 5; // Đơn vị chia lớn 5
            // Gọi hàm xác định cỡ trục
            zedGraphControl1.AxisChange();

            // Khởi động timer về vị trí ban đầu 
            tickStart = Environment.TickCount;

        }
        public void draw(double setpoint1, double setpoint2) 
        {

            if (zedGraphControl1.GraphPane.CurveList.Count <= 0)
                return;
            // Kiểm tra việc khởi tạo các đường curve
            // Đưa về điểm xuất phát
            LineItem curve1 = zedGraphControl1.GraphPane.CurveList[0] as LineItem;
            LineItem curve2 = zedGraphControl1.GraphPane.CurveList[1] as LineItem;
            if (curve1 == null)
                return;
            if (curve2 == null)
                return;

            // list chứa các điểm. 
            // Get the PointPairList
            IPointListEdit list1 = curve1.Points as IPointListEdit;
            IPointListEdit list2 = curve2.Points as IPointListEdit;

            if (list1 == null)
                return;
            if (list2 == null)
                return;

            // Time được tính bằng ms
            double time = (Environment.TickCount - tickStart) / 100.0;

            // Tính toán giá trị hiện thị
            // Muốn hiện thị cái gì thì chỉ việc thay vào setpoint
            list1.Add(time, Convert.ToInt32(setting1)); //  hiển thị dữ liệu của  lên đồ thị
            list2.Add(time, receivelux); 

            // đoạn chương trình thực hiện vẽ đồ thị
            Scale xScale = zedGraphControl1.GraphPane.XAxis.Scale;
            if (time > xScale.Max - xScale.MajorStep) ;

            {
                // xScale.Min = xScale.Max - 30.0; // Timer chạy qua 30 sẽ tự động dịch chuyển tịnh tiến sang trái
                // Nếu ko muốn dịch chuyển mà chạy bắt đầu từ 0 thì : xScale.Min = 0;
                if (button1.Text == "COMPACT")
                {
                    xScale.Max = time + xScale.MajorStep;
                    xScale.Min = xScale.Max - 30.0;
                  
                }
                else
                {
                    xScale.Max = time + xScale.MajorStep;
                    xScale.Min = 0;
                }
            }

            // Vẽ đồ thị
            zedGraphControl1.AxisChange();
            // Force a redraw
            zedGraphControl1.Invalidate();
        }

        private void timer1_Tick_1(object sender, EventArgs e)
        {
            draw(5, 20);
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
           /* if (PwmTextBox.Text == "")
            {
                MessageBox.Show("Vui lòng nhập giá trị pwm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            number = int.Parse(PwmTextBox.Text);
            if (number >= 250)
            {
                MessageBox.Show("Vui lòng nhập giá trị pwm từ 0 đến 249", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (number <=-1)
            {
                MessageBox.Show("Vui lòng nhập giá trị pwm từ 0 đến 249", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (serialPort1.IsOpen)
            {
                int MyInt5 = Convert.ToInt32(PwmTextBox.Text);
                byte[] z = BitConverter.GetBytes(MyInt5);
                serialPort1.Write(z, 0, 1);

            }*/
        
        }

        private void ClearButton_Click(object sender, EventArgs e)
        {
            //PwmTextBox.Clear();
        }

        private void serialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            if (serialPort1.IsOpen)
            {
                temp[i] = serialPort1.ReadByte();

                i++;

                if (i == 10)
                {
                 
                float receivenhietdo = (float)(((temp[0] * 10)) + (temp[1])) / (float)10;
                    
                     receivelux = (float)((temp[2] * 1000) + (temp[3] * 100) + (temp[4] * 10) + (temp[5])) / (float)10;
                    float receiveerr = (float)((temp[6] * 1000) + (temp[7] * 100) + (temp[8] * 10) + (temp[9])) / (float)10;
                    i = 0;
                    LuxTextBox.Text = receivelux.ToString();
                    ErrTextBox.Text = receiveerr.ToString();
                    nhietdoTextBox.Text = receivenhietdo.ToString();
                }
               
            }

           
         
               
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            if (button1.Text == "COMPACT") button1.Text = "ROLL";
            else button1.Text = "COMPACT";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (button3.Text == "START")
            {
                timer1.Enabled = true;
                button3.Text = "STOP";
                // Khởi động timer về vị trí ban đầu 
                if (check == 0) { tickStart = Environment.TickCount; check = 1; }
            }
            else
            {
                timer1.Enabled = false;
                button3.Text = "START";
            }
        }

        private void SendPidButton_Click(object sender, EventArgs e)
        {
            /*
          // setpoint1 = int.Parse(SetPointTextBox.Text);
           kp1 = float.Parse(KpTextBox.Text);
           ki1=float.Parse(KiTextBox.Text);
           kd1 = float.Parse(KdTextBox.Text);
           float kpp = kp1*10 ;
           float kii = ki1*10 ;
           float kdd = kd1*10 ;
           float setpoint2 = setpoint1 / 10;
           int setpoint3 = Convert.ToInt32(setpoint2); 
           int kppp = Convert.ToInt32(kpp);
           int kiii = Convert.ToInt32(kii);
           int kddd = Convert.ToInt32(kdd);

         
           
           if (serialPort1.IsOpen)
           {
             //  byte[] buffer = new byte[] { Convert.ToByte(kppp) };
              // serialPort1.Write(buffer, 0, 1);
             //  byte[] buffer1 = new byte[] { Convert.ToByte(kiii) };
             //  serialPort1.Write(buffer1, 0, 1);
               string data_sent;
               data_sent = string.Concat(kppp,kiii,kddd);
              // serialPort1.WriteLine(data_sent);
                 byte[] buffer = new byte[] { Convert.ToByte(data_sent) };
                serialPort1.Write(buffer, 0, 1);
           }*/
        
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

                int  nghin = (setting1 / 1000);
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

        private void KdTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        private void setPointTexbox_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void setPointTexbox_KeyPress(object sender, KeyPressEventArgs e)
        {
           
        }

      
    }
}
