CHIP SN8P2501D
EXTERN DATA X
EXTERN DATA H
EXTERN DATA L
EXTERN DATA T
EXTERN DATA I
.CODE
.stabs "lcc4_compiled.",0x3C,0,0,0
.stabs "H:\�̰�\ShowHome\ShowHomeZwave\ZW-1103������������������\DT50/",0x64,0,3,Ltext0
.stabs ".\Src\beep.c",0x64,0,3,Ltext0
Ltext0:
.stabs "int:t1=r1;-128;127;",128,0,0,0
.stabs "char:t2=r2;-128;127;",128,0,0,0
.stabs "double:t3=r1;4;0;",128,0,0,0
.stabs "float:t4=r1;4;0;",128,0,0,0
.stabs "long double:t5=r1;4;0;",128,0,0,0
.stabs "long int:t6=r1;-32768;32767;",128,0,0,0
.stabs "long long int:t7=r1;-2147483648;2147483647;",128,0,0,0
.stabs "signed char:t8=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t9=r1;0;255;",128,0,0,0
.stabs "unsigned long:t10=r1;0;65535;",128,0,0,0
.stabs "unsigned long long:t11=r1;0;4294967295;",128,0,0,0
.stabs "unsigned int:t12=r1;0;255;",128,0,0,0
.stabs "void:t13=13",128,0,0,0
.stabs "bit:t14",128,0,0,0
.stabs ":t300=L16:0",128,0,0,0
.stabs ":t301=L16:1",128,0,0,0
.stabs ":t302=L16:2",128,0,0,0
.stabs ":t303=L16:3",128,0,0,0
.stabs ":t304=L16:4",128,0,0,0
.stabs ":t305=L16:5",128,0,0,0
.stabs ":t306=L16:6",128,0,0,0
.stabs ":t307=L16:7",128,0,0,0
.stabs ":t308=ar1;0;9;1",128,0,0,0
PUBLIC _BeepSound_arg@0
PUBLIC _BeepSound_arg@1
PUBLIC _BeepPulseControl
PUBLIC _pulseActiveFlag
PUBLIC _timeDelay3
_timeDelay3@segment SEGMENT DATA INBANK
	_timeDelay3 DS 1
PUBLIC _timeDelay2
_timeDelay2@segment SEGMENT DATA INBANK
	_timeDelay2 DS 1
PUBLIC _timeDelay1
_timeDelay1@segment SEGMENT DATA INBANK
	_timeDelay1 DS 1
PUBLIC _pulseCnt3
_pulseCnt3@segment SEGMENT DATA INBANK
	_pulseCnt3 DS 1
PUBLIC _pulseCnt2
_pulseCnt2@segment SEGMENT DATA INBANK
	_pulseCnt2 DS 1
PUBLIC _pulseCnt1
_pulseCnt1@segment SEGMENT DATA INBANK
	_pulseCnt1 DS 1
PUBLIC _beepCnt4
_beepCnt4@segment SEGMENT DATA INBANK
	_beepCnt4 DS 1
PUBLIC _beepCnt3
_beepCnt3@segment SEGMENT DATA INBANK
	_beepCnt3 DS 1
PUBLIC _beepCnt2
_beepCnt2@segment SEGMENT DATA INBANK
	_beepCnt2 DS 1
PUBLIC _beepCnt1
_beepCnt1@segment SEGMENT DATA INBANK
	_beepCnt1 DS 1
EXTERN DATA_BIT _flagWarningInit
EXTERN DATA_BIT _flagProtectOff
EXTERN DATA_BIT _flagProtectOn
EXTERN DATA_BIT _flagProtect
EXTERN DATA_BIT _flagKeyTrigger
EXTERN DATA_BIT _out_enable
PUBLIC _timeDelayFlag
PUBLIC _beepActiveFlag
PUBLIC _delayInitFlag
PUBLIC _beepInitFlag
EXTERN DATA_BIT _power_save_enable
_beep_c_GlobalBitDataPool0 BITSEGMENT DATA BANK 0 INBANK
	_pulseActiveFlag DSBIT 1
	_timeDelayFlag DSBIT 1
	_beepActiveFlag DSBIT 1
	_delayInitFlag DSBIT 1
	_beepInitFlag DSBIT 1
_Function_PulseOutput_data SEGMENT DATA INBANK
_Function_TimeDelay10s_data SEGMENT DATA INBANK
_Function_BeepSound_data SEGMENT DATA INBANK
	_BeepSound_arg@0 DS 1
	_BeepSound_arg@1 DS 1
