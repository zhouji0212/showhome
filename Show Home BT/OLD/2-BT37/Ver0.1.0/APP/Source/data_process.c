/************************************************
 * FileName: data_process.c
 * Date: 2016.07.28
 * Author: DS.Chin
 * Input:  RcvData[3],RcvStatus,MotorOpenFlag,TimerOpenFlag,SaveFlag
 * Output: 
 * Description: process the recieve data
*************************************************/

/***************************************************************
 * Include Files
 */
#include "iostm8s003f3.h"
#include "system.h"
#include "data_process.h"

/***************************************************************
 * Defines
 */
#define			PORT_SWITCH_0							PD_ODR_ODR2
#define			PORT_SWITCH_1							PD_ODR_ODR3
#define     NULL              				0
#define			DEF_REPLY_REPEAT()				RepeatFlag = TRUE;\
																			RepeatDelayTime = 0;\
																			RepeatCnt = 0

/***************************************************************
 * Global variables
 */
_TypeSwitchStatus(AllStatus);
_Uchar				OneStatus;

/**************************************************************
 * FunctionName: Data_Process
 */
void Data_Process(void)
{
	/* 处理接收APP数据 */
	APP_Data_Process();
}


/****************************************************************
* FunctionName: APP_Data_Process
*/
void APP_Data_Process(void)
{
	static _Flag       	BtInitFlag;        		//蓝牙初始化标志位
	_Uchar							GroupNum	= 0;
	_Uchar							ClassNum	= 0;
  
	//接收到数据
   if (RcvStatus)
   {
      RcvStatus = FALSE;  //clear recieved flag
     
	  	
		/*  # 蓝牙初始化判断 # */
    if (FALSE == BtInitFlag)
    {
       if (RcvData.Header == 0xF0) //接收到初始化指令
       {
          
          BtInitFlag = TRUE;    // 蓝牙初始化标志位置位
					
              		  
          // 上电指令回复
			  	TypeReply						= FALSE;
          ReplyData.ReplyNum	= 0x01;
			  	ReplyData.ReplyCmd 	= 0x01;
					for (_Uchar TempCnt = 0; TempCnt < 7; TempCnt++)
					{
						ReplyData.ReplyOpt[TempCnt]	= 0x00;
					}
					DEF_REPLY_REPEAT();
					
					// 退出数据处理
					return;
       }
		}  /* # 蓝牙初始化判断 # */
				

		
		
		/* ## 指令字判断 ## */
		switch (RcvData.Header & 0x0F)
		{	
			
			
			//APP回复x1时，MCU停止信息回复
		  case 0x01:
				{
			  	ReplyData.ReplyNum	 = 0x00;
				}break;
			
			
				
				
				
			//APP发送整体查询指令
			case 0x02:
			  {
						ReplyData.ReplyNum			= 0x02;
						ReplyData.ReplyCmd 			= RcvData.Header;			// 回复数据指令字	
						ReplyData.ReplyOpt[0]		= AllStatus;					// 开关状态
						ReplyData.ReplyOpt[1]		= 0x00;
						ReplyData.ReplyOpt[2]		= AllPrgCheckSum[0];
						ReplyData.ReplyOpt[3]		= AllPrgCheckSum[1];
						ReplyData.ReplyOpt[4]		= 0x00;
						ReplyData.ReplyOpt[5]		= 0x00;
						ReplyData.ReplyOpt[6]		= 0x00;
						DEF_REPLY_REPEAT();
			  } break;
			
				
				
				
				
			// APP发送详细查询指令
		  case 0x03:
				{
						ReplyData.ReplyNum		= 0x03;
						ReplyData.ReplyCmd 		= RcvData.Header;
						ReplyData.ReplyOpt[0] = RcvData.GroupClass;	
						ReplyData.ReplyOpt[1] = RcvData.RcvOpt[0];	
						
						GroupNum							= RcvData.GroupClass >> 4;
						ClassNum							= RcvData.GroupClass & 0x0F;
						
						switch (RcvData.RcvOpt[0])
						{
							//状态查询
							case 0x01:
								{
									OneStatus								= (AllStatus >> GroupNum) & 0x01;
									ReplyData.ReplyOpt[2]		= OneStatus;			//开关状态
									ReplyData.ReplyOpt[3]		= 0x00;
									ReplyData.ReplyOpt[4]		= 0x00;
									ReplyData.ReplyOpt[5]		= 0x00;
									ReplyData.ReplyOpt[6]		= 0x00;
								} break;
								
								
							//定时开查询
							case 0x03:
								{	
									ReplyData.ReplyOpt[2]		= PrgTimer[GroupNum][ClassNum].OnHour;
									ReplyData.ReplyOpt[3]		= PrgTimer[GroupNum][ClassNum].OnMinute;
									ReplyData.ReplyOpt[4]		= 0x00;
									ReplyData.ReplyOpt[5]		= 0x00;
									ReplyData.ReplyOpt[6]		= 0x00;
								} break;
							
							//定时关查询
							case 0x04:
								{
									ReplyData.ReplyOpt[2]		= PrgTimer[GroupNum][ClassNum].OffHour;
									ReplyData.ReplyOpt[3]		= PrgTimer[GroupNum][ClassNum].OffMinute;
									ReplyData.ReplyOpt[4]		= 0x00;
									ReplyData.ReplyOpt[5]		= 0x00;
									ReplyData.ReplyOpt[6]		= 0x00;
								} break;
								
							//其他情况
							default:
								{
									ReplyData.ReplyNum			= 0x00;				//无效情况，不回复
								} break;
						}
						
				} break;
		  
				
				
				
				
			// APP设置指令
			case 0x04:
				{
						//收到APP指令后，回复
						ReplyData.ReplyNum		= 0x04;
						ReplyData.ReplyCmd 		= RcvData.Header;
						ReplyData.ReplyOpt[0]	= RcvData.GroupClass;
						ReplyData.ReplyOpt[1]	= RcvData.RcvOpt[0];
						
						for (_Uchar TempCnt = 2; TempCnt < 7; TempCnt++)
						{
							ReplyData.ReplyOpt[TempCnt]	= 0x00;
						}
						
						
						//取得Group的数值
						GroupNum	= RcvData.GroupClass >> 4;	
						ClassNum	= RcvData.GroupClass & 0x0F;
						
						
						
						//读取设置指令
						switch (RcvData.RcvOpt[0] & 0x0F)
						{
							//设置开关
							case 0x01:
								{
									if (RcvData.RcvOpt[1] == 0x00)
									{
										if (GroupNum == 0)
										{
											PORT_SWITCH_0	= 0;
										}
										else
										{
											PORT_SWITCH_1	= 0;
										}
									}
									else
									{
										if (GroupNum == 0)
										{
											PORT_SWITCH_0	= 1;
										}
										else
										{
											PORT_SWITCH_1	= 1;
										}
									}
								} break;
								
							//设置开机时间
							case 0x03:
								{
									AllPrgCheckSum[GroupNum]									^= PrgTimer[GroupNum][ClassNum].CheckSum;	//去除此定时计划的校验值
									PrgTimer[GroupNum][ClassNum].CheckSum			^= PrgTimer[GroupNum][ClassNum].OnHour;		//此定时计划除掉开机项后的校验值
									PrgTimer[GroupNum][ClassNum].CheckSum			^= PrgTimer[GroupNum][ClassNum].OnMinute;	//此定时计划计算除掉开机项后的校验值
									PrgTimer[GroupNum][ClassNum].OnHour				 = RcvData.RcvOpt[1];
									PrgTimer[GroupNum][ClassNum].OnMinute			 = RcvData.RcvOpt[2];
									PrgTimer[GroupNum][ClassNum].CheckSum 		^= PrgTimer[GroupNum][ClassNum].OnHour; 
									PrgTimer[GroupNum][ClassNum].CheckSum 		^= PrgTimer[GroupNum][ClassNum].OnMinute;
									AllPrgCheckSum[GroupNum]									^= PrgTimer[GroupNum][ClassNum].CheckSum;	//重加载校验值
									
								} break;
								
							//设置关机时间
							case 0x04:
								{
									AllPrgCheckSum[GroupNum]									^= PrgTimer[GroupNum][ClassNum].CheckSum;	//去除此定时计划的校验值
									PrgTimer[GroupNum][ClassNum].CheckSum			^= PrgTimer[GroupNum][ClassNum].OffHour;		//此定时计划除掉开机项后的校验值
									PrgTimer[GroupNum][ClassNum].CheckSum			^= PrgTimer[GroupNum][ClassNum].OffMinute;	//此定时计划计算除掉开机项后的校验值
									PrgTimer[GroupNum][ClassNum].OnHour				 = RcvData.RcvOpt[1];
									PrgTimer[GroupNum][ClassNum].OnMinute			 = RcvData.RcvOpt[2];
									PrgTimer[GroupNum][ClassNum].CheckSum 		^= PrgTimer[GroupNum][ClassNum].OffHour; 
									PrgTimer[GroupNum][ClassNum].CheckSum 		^= PrgTimer[GroupNum][ClassNum].OffMinute;
									AllPrgCheckSum[GroupNum]									^= PrgTimer[GroupNum][ClassNum].CheckSum;	//重加载校验值
								} break;
								
							//设置实时时钟
							case 0x05:
								{
									RealTime.Hour		=	RcvData.RcvOpt[1];
									RealTime.Minute	= RcvData.RcvOpt[2];
									RealTime.Hour		= RcvData.RcvOpt[3];
								} break;
								
							//其他指令视为无效	
							default:
								{
									ReplyData.ReplyNum	= 0;			//此时不回复任何数据
								} break;		
						}//读取设置指令
		
				} break;
				
				
				
				
				
			// APP发送的其他指令不作任何处理
			default:
				{
					asm("nop");
				} break;
				
				
		}/* ## 指令字判断 ## */		               
  } //接收到数据
}
