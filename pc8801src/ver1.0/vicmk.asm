			ORG	0DA00H		;DE00H���	COMWK:	EQU	0F320H	;���߲� ܰ�į��SUBWK:	EQU	0C400H	;GOSUBֳ ���� (VRAM0�¶�)LOOPSP:	EQU	0F260H  ;ٰ�߽���CURSOR:	EQU	0EF86H	;����ܰ�	MDATA:	EQU	COMWK	;���߲ٻ�� �ް��޵��� ��ݻ޲� ���ڽDATTBL:	EQU	MDATA+4	;��ݻ޲ ���߲���� � MUSIC DATA TABLE TOPOCTAVE:	EQU	DATTBL+2SIFTDAT:EQU	OCTAVE+1CLOCK:	EQU	SIFTDAT+1SECCOM:	EQU	CLOCK+1KOTAE:	EQU	SECCOM+1LINE:	EQU	KOTAE+2ERRLINE:EQU	LINE+2COMNOW:	EQU	ERRLINE+2COUNT:	EQU	COMNOW+1MOJIBUF:EQU	COUNT+1SEC:	EQU	MOJIBUF+4MIN:	EQU	SEC+1HOUR:	EQU	MIN+1ALLSEC:	EQU	HOUR+1T_FLAG:	EQU	ALLSEC+2SE_SET:	EQU	T_FLAG+1VOLINT:	EQU	SE_SET+2FLGADR:	EQU	VOLINT+1ESCAPE:	EQU	FLGADR+1MINUSF:	EQU	ESCAPE+1BEFRST:	EQU	MINUSF+1;��ݶ� �� 'r' �ޱٺĦ�ҽ �׸� �� ����BEFCO:	EQU	BEFRST+1;��ݶ� � ����BEFTONE:EQU	BEFCO+2	;��ݶ� � İ� �ް�TIEFG:	EQU	BEFTONE+9;��ݶ� �� ���ޱٺĦ �ҽCOMNO:	EQU	TIEFG+1	;��ݶ�� ����ޡ İ��ķ� 0ASEMFG:	EQU	COMNO+1VDDAT:	EQU	ASEMFG+1OTONUM:	EQU	VDDAT+1; ¶��ò� �ݼ�� � ���VOLUME:	EQU	OTONUM+1; NOW VOLUMELINKPT:	EQU	VOLUME+1; LINK POINTERENDADR:	EQU	LINKPT+2OCTINT:	EQU	ENDADR+2	MWRITE:	EQU	9000HMWRIT2:	EQU	MWRITE+3ERRT:	EQU	MWRIT2+3ERRSN:EQU	ERRT+3ERRIF:EQU	ERRSN+3ERRNF:EQU	ERRIF+3ERRFN:EQU	ERRNF+3ERRVF:EQU	ERRFN+3ERROO:EQU	ERRVF+3ERRND:EQU	ERROO+3ERRRJ:EQU	ERRND+3STTONE:	EQU	ERRRJ+3STLIZM:	EQU	STTONE+3REDATA:	EQU	STLIZM+3MULT:	EQU	REDATA+3DIV:	EQU	MULT+3HEXDEC:	EQU	DIV+3HEXPRT:	EQU	HEXDEC+3ROM:	EQU	HEXPRT+3RAM:	EQU	ROM+3FMCOMC:	EQU	RAM+3T_RST:	EQU	FMCOMC+3ERRNE:EQU	T_RST+3ERRDC:EQU	ERRNE+3ERRML:EQU	ERRDC+3MCMP:	EQU	ERRML+3ERRVO:EQU	MCMP+3ERRMD:EQU	ERRVO+3ERRNMC:	EQU	ERRMD+3*5ERREMC:	EQU	ERRNMC+3	MSTART:	EQU	0B000HMSTOP:	EQU	MSTART+3START:	EQU	MSTART+3*6WORKINIT:EQU	START+3AKYOFF:	EQU	START+3*2SSGOFF:	EQU	START+3*3MONO:	EQU	START+3*4DRIVE:	EQU	START+3*5TO_NML:	EQU	START+3*6WKGET:	EQU	START+3*8STVOL:	EQU	START+3*9ENBL:	EQU	START+3*10INFADR:	EQU	START+3*12	MU_NUM:	EQU	0C200H	;���߲���� � MUSIC���ްOTODAT:	EQU	MU_NUM+1;FM�ݼ�� �� ��ɳ��� ���ڽį�� �� ʲ�ò�SSGDAT:	EQU	MU_NUM+3;SSG...MU_TOP:	EQU	MU_NUM+5; Э��ޯ� �ް� (���ڽð��� ̸�) ���� ���ڽMAXCHN:	EQU	11	; ¶��� �ݹ�ݽ� � MAXFMLIB:EQU	6000H	; �ݼ��ײ���� ���ڽSSGLIB:	EQU	5E00H	CLS1:	EQU	05F0EHKBD:	EQU	09A00HDSPMSG:	EQU	0AB00HFOUND:	EQU	DSPMSG+3PRNFAC:	EQU	FOUND+3FVTEXT:	EQU	PRNFAC+3COLOR:	EQU	FVTEXT+3REPLACE:EQU	COLOR+6CULPTM:	EQU	REPLACE+3	PRNWK:	EQU	0DE00HPRNWKI:	EQU	PRNWK+3CONVERT:EQU	PRNWK+3*2CONVERT2:EQU	PRNWK+3*3GETPARA:EQU	PRNWK+3*4OPEX:	EQU	PRNWK+3*5OTOWK:	EQU	8B00H+60H+60H	;25BYTE�ް��� ʲ�ĺ�PARAM:	EQU	OTOWK+32	;38BYTE�ް���ʲ�ĺ�TEXT:	EQU	0F3C8H	; -- CLEAR FROM COMPI1	-->	T_CLK:	EQU	08C10HBEFMD:	EQU	T_CLK+4*11+1	;+1���PTMFG:	EQU	BEFMD+2PTMDLY:	EQU	PTMFG+1TONEADR:EQU	PTMDLY+2SPACE:	EQU	TONEADR+2	;2*6BYTE �� �� ��DEFVOICE:EQU	SPACE+2*6DEFVSSG:EQU	DEFVOICE+32JCLOCK:	EQU	DEFVSSG+32JPLINE:	EQU	JCLOCK+2					LD	DE,(MU_NUM+1)	;VOICE START OFFSET	PUSH	DE	LD	HL,(MU_NUM+3)	;VOICE END+1 OFFSET	AND	A	SBC	HL,DE	LD	DE,25	CALL	DIV	LD	B,L		;�ݼ�� � ���	POP	DE	LD	HL,MUS_NUM	ADD	HL,DE		;VOICE START ADRS	MLOOP:	PUSH	BC	PUSH	HL		DEC	HL	CALL	CONVERT2	;25 BYTE->40 BYTE	CALL	PRINT		POP	HL	LD	BC,25	ADD	HL,DE	POP	BC	DJNZ	MLOOP	RET	PRINT:	DI	CALL	RAM	CALL	AUTOMK	;(100 '   )					CALL	ROM	EI	RET				AUTOMK:	LD	HL,1AUTOM1:	LD	E,(HL)	INC	HL	LD	D,(HL)	LD	A,D	OR	E	JR	Z,AUTOM2		INC	HL	LD	C,(HL)	INC	HL	LD	B,(HL)	; BC = LINE No.		EX	DE,HL	JP	AUTOM1	AUTOM2:	DEC	HL	LD	(LINKPT),HL	INC	HL	INC	HL	LD	A,10	ADD	A,C	LD	C,A	ADC	A,B	SUB	C	LD	B,A	LD	(LINENM),BC	LD      (HL),C	INC     HL	LD      (HL),B  ; NEW LINE No.	INC     HL	EX	DE,HL	LD	HL,AUTODT	LD	BC,3	LDIR	EX	DE,HL	LD	(HL),20H	INC	HL	LD	(HL),20H	INC	HL			LD	(HL),0	INC	HL	LD	DE,(LINKPT)	LD	(LINKPT),HL	EX	DE,HL	LD	(HL),E	INC	HL	LD	(HL),D	EX	DE,HL	RET						LD	DE,(LINKPT)	LD	(LINKPT),HL	EX	DE,HL	LD	(HL),E	INC	HL	LD	(HL),D	EX	DE,HL	LD	BC,(LINENM)	JP	AUTOM3	AUTOEX:	LD	(HL),A	INC	HL	XOR	A	LD	(HL),A	INC	HL	LD	DE,(LINKPT)	EX	DE,HL	LD	(HL),E	INC	HL	LD	(HL),D	EX	DE,HL	LD	(HL),A	INC	HL	LD	(HL),A	INC	HL	LD 	(0EB18H),HL		LD	A,'A'	LD	(AUTODT+3),A	CALL	ROM	POP	HL	RET	AUTODT:	DB	03AH,08FH,0E9H,'A'			                                                                                                   