_Function_BeepPulseControl_data SEGMENT DATA INBANK
_VirtualReg SEGMENT DATA BANK 0 INBANK COMMON
	W0 DS 1
.stabs "R:G12",32,0,0,0x82
.stabs "Z:G12",32,0,0,0x83
.stabs "Y:G12",32,0,0,0x84
.stabs "PFLAG:G12",32,0,0,0x86
.stabs "FZ:G300",32,0,0,0x86
.stabs "FDC:G301",32,0,0,0x86
.stabs "FC:G302",32,0,0,0x86
.stabs "FLVD24:G304",32,0,0,0x86
.stabs "FLVD36:G305",32,0,0,0x86
.stabs "FNPD:G306",32,0,0,0x86
.stabs "FNT0:G307",32,0,0,0x86
.stabs "P0M:G12",32,0,0,0xB8
.stabs "FP00M:G300",32,0,0,0xB8
.stabs "PEDGE:G12",32,0,0,0xBF
.stabs "FP00G1:G304",32,0,0,0xBF
.stabs "FP00G0:G303",32,0,0,0xBF
.stabs "P1W:G12",32,0,0,0xC0
.stabs "P1M:G12",32,0,0,0xC1
.stabs "FP10M:G300",32,0,0,0xC1
.stabs "FP12M:G302",32,0,0,0xC1
.stabs "FP13M:G303",32,0,0,0xC1
.stabs "P2M:G12",32,0,0,0xC2
.stabs "FP20M:G300",32,0,0,0xC2
.stabs "FP21M:G301",32,0,0,0xC2
.stabs "FP22M:G302",32,0,0,0xC2
.stabs "FP23M:G303",32,0,0,0xC2
.stabs "FP24M:G304",32,0,0,0xC2
.stabs "FP25M:G305",32,0,0,0xC2
.stabs "P5M:G12",32,0,0,0xC5
.stabs "FP54M:G304",32,0,0,0xC5
.stabs "INTRQ:G12",32,0,0,0xC8
.stabs "FP00IRQ:G300",32,0,0,0xC8
.stabs "FT0IRQ:G304",32,0,0,0xC8
.stabs "FTC0IRQ:G305",32,0,0,0xC8
.stabs "INTEN:G12",32,0,0,0xC9
.stabs "FP00IEN:G300",32,0,0,0xC9
.stabs "FT0IEN:G304",32,0,0,0xC9
.stabs "FTC0IEN:G305",32,0,0,0xC9
.stabs "OSCM:G12",32,0,0,0xCA
.stabs "FCPUM1:G304",32,0,0,0xCA
.stabs "FCPUM0:G303",32,0,0,0xCA
.stabs "FCLKMD:G302",32,0,0,0xCA
.stabs "FSTPHX:G301",32,0,0,0xCA
.stabs "WDTR:G12",32,0,0,0xCC
.stabs "TC0R:G12",32,0,0,0xCD
.stabs "PCL:G12",32,0,0,0xCE
.stabs "PCH:G12",32,0,0,0xCF
.stabs "P0:G12",32,0,0,0xD0
.stabs "FP00:G300",32,0,0,0xD0
.stabs "P1:G12",32,0,0,0xD1
.stabs "FP10:G300",32,0,0,0xD1
.stabs "FP11:G301",32,0,0,0xD1
.stabs "FP12:G302",32,0,0,0xD1
.stabs "FP13:G303",32,0,0,0xD1
.stabs "P2:G12",32,0,0,0xD2
.stabs "FP20:G300",32,0,0,0xD2
.stabs "FP21:G301",32,0,0,0xD2
.stabs "FP22:G302",32,0,0,0xD2
.stabs "FP23:G303",32,0,0,0xD2
.stabs "FP24:G304",32,0,0,0xD2
.stabs "FP25:G305",32,0,0,0xD2
.stabs "P5:G12",32,0,0,0xD5
.stabs "FP54:G304",32,0,0,0xD5
.stabs "T0M:G12",32,0,0,0xD8
.stabs "FT0TB:G300",32,0,0,0xD8
.stabs "FT0RATE0:G304",32,0,0,0xD8
.stabs "FT0RATE1:G305",32,0,0,0xD8
.stabs "FT0RATE2:G306",32,0,0,0xD8
.stabs "FT0ENB:G307",32,0,0,0xD8
.stabs "T0C:G12",32,0,0,0xD9
.stabs "TC0M:G12",32,0,0,0xDA
.stabs "FTC0ENB:G307",32,0,0,0xDA
.stabs "FTC0RATE2:G306",32,0,0,0xDA
.stabs "FTC0RATE1:G305",32,0,0,0xDA
.stabs "FTC0RATE0:G304",32,0,0,0xDA
.stabs "FTC0CKS:G303",32,0,0,0xDA
.stabs "FALOAD0:G302",32,0,0,0xDA
.stabs "FTC0OUT:G301",32,0,0,0xDA
.stabs "FPWM0OUT:G300",32,0,0,0xDA
.stabs "TC0C:G12",32,0,0,0xDB
.stabs "STKP:G12",32,0,0,0xDF
.stabs "FGIE:G307",32,0,0,0xDF
.stabs "FSTKPB1:G301",32,0,0,0xDF
.stabs "FSTKPB0:G300",32,0,0,0xDF
.stabs "P0UR:G12",32,0,0,0xE0
.stabs "FP00R:G300",32,0,0,0xE0
.stabs "P1UR:G12",32,0,0,0xE1
.stabs "FP10R:G300",32,0,0,0xE1
.stabs "FP12R:G302",32,0,0,0xE1
.stabs "FP13R:G303",32,0,0,0xE1
.stabs "P2UR:G12",32,0,0,0xE2
.stabs "FP20R:G300",32,0,0,0xE2
.stabs "FP21R:G301",32,0,0,0xE2
.stabs "FP22R:G302",32,0,0,0xE2
.stabs "FP23R:G303",32,0,0,0xE2
.stabs "FP24R:G304",32,0,0,0xE2
.stabs "FP25R:G305",32,0,0,0xE2
.stabs "P5UR:G12",32,0,0,0xE5
.stabs "FP54R:G304",32,0,0,0xE5
.stabs "_YZ:G12",32,0,0,0xE7
.stabs "P1OC:G12",32,0,0,0xE9
.stabs "STK3L:G12",32,0,0,0xF8
.stabs "STK3H:G12",32,0,0,0xF9
.stabs "STK2L:G12",32,0,0,0xFA
.stabs "STK2H:G12",32,0,0,0xFB
.stabs "STK1L:G12",32,0,0,0xFC
.stabs "STK1H:G12",32,0,0,0xFD
.stabs "STK0L:G12",32,0,0,0xFE
.stabs "STK0H:G12",32,0,0,0xFF
.stabs "PulseOutput:f14",36,0,0,_PulseOutput
_Function_PulseOutput_code SEGMENT CODE INBANK USING _Function_PulseOutput_data
_PulseOutput:
.stabn 0xC0,0,0,L10-_PulseOutput
L10:
.stabn 0x44,0,24,L11-_PulseOutput
L11:
 .stabn 0x44,0,25,L12-_PulseOutput
