#line 1 ".\Src\mode.c"
#line 1 "C:\Sonix\SN8_C_~1.119\C\include\SonixDef.h"



unsigned long GetRollingCode(unsigned int offset);








struct _intrinsicbitfield
{
	unsigned bit0:1;
	unsigned bit1:1;
	unsigned bit2:1;
	unsigned bit3:1;
	unsigned bit4:1;
	unsigned bit5:1;
	unsigned bit6:1;
	unsigned bit7:1;
};













#line 1 ".\Src\mode.c"

#line 5 ".\Src\mode.c"
#line 1 ".\Include\mode.h"


#line 1 "C:\Sonix\SN8_C_~1.119\C\include\sn8p2511.h"



void _ClearWatchDogTimer(void);
void _ClrRAM(void);



sfr	R = 0x82;
sfr	Z = 0x83;
sfr	Y = 0x84;
sfr	PFLAG = 0x86;
sbit	FZ = 0x86:0;
sbit	FDC = 0x86:1;
sbit	FC = 0x86:2;
sbit	FLVD24 = 0x86:4;
sbit	FLVD36 = 0x86:5;
sbit	FNPD = 0x86:6;
sbit	FNT0 = 0x86:7;
sfr	P0M = 0xb8;
sbit	FP00M = 0xb8:0;
sfr	PEDGE = 0xbf;
sbit	FP00G1 = 0xbf:4;
sbit	FP00G0 = 0xbf:3;
sfr	P1W = 0xc0;
sfr	P1M = 0xc1;
sbit	FP10M = 0xc1:0;
sbit	FP12M = 0xc1:2;
sbit	FP13M = 0xc1:3;
sfr	P2M = 0xc2;
sbit	FP20M = 0xc2:0;
sbit	FP21M = 0xc2:1;
sbit	FP22M = 0xc2:2;
sbit	FP23M = 0xc2:3;
sbit	FP24M = 0xc2:4;
sbit	FP25M = 0xc2:5;
sfr	P5M = 0xc5;
sbit	FP54M = 0xc5:4;
sfr	INTRQ = 0xc8;
sbit	FP00IRQ = 0xc8:0;
sbit	FT0IRQ = 0xc8:4;
sbit	FTC0IRQ = 0xc8:5;
sfr	INTEN = 0xc9;
sbit	FP00IEN = 0xc9:0;
sbit	FT0IEN = 0xc9:4;
sbit	FTC0IEN = 0xc9:5;
sfr	OSCM = 0xca;
sbit	FCPUM1 = 0xca:4;
sbit	FCPUM0 = 0xca:3;
sbit	FCLKMD = 0xca:2;
sbit	FSTPHX = 0xca:1;
sfr	WDTR = 0xcc;
sfr	TC0R = 0xcd;
sfr	PCL = 0xce;
sfr	PCH = 0xcf;
sfr	P0 = 0xd0;
sbit	FP00 = 0xd0:0;
sfr	P1 = 0xd1;
sbit	FP10 = 0xd1:0;
sbit	FP11 = 0xd1:1;
sbit	FP12 = 0xd1:2;
sbit	FP13 = 0xd1:3;
sfr	P2 = 0xd2;
sbit	FP20 = 0xd2:0;
sbit	FP21 = 0xd2:1;
sbit	FP22 = 0xd2:2;
sbit	FP23 = 0xd2:3;
sbit	FP24 = 0xd2:4;
sbit	FP25 = 0xd2:5;
sfr	P5 = 0xd5;
sbit	FP54 = 0xd5:4;
sfr	T0M = 0xd8;
sbit	FT0TB = 0xd8:0;
sbit	FT0RATE0 = 0xd8:4;
sbit	FT0RATE1 = 0xd8:5;
sbit	FT0RATE2 = 0xd8:6;
sbit	FT0ENB = 0xd8:7;
sfr	T0C = 0xd9;
sfr	TC0M = 0xda;
sbit	FTC0ENB = 0xda:7;
sbit	FTC0RATE2 = 0xda:6;
sbit	FTC0RATE1 = 0xda:5;
sbit	FTC0RATE0 = 0xda:4;
sbit	FTC0CKS = 0xda:3;
sbit	FALOAD0 = 0xda:2;
sbit	FTC0OUT = 0xda:1;
sbit	FPWM0OUT = 0xda:0;
sfr	TC0C = 0xdb;
sfr	STKP = 0xdf;
sbit	FGIE = 0xdf:7;
sbit	FSTKPB1 = 0xdf:1;
sbit	FSTKPB0 = 0xdf:0;
sfr	P0UR = 0xe0;
sbit	FP00R = 0xe0:0;
sfr	P1UR = 0xe1;
sbit	FP10R = 0xe1:0;
sbit	FP12R = 0xe1:2;
sbit	FP13R = 0xe1:3;
sfr	P2UR = 0xe2;
sbit	FP20R = 0xe2:0;
sbit	FP21R = 0xe2:1;
sbit	FP22R = 0xe2:2;
sbit	FP23R = 0xe2:3;
sbit	FP24R = 0xe2:4;
sbit	FP25R = 0xe2:5;
sfr	P5UR = 0xe5;
sbit	FP54R = 0xe5:4;
sfr	_YZ = 0xe7;
sfr	P1OC = 0xe9;
sfr	STK3L = 0xf8;
sfr	STK3H = 0xf9;
sfr	STK2L = 0xfa;
sfr	STK2H = 0xfb;
sfr	STK1L = 0xfc;
sfr	STK1H = 0xfd;
sfr	STK0L = 0xfe;
sfr	STK0H = 0xff;





