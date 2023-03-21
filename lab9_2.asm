	MOV AX,5000H
	MOV DS,AX
	
	MOV DI, 1000H	
	
	MOV DL,02H
	MOV AX,[DI]	
	

LOOP1:	INC DI
        INC DI	
	CMP AX, [DI]	
	JNC LOOP2	
	
LOOP3: DEC DL
       JNZ LOOP1
       MOV DI,2000H
       MOV [DI],AX
       HLT	
		

LOOP2:	MOV AX,[DI]
        JMP LOOP3	

