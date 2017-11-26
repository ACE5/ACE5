#include <htc.h>
//#include <stdio.h>
#include<math.h>
#include <stdio.h>
#include<pic16f887.h>
__CONFIG(HS & WDTDIS & PWRTEN & MCLREN & UNPROTECT & DUNPROTECT
& BORDIS & IESODIS & FCMDIS & LVPDIS);
#include "lcd.h"

#define SCL     TRISC3	// I2C bus
#define SDA     TRISC4	// Ca´c chân na`y dê? diê`u khiê?n
#define SCL_IN  RC3    // Ca´c chân na`y luu gia´ tri? hiê?n ta?i cu?a SCL va` SDA.
#define SDA_IN  RC4
#define	BH1750_address_w	0x46                               
#define	BH1750_address_r  0x47          
#define	power_down	    0x00
#define 	power_up	0x01
#define  reset			0x07 
#define  cont_H_res_mode1  		0x10 
#define  cont_H_res_mode2  		0x11  
#define  cont_L_res_mode   		0x13                                          
#define  one_time_H_res_mode1  	0x20 
#define  one_time_H_res_mode2  	0x21
#define  one_time_L_res_mode  	0x23    

// khai bao he so pid

void BH1750_init();
void BH1750_write();                                           
unsigned long BH1750_read(); 
void delay_ms(int x);
void uart_tx(char data);
void pid();
void nhiet_do();
void xu_ly_lux();
void send_nhietdo();
void send_lux();
void receive_pid();
void send_error();
void err_phantram ();
unsigned char save=0,check[10],check1;
int value=0;
int k=0;
int pre_err=0,output=0;
int lux_set,kp5;
int kq,nhietdo1=0,kq2=0;
int kqkp=0,kqkd=0,kqki=0,temp;
int flux1,flux2,m,fnt1,fnt2,n;
int value2,value3;
float value1=0;
float kp1,ki1,kd1;
float err=0;
float dosang=0;
float nhietdo=0;
// khai bao pid
char dosang1;
char biennt1,biennt2;
char nghinlux,tramlux,chuclux,dvilux;
unsigned char nghin,tram,chuc,dvi,nghin1,tram1,chuc1,dvi1;
unsigned char nt1,nt2,chuc1, dvi1,chuc2,dvi2;
char c;


//KHAI BAO UART
void uart_tx(char data)// send data uart
{
	TXREG =data;
	while(TXIF==0);
	
}
void interrupt uart_isr()// lay du lieu tu uart
{
	if(RCIE && RCIF)// nhan gia tri tu uart
	  {
		check[save]=RCREG;
			save++;
		    if(save==7)
			{
				save=0;
			
			}
	  }
	if(T0IF && T0IE)
	{
 	   T0IF=0;
	   TMR0=131;
       k++;
       if(k==250)
       	 {
			BH1750_read();
			pid();
		//	receive_pid();
 			k=0;
	       
 		
		 }

	}
}


void delay_ms(int x) // a subroutine delay 1ms at 4Mhz
{
  int i=0;
  for(;i<x;i++)
    {
     _delay(1000);
    }
}
//**************I2C************

void i2c_dly(void)
{
	;
}
void I2C_start(void)
{
  SDA = 1;             // i2c start bit sequence
  i2c_dly();
  SCL = 1;
  i2c_dly();
  SDA = 0;
  i2c_dly();
  SCL = 0;
  i2c_dly();
}

void I2C_stop(void)
{
  SDA = 0;             // i2c stop bit sequence
  i2c_dly();
  SCL = 1;
  i2c_dly();
  SDA = 1;
  i2c_dly();
}
unsigned char I2C_read (char ack)
{
  char x, d=0;
  SDA = 1; 
  for(x=0; x<8; x++)   // Lâ`n luo?t do?c tu`ng bit.
  {
    d <<= 1;
    do 
    {
      SCL = 1;
    }while(SCL_IN==0);    // Ðo?i xung suo`n lên cu?a SCL.
    
    i2c_dly();
    if(SDA_IN) d |= 1;   // Ðo?c SDA va` chuyê?n bit na`y va`o d (1 thi` ghi 1, 0 giu~ nguyên)
    SCL = 0;
  } 
  if(ack) SDA = 0;
  else SDA = 1;
  SCL = 1;
  i2c_dly();             // send (N)ACK bit
  SCL = 0;
  SDA = 1;
  return d;
}

bit I2C_write(unsigned char d)
{
char x;
static bit b;
  for(x=8; x; x--) {
    if(d&0x80) SDA = 1;   // Truyê`n tu` bit cao xuô´ng bit thâ´p. 0x80 = 1000 0000
    else SDA = 0;
    SCL = 1;
    d <<= 1;
    SCL = 0;
  }
  SDA = 1;
  SCL = 1;
  i2c_dly();
  b = SDA_IN;          // possible ACK bit

  SCL = 0;
  return b;
}
/*********************/
// CHUONG TRINH BH1750
/*******************/

void BH1750_init()
{ 
	delay_ms(100);  
	BH1750_write(power_down);
}                  
              

void BH1750_write()
{ 
	I2C_start();
	I2C_write(0x46);        
	I2C_write(0x10);                
	I2C_stop();	
}

                                                 
unsigned long BH1750_read()
{                      	
	unsigned char lb = 0;
	unsigned char hb = 0;
	I2C_start();
	I2C_write(0x47);      
	hb = I2C_read(1);  
	lb = I2C_read(0);
    I2C_stop();                     
	value =(hb<<8)+lb; 
    value1=(float)value/1.2;    
} 
//**************************************//
        /****XU LY****/