L12:
	B0BTS0 0xD1.2
	JMP L2
.stabn 0x44,0,26,L13-_PulseOutput
L13:
	BSET _out_enable
L2:
.stabn 0x44,0,28,L14-_PulseOutput
L14:
	B0BSET 0xD1.2
.stabn 0x44,0,29,L15-_PulseOutput
L15:
	INCMS _pulseCnt1
	NOP
.stabn 0x44,0,31,L16-_PulseOutput
L16:
	MOV A, _pulseCnt1
	CMPRS A, #0xbd
	B0BTS1	134.2
	JMP	L4
.stabn 0xC0,0,1,L17-_PulseOutput
L17:
.stabn 0x44,0,32,L18-_PulseOutput
L18:
 .stabn 0x44,0,33,L19-_PulseOutput
L19:
	CLR _pulseCnt1
.stabn 0x44,0,34,L20-_PulseOutput
L20:
	INCMS _pulseCnt2
	NOP
.stabn 0x44,0,35,L21-_PulseOutput
L21:
	MOV A, _pulseCnt2
	CMPRS A, #0x27
	B0BTS1	134.2
	JMP	L6
.stabn 0xC0,0,2,L22-_PulseOutput
L22:
.stabn 0x44,0,36,L23-_PulseOutput
L23:
 .stabn 0x44,0,37,L24-_PulseOutput
L24:
	CLR _pulseCnt2
.stabn 0x44,0,38,L25-_PulseOutput
L25:
	INCMS _pulseCnt3
	NOP
.stabn 0x44,0,39,L26-_PulseOutput
L26:
	MOV A, _pulseCnt3
	CMPRS A, #0x09
	B0BTS1	134.2
	JMP	L8
.stabn 0xC0,0,3,L27-_PulseOutput
L27:
.stabn 0x44,0,40,L28-_PulseOutput
L28:
 .stabn 0x44,0,41,L29-_PulseOutput
