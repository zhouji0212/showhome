#ifndef __DATA_PROCESS_H__
#define __DATA_PROCESS_H__

void APP_Data_Process(void);

/* data_rcv.c */
extern _TypeRcvData	RcvData;
extern _Flag       	RcvStatus;                        //Received status DISABLE | ENABLE

/* data_send.c */
extern _Flag				TypeReply;
extern _TypeReply		ReplyData;
extern _Flag				RepeatFlag;						//重复发送标志位
extern _Uchar   		RepeatCnt;						//回复次数计数参数
extern _Uchar   		RepeatDelayTime;			//回复次数延迟参数


/* timer_program.c */
extern 	_TypeAlarm				PrgTimer[2][10];
extern 	_TypeRealTime			RealTime;
extern	_Uchar						AllPrgCheckSum[2];


/* key_scan.c */
extern _Flag 			KeyShortFlag;



#endif