MOV AX,4000H
MOV DS,AX
MOV DI,2000H
MOV AX,0000H
MOV CL,0AH

LOOP:MOV [DI],AX
     INC DI
     ADD AX,01H
     DEC CL
     JZ LOOP2

JMP LOOP   

LOOP2: MOV CL,0AH
      
       MOV DI,2000H
       MOV SI,3000H 
      LOOP3: MOV BX,DS:[DI]
       MOV [SI],BX
       INC SI
       INC DI
       
       DEC CL
       JZ END
       JMP LOOP3
       

END:HLT