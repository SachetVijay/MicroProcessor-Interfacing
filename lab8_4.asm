DATA_HERE SEGMENT
DATA_HERE ENDS

CODE_HERE SEGMENT
ASSUME CS:CODE_HERE, DS:DATA_HERE

START:MOV AX, DATA_HERE
MOV DS, AX

ADD BL, 80H
ADD CX,12B0H
ADD AX, CX
ADD AL, [BX]
ADD CX, [SI]
ADD [BX], DL

SUB AL, BL
SUB CX, BX
SUB BX, [DI]
SUB [BP],DL


MOV AH,4CH
INT 21H
CODE_HERE ENDS
END START





