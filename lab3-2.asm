	LXI H,8600H
	LXI D,8807H
	MVI C,0AH
back:	MOV A,M
	STAX D
	INX D
	INX H
	DCR C	
	JNZ back
	LXI H,8807H
	LXI D,8607H
	MVI C,0AH
again:	MOV A,M
	STAX D
	INX D
	INX H
	DCR C
	JNZ again
	HLT

#ORG 8600H
#DB 21H,22H,23H,24H,25H,26H,27H,28H,29H,30H