L29:
	CLR _pulseCnt3
.stabn 0x44,0,42,L30-_PulseOutput
L30:
	B0BCLR 0xD1.2
.stabn 0x44,0,43,L31-_PulseOutput
L31:
	BSET _out_enable
.stabn 0x44,0,44,L32-_PulseOutput
L32:
	MOV A, #0x01
	JMP L1
.stabn 0xE0,0,3,L33-_PulseOutput
L33:
.stabn 0x44,0,45,L34-_PulseOutput
L34:
L8:
.stabn 0xE0,0,2,L35-_PulseOutput
L35:
.stabn 0x44,0,46,L36-_PulseOutput
L36:
L6:
.stabn 0xE0,0,1,L37-_PulseOutput
L37:
.stabn 0x44,0,47,L38-_PulseOutput
L38:
L4:
.stabn 0x44,0,49,L39-_PulseOutput
L39:
	MOV A, #0x00
.stabn 0xE0,0,0,L40-_PulseOutput
L40:
.stabn 0x44,0,50,L41-_PulseOutput
L41:
L1:
	RET
.stabs "TimeDelay10s:f14",36,0,0,_TimeDelay10s
_Function_TimeDelay10s_code SEGMENT CODE INBANK USING _Function_TimeDelay10s_data
_TimeDelay10s:
.stabn 0xC0,0,0,L51-_TimeDelay10s
L51:
.stabn 0x44,0,56,L52-_TimeDelay10s
L52:
 .stabn 0x44,0,57,L53-_TimeDelay10s
L53:
	BTS1 _delayInitFlag
	JMP L43
.stabn 0xC0,0,1,L54-_TimeDelay10s
L54:
.stabn 0x44,0,58,L55-_TimeDelay10s
L55:
 .stabn 0x44,0,59,L56-_TimeDelay10s
L56:
	BCLR _delayInitFlag
.stabn 0x44,0,60,L57-_TimeDelay10s
L57:
	BCLR _timeDelayFlag
.stabn 0x44,0,61,L58-_TimeDelay10s
L58:
	CLR _timeDelay1
.stabn 0x44,0,62,L59-_TimeDelay10s
L59:
	CLR _timeDelay2
.stabn 0x44,0,63,L60-_TimeDelay10s
L60:
	CLR _timeDelay3
.stabn 0xE0,0,1,L61-_TimeDelay10s
L61:
.stabn 0x44,0,64,L62-_TimeDelay10s
L62:
L43:
.stabn 0x44,0,65,L63-_TimeDelay10s
L63:
	INCMS _timeDelay1
	NOP
.stabn 0x44,0,66,L64-_TimeDelay10s
L64:
	MOV A, _timeDelay1
	CMPRS A, #0xbd
	B0BTS1	134.2
	JMP	L45
.stabn 0xC0,0,1,L65-_TimeDelay10s
L65:
.stabn 0x44,0,67,L66-_TimeDelay10s
L66:
 .stabn 0x44,0,68,L67-_TimeDelay10s
L67:
	CLR _timeDelay1
.stabn 0x44,0,69,L68-_TimeDelay10s
L68:
	INCMS _timeDelay2
	NOP
.stabn 0x44,0,70,L69-_TimeDelay10s
L69:
	MOV A, _timeDelay2
	CMPRS A, #0x27
	B0BTS1	134.2
	JMP	L47
.stabn 0xC0,0,2,L70-_TimeDelay10s
L70:
.stabn 0x44,0,71,L71-_TimeDelay10s
L71:
 .stabn 0x44,0,72,L72-_TimeDelay10s
L72:
	CLR _timeDelay2
.stabn 0x44,0,73,L73-_TimeDelay10s
L73:
	INCMS _timeDelay3
	NOP
.stabn 0x44,0,74,L74-_TimeDelay10s
L74:
	MOV A, _timeDelay3
	CMPRS A, #0x09
	B0BTS1	134.2
	JMP	L49
.stabn 0xC0,0,3,L75-_TimeDelay10s
L75:
.stabn 0x44,0,75,L76-_TimeDelay10s
L76:
 .stabn 0x44,0,76,L77-_TimeDelay10s
L77:
	CLR _timeDelay3
.stabn 0x44,0,77,L78-_TimeDelay10s
L78:
	MOV A, #0x01
	JMP L42
