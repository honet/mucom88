				; --	����� �ݸ	--	EFCSUB:	LD	HL,(OTODAT)	LD	(EFCS4+1),HL	LD	DE,MU_NUM	ADD	HL,DE	PUSH	HL	LD	L,(HL)	LD	H,0	LD	DE,25	CALL	MULT	LD	(EFCS3+1),HL	EX	DE,HL	POP	HL	INC	HL	ADD	HL,DE	LD	(EFCPUT),HL	LD	(EFCPUT+2),HL	;���		LD	HL,T_CLK	;T_CLK�� � ܰ� � ¶�	LD	(ETBADR),HL	XOR	A	LD	(EFCNUM),A	EFCS1:	LD	A,(EFCNUM)	CALL	GETTBL	PUSH	HL		LD	DE,8	ADD	HL,DE	LD	E,(HL)	INC	HL	LD	D,(HL)	INC	HL	INC	HL	INC	HL	LD	A,(HL)	INC	HL	LD	H,(HL)	LD	L,A	AND	A	SBC	HL,DE	DEC	HL	; DATAخ�=1?	LD	A,L	OR	H	JP	Z,EFPCM	XOR	A	;A=PCMorFM������ް�EFCS2:	INC	HL	LD	C,L	LD	B,H	;BC=DATAخ�	LD	HL,MU_TOP	ADD	HL,DE	;HL=CH.C TOP ADR		PUSH	HL	LD	HL,(EFCPUT)	PUSH	HL	LD	DE,(EFCPUT+2)	AND	A	SBC	HL,DE	EX	DE,HL	LD	HL,(ETBADR)	LD	(HL),E	INC	HL	LD	(HL),D	INC	HL	LD	(HL),A	INC	HL	INC	HL	LD	(ETBADR),HL	POP	HL		EX	DE,HL	;DE=EFC STOC ADR	POP	HL	;HL=EFC ORIGIN DAT ADR	LDIR	LD	(EFCPUT),DE		LD	HL,EFCNUM	INC	(HL)		POP	HL	LD	DE,44	ADD	HL,DE	LD	E,(HL)	INC	HL	LD	D,(HL)	LD	HL,(OTODAT)	AND	A	SBC	HL,DE	DEC	HL	DEC	HL	DEC	HL	LD	A,L	OR	H	JR	NZ,EFCS1	; --	$C200 �� �ݿ���	--		LD	A,(EFCNUM)	LD	L,A	LD	H,0	ADD	HL,HL	ADD	HL,HL	;*4	LD	C,L	LD	B,H	INC	BC	INC	BC	LD	IX,MU_TOP+2	;C000-C001� �ݼ����ɳ ���ڽ	LD	IY,T_CLK	LD	DE,4EFLD2:	PUSH	AF		LD	L,(IY)	LD	H,(IY+1)	LD	A,(IY+2)	ADD 	HL,BC		LD	(IX),L	LD	(IX+1),H	LD	(IX+2),A	LD	(IX+3),0		ADD	IX,DE	ADD	IY,DE		POP	AF	DEC	A	JR	NZ,EFLD2		LD	HL,MU_TOP	ADD	HL,BC	PUSH	HL	;EFCDAT �į���		LD	HL,(EFCPUT)	LD	DE,(EFCPUT+2)	AND	A	SBC	HL,DE	;EFC����� � �ް�خ�	LD	C,L	LD	B,H		POP	DE	LD	HL,(EFCPUT+2)	LDIR		PUSH	DE	EX	DE,HL	LD	DE,MU_TOP	AND	A	SBC	HL,DE	LD	(MU_TOP),HLEFCS3:	LD	BC,0000H	INC	BCEFCS4:	LD	HL,0000H	LD	DE,MU_NUM	ADD	HL,DE	POP	DE	LDIR		;�ݼ�� �ݿ�		EX	DE,HL	CALL	HEXPRT	LD	HL,MOJIBUF	LD	DE,TEXT+36	LD	BC,4	LDIR	LD	HL,MESNOT	LD	DE,TEXT+41	LD	BC,4	LDIR	POP	HL	RET		;RET TO BASIC	EFPCM:	LD	A,(EFCNUM)	CALL	GETTBL	LD	DE,40	ADD	HL,DE	LD	E,(HL)	INC	HL	LD	D,(HL)	INC	HL	INC	HL	INC	HL	LD	A,(HL)	INC	HL	LD	H,(HL)	LD	L,A	AND	A	SBC	HL,DE	DEC	HL	LD	A,1	JP	NZ,EFCS2	EFPCE:	;�װ	POP	HL	RET	ETBADR:	DW	0EFCPUT:	DW	0	DW	0EFCNUM:	DB	0	                                                                                                 