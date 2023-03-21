 MOV AX,2000H
 MOV DS,AX
 MOV DI,1000H
 MOV AX,0000H
 MOV CL,05H
 LOOP: MOV [DI],AX
 INC DI
 DEC CL
 JZ LOOP1
 JMP LOOP
       
 LOOP1: MOV AX,0001H
        MOV CL,02H
        MOV DX,0000H
        
       LOOP2: MOV [DI],AX 
       
        
        INC DI
        DEC CL
        JZ RESULT
        JMP LOOP2
       
 RESULT: 
         MOV SI,2000H
         MOV [SI],00C0H
         HLT
                
                
       
        