.stabn 0xE0,0,3,L79-_TimeDelay10s
L79:
.stabn 0x44,0,78,L80-_TimeDelay10s
L80:
L49:
.stabn 0xE0,0,2,L81-_TimeDelay10s
L81:
.stabn 0x44,0,79,L82-_TimeDelay10s
L82:
L47:
.stabn 0xE0,0,1,L83-_TimeDelay10s
L83:
.stabn 0x44,0,80,L84-_TimeDelay10s
L84:
L45:
.stabn 0x44,0,82,L85-_TimeDelay10s
L85:
	MOV A, #0x00
.stabn 0xE0,0,0,L86-_TimeDelay10s
L86:
.stabn 0x44,0,83,L87-_TimeDelay10s
L87:
L42:
	RET
.stabs "BeepSound:f14",36,0,0,_BeepSound
_Function_BeepSound_code SEGMENT CODE INBANK USING _Function_BeepSound_data
_BeepSound:
.stabs "soundCnt:p9",160,0,0,_BeepSound_arg@0
.stabs "soundLastTime:p9",160,0,0,_BeepSound_arg@1
.stabn 0xC0,0,0,L101-_BeepSound
L101:
.stabn 0x44,0,90,L102-_BeepSound
L102:
 .stabn 0x44,0,91,L103-_BeepSound
L103:
	BTS1 _beepInitFlag
	JMP L89
.stabn 0xC0,0,1,L104-_BeepSound
L104:
.stabn 0x44,0,92,L105-_BeepSound
L105:
 .stabn 0x44,0,93,L106-_BeepSound
L106:
	BCLR _beepInitFlag
.stabn 0x44,0,94,L107-_BeepSound
L107:
	CLR _beepCnt1
.stabn 0x44,0,95,L108-_BeepSound
L108:
	CLR _beepCnt2
.stabn 0x44,0,96,L109-_BeepSound
L109:
	CLR _beepCnt3
.stabn 0x44,0,97,L110-_BeepSound
L110:
	CLR _beepCnt4
.stabn 0x44,0,98,L111-_BeepSound
L111:
	BCLR _beepActiveFlag
.stabn 0xE0,0,1,L112-_BeepSound
L112:
.stabn 0x44,0,99,L113-_BeepSound
L113:
L89:
.stabn 0x44,0,100,L114-_BeepSound
L114:
	INCMS _beepCnt1
	NOP
.stabn 0x44,0,103,L115-_BeepSound
L115:
	MOV A, _beepCnt3
	SUB A, _BeepSound_arg@1
	b0bts0	134.2
	JMP	L91
.stabn 0x44,0,104,L116-_BeepSound
L116:
	MOV A, #0x00
	B0BTS0 0xD1.3
	MOV A, #0x01
	B0BSET 0xD1.3
	CMPRS A, #0x00
	B0BCLR 0xD1.3
	JMP L92
L91:
.stabn 0x44,0,106,L117-_BeepSound
L117:
	B0BCLR 0xD1.3
L92:
.stabn 0x44,0,109,L118-_BeepSound
L118:
	MOV A, _beepCnt1
	CMPRS A, #0x97
	B0BTS1	134.2
	JMP	L93
.stabn 0xC0,0,1,L119-_BeepSound
L119:
.stabn 0x44,0,110,L120-_BeepSound
L120:
 .stabn 0x44,0,111,L121-_BeepSound
L121:
	CLR _beepCnt1
.stabn 0x44,0,112,L122-_BeepSound
L122:
	INCMS _beepCnt2
	NOP
.stabn 0x44,0,113,L123-_BeepSound
L123:
	MOV A, _beepCnt2
	CMPRS A, #0x02
	B0BTS1	134.2
	JMP	L95
.stabn 0xC0,0,2,L124-_BeepSound
L124:
.stabn 0x44,0,114,L125-_BeepSound
L125:
 .stabn 0x44,0,115,L126-_BeepSound
L126:
	CLR _beepCnt2
.stabn 0x44,0,116,L127-_BeepSound
L127:
	INCMS _beepCnt3
	NOP
.stabn 0x44,0,117,L128-_BeepSound
L128:
	MOV A, _BeepSound_arg@1
	B0MOV W0, A
	B0BCLR 134.2
	RLCM W0
	MOV A, _beepCnt3
	CMPRS A, W0
	B0BTS1	134.2
	JMP	L97
.stabn 0xC0,0,3,L129-_BeepSound
L129:
.stabn 0x44,0,118,L130-_BeepSound
L130:
 .stabn 0x44,0,119,L131-_BeepSound
L131:
	CLR _beepCnt3
.stabn 0x44,0,120,L132-_BeepSound
L132:
	INCMS _beepCnt4
	NOP
