/*****************************************
 * FileName: mcu_config.h
 * Date: 2016.01.16
 * Author: DS.Chin
*******************************************/
#include "iostm8s003f3.h"
#include "system.h"

/* * * *
 * define
* * * */
#define 		BIT0		(0x01 << 0)
#define			BIT1 		(0x01 << 1)
#define			BIT2		(0x01 << 2)
#define			BIT3		(0x01 << 3)
#define			BIT4		(0x01 << 4)
#define			BIT5		(0x01 << 5)
#define			BIT6		(0x01 << 6)
#define			BIT7		(0x01 << 7)
		
/*++++++++++++++++++++++++++++++++++++++++
 + FunctionName: ClkInit
+++++++++++++++++++++++++++++++++++++++++*/
static void Clk_Init(void)
{
  CLK_ECKR |= 0x01;								/*  Open the HSE 		*/
	while (!(CLK_ECKR & 0x02));    	/*  Wait the HSE   */
	
	CLK_CKDIVR = 0x00;		/*  Fcpu = HSE   */
	CLK_SWR    = 0xB4;		/*  HSE selected as the system clock */
	
	while (!(CLK_SWCR & 0x08));
	CLK_SWCR  |= 0x02;		/* Change the clock source  */
}

/*+++++++++++++++++++++++++++++++++++++++
 + FunctionName: GpioInit
++++++++++++++++++++++++++++++++++++++++*/
static void Gpio_Init(void)
{
  /* Tx - PD5*/
  PD_DDR |= BIT5;
  PD_CR1 |= BIT5;
  
  /* Rx - PD6 */
  PD_DDR &= ~BIT6;
  PD_CR1 |= BIT6;
  PD_CR2 &= ~BIT6;
	
	/* SWITCH 1 PC6 */
	PC_DDR |= BIT6;
	PC_CR1 |= BIT6;
	PC_ODR &= ~BIT6;
	
	/* SWITCH 0 PA3 */
	PA_DDR |= BIT3;
	PA_CR1 |= BIT3;
	PA_ODR &= ~BIT3;
	
	/* SWITHC 2 PC3 PC4 PC5 */
	PC_DDR |= (BIT3 | BIT4 | BIT5);
	PC_CR1 |= (BIT3 | BIT4 | BIT5);
	PC_ODR &= ~(BIT3 | BIT4 | BIT5);
	
	/* KEY 0 1 2 3 4 5 -- PD3 PD2 PD1 PC7 PB5 */
	PD_DDR &= ~(BIT3 | BIT2 | BIT1);
	PD_CR1 |= (BIT3 | BIT2 | BIT1);
	PD_ODR &= ~(BIT3 | BIT2 | BIT1);
	PC_DDR &= ~BIT7;
	PC_CR1 |= BIT7;
	PC_ODR &= ~BIT7;
	PB_DDR &= ~BIT5;
	PB_CR1 &= ~BIT5;
	PB_CR2 &= ~BIT5;
	
  
	/* �ϵ���� PD4*/
	PD_DDR	&= ~BIT4;
	PD_CR1	&= ~BIT4;
	PD_CR2	&= ~BIT4;
		
	/* �����ϵ���ƿ� PB4 */
	PB_DDR	|= BIT4;
	PB_CR1	|= BIT4;
	PB_CR2	&= ~BIT4;
  PB_ODR	|= BIT4;
}

/*********************************************************************
    * @ Function Name: TIM1_Init
	* @ Input: None
	* @Output: None
	*/
static void TIM1_Init(void)
{
	TIM1_CR1	  |= 0x80;
	TIM2_IER		 = 0x00;
	TIM1_SR1	   = 0x00;
	TIM1_PSCRH	 = 0x00;
	TIM1_PSCRL   = 159;    //16M/160 Hz = 10 us
	TIM1_ARRH		 = 0;
	TIM1_ARRL    = 249;		//2.5MS
	TIM1_CR1	  |= 0x01;	//Timer 4 enable
}
/*++++++++++++++++++++++++++++++++++++++++++
 + FunctionName: UartInit
+++++++++++++++++++++++++++++++++++++++++++*/
static void Uart_Init(void)
{ 
  UART1_SR   = 0x00;
  UART1_BRR2 = 0x02;
  UART1_BRR1 = 0x68;   //9600b/s
  UART1_CR1  = 0x00;
  UART1_CR2  = 0x2C;   //REN = 1, TEN = 1, RIEN = 1
}

/*********************************************
 * Tim4_Init
 */
void Tim4_Init(void)
{
	TIM4_PSCR = 0x06;  	 //64��Ƶ  4us
	TIM4_ARR  = 249;     //1ms
	TIM4_CNTR = 0;
  TIM4_IER 	= 0x01; // interrupt enable
	TIM4_CR1 |= 0x01;
}

/*+++++++++++++++++++++++++++++++++++++++++
 + FunctionName: McuConfig
++++++++++++++++++++++++++++++++++++++++++*/
void Mcu_Config(void)
{
  asm("sim");         //interrupt disable
  
  Clk_Init();
  Gpio_Init();
  TIM1_Init();
  Tim4_Init();
  Uart_Init();
    
  asm("rim");         //interrupt enable
}

