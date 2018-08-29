ifndef __SN8P2711B__INC__H
SN8P2711B__INC__H equ 1
	R	EQU	0x82
	Z	EQU	0x83
	Y	EQU	0x84
	PFLAG	EQU	0x86
		FZ	EQU	PFLAG.0
		FDC	EQU	PFLAG.1
		FC	EQU	PFLAG.2
		FLVD24	EQU	PFLAG.4
		FLVD36	EQU	PFLAG.5
		FNPD	EQU	PFLAG.6
		FNT0	EQU	PFLAG.7
	P4CON	EQU	0xae
	VREFH	EQU	0xaf
		FVHS0	EQU	VREFH.0
		FVHS1	EQU	VREFH.1
		FEVHENB	EQU	VREFH.7
	ADM	EQU	0xB1
		FADENB	EQU	ADM.7
		FADS	EQU	ADM.6
		FEOC	EQU	ADM.5
		FGCHS	EQU	ADM.4
		FCHS2	EQU	ADM.2
		FCHS1	EQU	ADM.1
		FCHS0	EQU	ADM.0
	ADB	EQU	0xb2
	ADR	EQU	0xb3
		FADCKS1	EQU	ADR.6
		FADCKS0	EQU	ADR.4
		FADB3	EQU	ADR.3
		FADB2	EQU	ADR.2
		FADB1	EQU	ADR.1
		FADB0	EQU	ADR.0
	ADT	EQU	0xb4
		FADTS1	EQU	ADT.7
		FADTS0	EQU	ADT.6
		FADT4	EQU	ADT.4
		FADT3	EQU	ADT.3
		FADT2	EQU	ADT.2
		FADT1	EQU	ADT.1
		FADT0	EQU	ADT.0
	P0M	EQU	0xb8
		FP00M	EQU	P0M.0
		FP01M	EQU	P0M.1
		FP02M	EQU	P0M.2
		FP03M	EQU	P0M.3
	PEDGE	EQU	0xbf
		FP00G1	EQU	PEDGE.4
		FP00G0	EQU	PEDGE.3
	P4M	EQU	0xc4
		FP40M	EQU	P4M.0
		FP41M	EQU	P4M.1
		FP42M	EQU	P4M.2
		FP43M	EQU	P4M.3
		FP44M	EQU	P4M.4
	P5M	EQU	0xc5
		FP53M	EQU	P5M.3
		FP54M	EQU	P5M.4
	INTRQ	EQU	0xc8
		FP00IRQ	EQU	INTRQ.0
		FP01IRQ	EQU	INTRQ.1
		FTC0IRQ	EQU	INTRQ.5
		FTC1IRQ	EQU	INTRQ.6
		FADCIRQ	EQU	INTRQ.7
	INTEN	EQU	0xc9
		FP00IEN	EQU	INTEN.0
		FP01IEN	EQU	INTEN.1
		FTC0IEN	EQU	INTEN.5
		FTC1IEN	EQU	INTEN.6
		FADCIEN	EQU	INTEN.7
	OSCM	EQU	0xca
		FCPUM1	EQU	OSCM.4
		FCPUM0	EQU	OSCM.3
		FCLKMD	EQU	OSCM.2
		FSTPHX	EQU	OSCM.1
	WDTR	EQU	0xcc
	PCL	EQU	0xce
	PCH	EQU	0xcf
	P0	EQU	0xd0
		FP00	EQU	P0.0
		FP01	EQU	P0.1
		FP02	EQU	P0.2
		FP03	EQU	P0.3
		FP04	EQU	P0.4
	P4	EQU	0xd4
		FP40	EQU	P4.0
		FP41	EQU	P4.1
		FP42	EQU	P4.2
		FP43	EQU	P4.3
		FP44	EQU	P4.4
	P5	EQU	0xd5
		FP53	EQU	P5.3
		FP54	EQU	P5.4
	T0M	EQU	0xd8
		FTC0GN	EQU	T0M.1
		FTC0X8	EQU	T0M.2
		FTC1X8	EQU	T0M.3
	TC0M	EQU	0xda
		FTC0ENB	EQU	TC0M.7
		FTC0RATE2	EQU	TC0M.6
		FTC0RATE1	EQU	TC0M.5
		FTC0RATE0	EQU	TC0M.4
		FTC0CKS	EQU	TC0M.3
		FALOAD0	EQU	TC0M.2
		FTC0OUT	EQU	TC0M.1
		FPWM0OUT	EQU	TC0M.0
	TC0C	EQU	0xdb
	TC0R	EQU	0xcd
	TC1M	EQU	0xdc
		FTC1ENB	EQU	TC1M.7
		FTC1RATE2	EQU	TC1M.6
		FTC1RATE1	EQU	TC1M.5
		FTC1RATE0	EQU	TC1M.4
		FTC1CKS	EQU	TC1M.3
		FALOAD1	EQU	TC1M.2
		FTC1OUT	EQU	TC1M.1
		FPWM1OUT	EQU	TC1M.0
	TC1C	EQU	0xdd
	TC1R	EQU	0xde
	STKP	EQU	0xdf
		FGIE	EQU	STKP.7
		FSTKPB2	EQU	STKP.2
		FSTKPB1	EQU	STKP.1
		FSTKPB0	EQU	STKP.0
	P0UR	EQU	0xe0
	P4UR	EQU	0xe4
	P5UR	EQU	0xe5
	@YZ	EQU	0xe7
	STK3L	EQU	0xf8
	STK3H	EQU	0xf9
	STK2L	EQU	0xfa
	STK2H	EQU	0xfb
	STK1L	EQU	0xfc
	STK1H	EQU	0xfd
	STK0L	EQU	0xfe
	STK0H	EQU	0xff
@RST_WDT	macro		
 		   MOV  A, #0x5A
		   B0MOV  WDTR, A
	endm

SleepMode	macro	
		B0BSET	FCPUM0
	endm

GreenMode	macro	
		B0BSET	FCPUM1
		NOP
		NOP
	endm

SLowMode	macro	
		B0BSET	FCLKMD
		B0BSET	FSTPHX
	endm

Slow2Normal	macro	
		B0BCLR	FSTPHX
		NOP
		NOP
		NOP
		B0BCLR	FCLKMD
	endm

endif
