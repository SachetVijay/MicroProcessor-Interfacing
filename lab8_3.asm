DATA_HERE SEGMENT
DATA_HERE ENDS

CODE_HERE SEGMENT
ASSUME CS:CODE_HERE, DS:DATA_HERE

START:MOV AX, DATA_HERE
MOV DS, AX

MOV BL, 50H
MOV CX, [BX]
MOV AX, CX
XCHG AL, BL
XCHG CX, BX
XCHG AX, [BX]

MOV AH,4CH
INT 21H
CODE_HERE ENDS
END START





