					ORG	0DC00H	MSUB:	EQU	9000HDIV:	EQU	MSUB+3*15HEXPRT:	EQU	MSUB+3*17ROM:	EQU	MSUB+3*18RAM:	EQU	MSUB+3*19MU_TOP:	EQU	0C200H+5			; **	MML(MATHINE LANGAGE) DATA PRINT TO TEXT	**	TEXTMK:	DI	CALL	RAM			XOR	A	LD	(TXTCHD),A	LD	HL,1	LD	(0EB18H),HL	LD	HL,1000	LD	(BASLN),HLTXTMK2:	LD	HL,(0EB18H)	LD	(TX3+1),HL	INC	HL	INC	HL	LD	BC,(BASLN)	LD	(HL),C	INC	HL	LD	(HL),B	INC	HL	EX	DE,HL	LD	HL,SETDW	LD	BC,8	LDIR		EX	DE,HL	LD	A,(TXTCHD)	ADD	A,41H	LD	(HL),A	LD	(TX2+1),A	INC	HL	LD	(HL),','	INC	HL		LD	(0EB18H),HL	LD	A,(TXTCHD)	ADD	A,A	ADD	A,A	LD	HL,MU_TOP+1	ADD	A,L	LD	L,A	; CH � ST.ADR �� ��ɳ��� ��ĺ		PUSH	HL	LD	A,(HL)	INC	HL	LD	H,(HL)	LD	L,A	LD	DE,MU_TOP	ADD	HL,DE	LD	(DATADR),HL	EX	DE,HL	; DE=CHn ST. ADR	POP	HL		INC	HL	INC	HL	LD	C,(HL)	INC	HL	LD	B,(HL)	; BC=LOOP ADR	PUSH	HL	LD	HL,MU_TOP	ADD	HL,BC	LD	C,L	LD	B,H	POP	HL	INC	HL	TXTMK3:	LD      A,(HL)	INC	HL	LD	H,(HL)	LD	L,A	; HL=CHn END ADR+1	PUSH	DE	LD	DE,MU_TOP	ADD	HL,DE	POP	DETXTMK4:	PUSH	HL	PUSH	DE	AND	A	LD	H,B	LD	L,C	SBC	HL,DE	CALL	HEXPRT	PUSH	HL	LD	HL,(0EB18H)	LD	(HL),'C'	INC	HL	LD	(HL),'H'	INC	HLTX2:	LD	(HL),0	INC	HL	LD	(HL),'+'	INC	HL	LD	(HL),'0'	INC	HL	EX	DE,HL	POP	HL	;LD	HL,MOJIBUF	LD	BC,4	LDIR	EX	DE,HL	LD	(HL),'H'	INC	HL	LD	(HL),0	INC	HL	EX	DE,HLTX3:	LD	HL,0	LD	(HL),E	;	INC	HL	; SET LINK P.	LD	(HL),D	;	LD	(TX4+1),DE	POP	DE	POP	HL	AND	A	SBC	HL,DE	; HL=DATA خ�	LD	DE,8	CALL	DIV	INC	HL	LD	C,L	LD	B,HTX4:	LD	HL,0	CALL    DATPTT	LD	A,(TXTCHD)	INC	A	LD	(TXTCHD),A	LD	C,A	LD	A,11	;MAXCH	CP	C	JP	NZ,TXTMK2		LD	HL,(0EB18H)	LD	(HL),0	INC	HL	LD	(HL),0	INC	HL	LD	(0EB18H),HL		CALL	ROM	EI	RET	TXTCHD:	DB	0	; **	DATA PRINT TO TEXT	**	;	IN:BC=DATA LENGTH/8;	   HL=TEXT ADR	DATPTT:	PUSH	BC		EXX	LD	HL,(BASLN)	LD	DE,10	ADD	HL,DE		; LINE=LINE+10	LD	(BASLN),HL	EXX		LD	DE,(BASLN)	PUSH	HL		; STORE LINK POINTER ADR	INC	HL	INC	HL	LD	(HL),E	INC	HL	LD	(HL),D	INC	HL		LD	DE,SETDB	EX	DE,HL	LD	BC,6	LDIR			; PRINT "'DB"+TAB CODE	EX	DE,HL		LD	B,8		; ֺ 8� ���STLP1:	PUSH	BC	PUSH	HL	LD	DE,(DATADR)	LD	A,(DE)	INC	DE	LD	(DATADR),DE	LD	L,A	LD	H,0		; HL AS DATA		CALL	HEXPRT		; EXCANGE HEXCHR		POP	DE	INC	HL	;HL=MOJIBUF+1	LD	BC,3	LDIR			; PRINT DATA TO TEXT	EX	DE,HL	LD	(HL),'H'	INC	HL	LD	(HL),','	INC	HL		POP	BC	DJNZ    STLP1		DEC	HL	LD	(HL),00H	; SET LINE END MARK	INC	HL	EX	DE,HL		POP	HL		; RESTORE LINK POINTER ADR	LD	(HL),E	INC	HL		; SET LINE END ADR	LD	(HL),D	EX	DE,HL	POP	BC	DEC	BC	LD	A,B	OR	C	JR	NZ,DATPTT		LD	(0EB18H),HL		LD	HL,(BASLN)	LD	DE,10	ADD	HL,DE	LD	(BASLN),HL	RET		BASLN:	DW	0DATADR:	DW	0SETDB:	DB	03AH,08FH,0E9H,'D','B',09HSETDW:	DB	03AH,08FH,0E9H,'D','W',09H,'C','H'		                                            