.stabn 0x44,0,121,L133-_BeepSound
L133:
	MOV A, _beepCnt4
	CMPRS A, _BeepSound_arg@0
	JMP L99
.stabn 0xC0,0,4,L134-_BeepSound
L134:
.stabn 0x44,0,122,L135-_BeepSound
L135:
 .stabn 0x44,0,123,L136-_BeepSound
L136:
	CLR _beepCnt4
.stabn 0x44,0,125,L137-_BeepSound
L137:
	MOV A, #0x01
	JMP L88
.stabn 0xE0,0,4,L138-_BeepSound
L138:
.stabn 0x44,0,126,L139-_BeepSound
L139:
L99:
.stabn 0xE0,0,3,L140-_BeepSound
L140:
.stabn 0x44,0,127,L141-_BeepSound
L141:
L97:
.stabn 0xE0,0,2,L142-_BeepSound
L142:
.stabn 0x44,0,128,L143-_BeepSound
L143:
L95:
.stabn 0xE0,0,1,L144-_BeepSound
L144:
.stabn 0x44,0,129,L145-_BeepSound
L145:
L93:
.stabn 0x44,0,131,L146-_BeepSound
L146:
	MOV A, #0x00
.stabn 0xE0,0,0,L147-_BeepSound
L147:
.stabn 0x44,0,132,L148-_BeepSound
L148:
L88:
	RET
.stabs "BeepPulseControl:F13",36,0,0,_BeepPulseControl
_Function_BeepPulseControl_code SEGMENT CODE INBANK USING _Function_BeepPulseControl_data
_BeepPulseControl:
.stabn 0xC0,0,0,L174-_BeepPulseControl
L174:
.stabn 0x44,0,139,L175-_BeepPulseControl
L175:
 .stabn 0x44,0,140,L176-_BeepPulseControl
L176:
	BTS1 _flagWarningInit
	JMP L150
.stabn 0xC0,0,1,L177-_BeepPulseControl
L177:
.stabn 0x44,0,141,L178-_BeepPulseControl
L178:
 .stabn 0x44,0,142,L179-_BeepPulseControl
L179:
	BCLR _flagWarningInit
.stabn 0x44,0,143,L180-_BeepPulseControl
L180:
	BCLR _pulseActiveFlag
.stabn 0x44,0,144,L181-_BeepPulseControl
L181:
	CLR _pulseCnt1
.stabn 0x44,0,145,L182-_BeepPulseControl
L182:
	CLR _pulseCnt2
.stabn 0x44,0,146,L183-_BeepPulseControl
L183:
	CLR _pulseCnt3
.stabn 0xE0,0,1,L184-_BeepPulseControl
L184:
.stabn 0x44,0,147,L185-_BeepPulseControl
L185:
L150:
.stabn 0x44,0,149,L186-_BeepPulseControl
L186:
	BTS1 _flagProtect
	JMP L152
.stabn 0xC0,0,1,L187-_BeepPulseControl
L187:
.stabn 0x44,0,150,L188-_BeepPulseControl
L188:
 .stabn 0x44,0,151,L189-_BeepPulseControl
L189:
	BTS1 _flagProtectOn
	JMP L154
.stabn 0xC0,0,2,L190-_BeepPulseControl
L190:
.stabn 0x44,0,152,L191-_BeepPulseControl
L191:
 .stabn 0x44,0,153,L192-_BeepPulseControl
L192:
	BSET _power_save_enable
.stabn 0x44,0,154,L193-_BeepPulseControl
L193:
	B0BCLR 0xD1.2
.stabn 0x44,0,155,L194-_BeepPulseControl
L194:
	BTS0 _beepActiveFlag
	JMP L156
.stabn 0x44,0,156,L195-_BeepPulseControl
L195:
	MOV A, #0x0c
	MOV _BeepSound_arg@1, A
	MOV A, #0x01
	MOV _BeepSound_arg@0, A
	CALL _BeepSound
	BCLR _beepActiveFlag
	CMPRS A, #0x00
	BSET _beepActiveFlag
	JMP L153
L156:
.stabn 0xC0,0,3,L196-_BeepPulseControl
L196:
.stabn 0x44,0,158,L197-_BeepPulseControl
L197:
 .stabn 0x44,0,159,L198-_BeepPulseControl
L198:
	BCLR _flagProtectOn
.stabn 0x44,0,160,L199-_BeepPulseControl
L199:
	BCLR _beepActiveFlag
.stabn 0xE0,0,3,L200-_BeepPulseControl
L200:
.stabn 0x44,0,161,L201-_BeepPulseControl
L201:
 .stabn 0xE0,0,2,L202-_BeepPulseControl