void nhiet_do()
{
    GODONE=1;
    while(GODONE);	
	kq=ADRESH;
	kq<<=8;
	delay_ms(200);
	kq=kq+ADRESL;
    nhietdo=((float)(500*kq)/1023.0);

	fnt1=(nhietdo/1);
	nt1=(fnt1/10)+48;
	nt2=(fnt1%10)+48;
	lcd_gotoxy(0, 0); 
	lcd_puts("nhietdo: ");
	lcd_gotoxy(8,0);
    lcd_putc(nt1);
    lcd_putc(nt2);
	lcd_putc('.');

	for(n=0;n<2;n++)
	 {
      fnt2=(nhietdo-fnt1)*10;
	  chuc2=fnt2/10+48;	
      dvi2=fnt2%10+48;
	 }
	lcd_putc(chuc2);
	lcd_putc(dvi2);
}
void xu_ly_lux()
{
	lcd_gotoxy(0, 1); 
    lcd_puts("lux: ");
	lcd_gotoxy(6, 1);
	lcd_putc(nghin);
	lcd_putc(tram);
	lcd_putc(chuc);
	lcd_putc(dvi);
	lcd_putc('.');
	lcd_putc(chuc1);
	lcd_putc(dvi1);
	lcd_putc(dvi1);
	delay_ms(300);
    flux1=value1/1;
    nghin=(flux1/1000)+48;
    tram=((flux1%1000)/100)+48;
	chuc=(((flux1%1000)%100)/10)+48;
	dvi=(((flux1%1000)%100)%10)+48;
	for(m=0;m<2;m++)
{
	flux2=(value1-flux1)*10;
	chuc1=(flux2%10)+48;
	dvi1=(flux2/10)+48;
}
}
void send_nhietdo()
{
	nhietdo1=nhietdo*10;
	biennt1=(nhietdo1/10);
	biennt2=(nhietdo1%10);
	// sendding c#
	uart_tx(biennt1);
	uart_tx(biennt2);
    delay_ms(200);
}
void send_lux()
{
	value2=value1*10;
    nghinlux=(value2/1000);
    tramlux=((value2%1000)/100);
	chuclux=(((value2%1000)%100)/10);
	dvilux=(((value2%1000)%100)%10);
	// send c#
	uart_tx(nghinlux);
	uart_tx(tramlux);
	uart_tx(chuclux);
	uart_tx(dvilux);
	delay_ms(200);
}
void receive_pid()
{ 
	int chuckp, bienkp1, bienkp2,bienki1,bienki2,bienkd1,bienkd2,p,i,d;
   int nghinkp,tramkp,chuckp,dvikp,tramki,chucki,dviki,tramkd,chuckd,dvikd;
   int nghinout,tramout,chucout,dviout; 
   int fkp,fki,fkd;
	kp1=((check[0])/10.0);
	ki1=((check[1])/10.0);
	kd1=((check[2])/10.0);
	lux_set=check[3]*1000+check[4]*100+check[5]*10+check[6];
	delay_ms(50); 
}
void pid()
{ 
  
   err=(lux_set-value1);// tinh sai so
   kqkp=kp1*err;
   kqki+=ki1*err*50/1000;  
   kqkd=(kd1*(err-pre_err)*20);
   output=kqkp+kqki+kqkd;
   if(output>=255)
		{
			output=255;
		}

   if(output<=0)
		{
			output=0;
		}
   	
   	pre_err=err;
	CCPR1L=255-output;

}
void send_error()
{
  char nghiner,tramer,chucer,dvier;
  int berr;
	
    if(err<0)
{
	err=(value1-lux_set);
}
	berr=err*10;
	nghiner=(berr/1000);
    tramer=((berr%1000)/100);
	chucer=(((berr%1000)%100)/10);
	dvier=(((berr%1000)%100)%10);
	uart_tx(nghiner);
	uart_tx(tramer);
	uart_tx(chucer);
	uart_tx(dvier);
	delay_ms(200);
}

void putch(char c)
{
	lcd_putc(c);
}

//****HAM MAIN**************//

void main()
{

	ANSEL=0;
	ANSELH=0;
	lcd_init();
    //UART
	SPBRGH=0;
	BRG16=1;
	SPBRG=129;
	TXSTA=0x20;
	RCSTA=0x90;
	SYNC=0;
	c=RCREG;
	RCIE=1;
	PEIE=1;
	GIE=1;

	PORTC=0;
	TRISC1=0;
	TRISC2=0;
	CCP1CON=0X0C;
	T2CON=0X01;
	TMR2ON=1;
	PR2=255;
	// khai bao kenh analog
	ANS2=1; 
	VCFG0=VCFG1=0;  
	ADCS0=ADCS1=1;  
	ADFM=1; 
	CHS3=0;
	CHS2=0;
	CHS1=1;
	CHS0=0; 
	ADON=1; 
	// khai bao timer
	T0CS=0;
	PSA=0;
	T0SE=1;
	PS0=PS2=0;
	PS1=1;
	TMR0=131;
	T0IE=1;
	delay_ms(1000);	
	BH1750_write();
   
 while(1)
  {

//		
    xu_ly_lux();
//	delay_ms(100); 
    nhiet_do();
	send_nhietdo();
//	delay_ms(100);
    send_lux();
//	delay_ms(100);
	send_error();   
	receive_pid();
  
  }
}



          


     