#line 4 ".\Include\mode.h"

 unsigned char check_port3_change_count;
 unsigned char mode_delay_1;
 unsigned char mode_delay_2;
 unsigned char mode_delay_3;
 unsigned char mode_delay_4;
 unsigned char mode_delay_5;
 unsigned char mode_delay_6;
bit  power_up;
bit  mode_one;
bit  mode_two;
bit  mode_three;
bit  check_port3_buf;
bit  have_get_node;
bit  power_up;

extern bit led_mode_init;
extern unsigned char led_mode;



void mode_selection(void);
void power_start(void);
void mode_check(void);

#line 6 ".\Src\mode.c"

bit flagTrigger;


#line 16 ".\Src\mode.c"
void mode_selection(void)
{
  if(FP11)
  {
    if(!check_port3_buf){check_port3_buf=1;check_port3_change_count+=1;}
  }
  else
  {
    if(check_port3_buf){check_port3_buf=0;check_port3_change_count+=1;}
  }


  if(mode_delay_1>14)
  {
    mode_delay_1=0;
	if(check_port3_change_count>1)
	{
	  check_port3_change_count=0;
	  if(led_mode !=0 || power_up==0)
	  {
		power_up=1;
		led_mode=0;
		if (!flagTrigger)
		{
			flagTrigger = 1;
			led_mode_init=0;
		}
		have_get_node=0;
		mode_one=0;
	    mode_two=0;
	    mode_three=0;
	  }
    }
	else
	{
	  flagTrigger = 0;
	  have_get_node=1;
	  check_port3_change_count=0;
	}
  }


  if(FP13)
  {
    if(mode_three==0 && have_get_node==1)
	{
	  mode_one=0;
	  mode_two=0;
	  mode_three=1;
      led_mode=3;
	  led_mode_init=0;
	}
  }
  else if(FP12)
  {
    if(mode_two==0 && have_get_node==1)
	{
	  mode_one=0;
	  mode_two=1;
	  mode_three=0;
	  led_mode=2;
	  led_mode_init=0;
	}
  }
  else
  {
    if(mode_one==0 && have_get_node==1)
	{
	  mode_one=1;
	  mode_two=0;
	  mode_three=0;
	  led_mode=1;
	  led_mode_init=0;
	}
  }
}


#line 100 ".\Src\mode.c"
void power_start(void)
{

}


#line 112 ".\Src\mode.c"
void mode_check(void)
{

}