L202:
.stabn 0x44,0,162,L203-_BeepPulseControl
L203:
	JMP L153
L154:
.stabn 0x44,0,163,L204-_BeepPulseControl
L204:
	BTS1 _flagKeyTrigger
	JMP L153
.stabn 0xC0,0,2,L205-_BeepPulseControl
L205:
.stabn 0x44,0,164,L206-_BeepPulseControl
L206:
 .stabn 0x44,0,165,L207-_BeepPulseControl
L207:
	BSET _power_save_enable
.stabn 0x44,0,166,L208-_BeepPulseControl
L208:
	BTS0 _beepActiveFlag
	JMP L160
.stabn 0x44,0,167,L209-_BeepPulseControl
L209:
	MOV A, #0x07
	MOV _BeepSound_arg@1, A
	MOV A, #0x05
	MOV _BeepSound_arg@0, A
	CALL _BeepSound
	BCLR _beepActiveFlag
	CMPRS A, #0x00
	BSET _beepActiveFlag
	JMP L161
L160:
.stabn 0xC0,0,3,L210-_BeepPulseControl
L210:
.stabn 0x44,0,169,L211-_BeepPulseControl
L211:
 .stabn 0x44,0,170,L212-_BeepPulseControl
L212:
	BTS0 _timeDelayFlag
	JMP L162
.stabn 0x44,0,171,L213-_BeepPulseControl
L213:
	CALL _TimeDelay10s
	BCLR _timeDelayFlag
	CMPRS A, #0x00
	BSET _timeDelayFlag
	JMP L163
L162:
.stabn 0xC0,0,4,L214-_BeepPulseControl
L214:
.stabn 0x44,0,173,L215-_BeepPulseControl
L215:
 .stabn 0x44,0,174,L216-_BeepPulseControl
L216:
	BCLR _timeDelayFlag
.stabn 0x44,0,175,L217-_BeepPulseControl
L217:
	BCLR _beepActiveFlag
.stabn 0xE0,0,4,L218-_BeepPulseControl
L218:
.stabn 0x44,0,176,L219-_BeepPulseControl
L219:
L163:
.stabn 0xE0,0,3,L220-_BeepPulseControl
L220:
.stabn 0x44,0,177,L221-_BeepPulseControl
L221:
L161:
.stabn 0x44,0,179,L222-_BeepPulseControl
L222:
	BTS0 _pulseActiveFlag
	JMP L164
.stabn 0x44,0,180,L223-_BeepPulseControl
L223:
	CALL _PulseOutput
	BCLR _pulseActiveFlag
	CMPRS A, #0x00
	BSET _pulseActiveFlag
	JMP L153
L164:
.stabn 0xC0,0,3,L224-_BeepPulseControl
L224:
.stabn 0x44,0,182,L225-_BeepPulseControl
L225:
 .stabn 0x44,0,183,L226-_BeepPulseControl
L226:
	BTS1 _beepActiveFlag
	JMP L153
.stabn 0xC0,0,4,L227-_BeepPulseControl
L227:
.stabn 0x44,0,184,L228-_BeepPulseControl
L228:
 .stabn 0x44,0,185,L229-_BeepPulseControl
L229:
	BCLR _beepActiveFlag
.stabn 0x44,0,186,L230-_BeepPulseControl
L230:
	BCLR _pulseActiveFlag
.stabn 0x44,0,187,L231-_BeepPulseControl
L231:
	BCLR _flagKeyTrigger
.stabn 0x44,0,188,L232-_BeepPulseControl
L232:
	CLR _timeDelay1
.stabn 0x44,0,189,L233-_BeepPulseControl
L233:
	CLR _timeDelay2
.stabn 0x44,0,190,L234-_BeepPulseControl
L234:
	CLR _timeDelay3
.stabn 0xE0,0,4,L235-_BeepPulseControl
L235:
.stabn 0x44,0,191,L236-_BeepPulseControl
L236:
 .stabn 0xE0,0,3,L237-_BeepPulseControl
L237:
.stabn 0x44,0,192,L238-_BeepPulseControl
L238:
 .stabn 0xE0,0,2,L239-_BeepPulseControl
L239:
.stabn 0x44,0,193,L240-_BeepPulseControl
L240:
 .stabn 0xE0,0,1,L241-_BeepPulseControl
L241:
.stabn 0x44,0,195,L242-_BeepPulseControl
L242:
	JMP L153
