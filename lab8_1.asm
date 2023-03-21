DATA_HERE SEGMENT
    DATA_HERE ENDS

CODE_HERE SEGMENT
    ASSUME CS:CODE_HERE, DS:DATA_HERE

START:MOV AX, DATA_HERE
      MOV DS, AX
      
      MOV AL, BL
      MOV CX, BX
      ADD CL, BL
      ADC BX, DX
      
      MOV AH,4CH
      INT 21H
    CODE_HERE ENDS
END START
    
                         
                         
