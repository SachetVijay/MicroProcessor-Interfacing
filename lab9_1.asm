DATA_HERE SEGMENT
    DATA_HERE ENDS

CODE_HERE SEGMENT
    ASSUME CS:CODE_HERE, DS:DATA_HERE
    
 START: MOV AX,1000H
        MOV DS,AX
        
        MOV DI,0800H
        MOV BX, 0005H
        MOV [DI],BX
        MOV DI,0801H
        MOV BX,0000H
        MOV [DI],BX
                   
        MOV SI,0700H
        MOV CX, 0006H
        MOV [SI],CX
        MOV SI,0701H
        MOV CX,0000H
        MOV [SI],CX        
                     
        MOV BX, 0005H
        MOV CX, 0006H
                     
        
        ADD BX, CX
        MOV DI,0900H
        MOV [DI],BX
        JNC END
        MOV DI, 0902H
        MOV [DI], 01H      
 
 
      END:MOV AH, 4CH
           INT 21H
    CODE_HERE ENDS
END START