L152:
.stabn 0xC0,0,1,L243-_BeepPulseControl
L243:
.stabn 0x44,0,197,L244-_BeepPulseControl
L244:
 .stabn 0x44,0,198,L245-_BeepPulseControl
L245:
	BTS1 _flagProtectOff
	JMP L168
.stabn 0xC0,0,2,L246-_BeepPulseControl
L246:
.stabn 0x44,0,199,L247-_BeepPulseControl
L247:
 .stabn 0x44,0,200,L248-_BeepPulseControl
L248:
	BSET _power_save_enable
.stabn 0x44,0,201,L249-_BeepPulseControl
L249:
	B0BCLR 0xD1.2
.stabn 0x44,0,202,L250-_BeepPulseControl
L250:
	BTS0 _beepActiveFlag
	JMP L170
.stabn 0x44,0,203,L251-_BeepPulseControl
L251:
	MOV A, #0x0a
	MOV _BeepSound_arg@1, A
	MOV A, #0x02
	MOV _BeepSound_arg@0, A
	CALL _BeepSound
	BCLR _beepActiveFlag
	CMPRS A, #0x00
	BSET _beepActiveFlag
	JMP L171
L170:
.stabn 0xC0,0,3,L252-_BeepPulseControl
L252:
.stabn 0x44,0,205,L253-_BeepPulseControl
L253:
 .stabn 0x44,0,206,L254-_BeepPulseControl
L254:
	BTS0 _timeDelayFlag
	JMP L172
.stabn 0x44,0,207,L255-_BeepPulseControl
L255:
	CALL _TimeDelay10s
	BCLR _timeDelayFlag
	CMPRS A, #0x00
	BSET _timeDelayFlag
	JMP L173
L172:
.stabn 0xC0,0,4,L256-_BeepPulseControl
L256:
.stabn 0x44,0,209,L257-_BeepPulseControl
L257:
 .stabn 0x44,0,210,L258-_BeepPulseControl
L258:
	BCLR _timeDelayFlag
.stabn 0x44,0,211,L259-_BeepPulseControl
L259:
	BCLR _beepActiveFlag
.stabn 0xE0,0,4,L260-_BeepPulseControl
L260:
.stabn 0x44,0,212,L261-_BeepPulseControl
L261:
L173:
.stabn 0xE0,0,3,L262-_BeepPulseControl
L262:
.stabn 0x44,0,213,L263-_BeepPulseControl
L263:
L171:
.stabn 0xE0,0,2,L264-_BeepPulseControl
L264:
.stabn 0x44,0,214,L265-_BeepPulseControl
L265:
L168:
.stabn 0xE0,0,1,L266-_BeepPulseControl
L266:
.stabn 0x44,0,215,L267-_BeepPulseControl
L267:
L153:
.stabn 0xE0,0,0,L268-_BeepPulseControl
L268:
.stabn 0x44,0,216,L269-_BeepPulseControl
L269:
L149:
	RET
CALLTREE _BeepPulseControl invoke _BeepSound,_TimeDelay10s,_PulseOutput
.stabs "_intrinsicbitfield:T15=s1bit0:12,0,1;bit1:12,1,1;bit2:12,2,1;\\",128,0,0,0
.stabs "bit3:12,3,1;bit4:12,4,1;bit5:12,5,1;bit6:12,6,1;bit7:12,7,1;;",128,0,0,0
.stabs "", 100, 0, 0,Letext
Letext:
.stabs "pulseActiveFlag:G300",32,0,0,_pulseActiveFlag
.stabs "timeDelay3:G9",32,0,0,_timeDelay3
.stabs "timeDelay2:G9",32,0,0,_timeDelay2
.stabs "timeDelay1:G9",32,0,0,_timeDelay1
.stabs "pulseCnt3:G9",32,0,0,_pulseCnt3
.stabs "pulseCnt2:G9",32,0,0,_pulseCnt2
.stabs "pulseCnt1:G9",32,0,0,_pulseCnt1
.stabs "beepCnt4:G9",32,0,0,_beepCnt4
.stabs "beepCnt3:G9",32,0,0,_beepCnt3
.stabs "beepCnt2:G9",32,0,0,_beepCnt2
.stabs "beepCnt1:G9",32,0,0,_beepCnt1
.stabs "timeDelayFlag:G301",32,0,0,_timeDelayFlag
.stabs "beepActiveFlag:G302",32,0,0,_beepActiveFlag
.stabs "delayInitFlag:G303",32,0,0,_delayInitFlag
.stabs "beepInitFlag:G304",32,0,0,_beepInitFlag
