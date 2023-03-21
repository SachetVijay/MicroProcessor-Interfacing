                             MVI A,32
                             
                             MVI B,46
                             
                             SUB B
                             LXI H,8500
                             
                             
                             STA 8500
                             
                             
                             JC CARRY
                             
                             
                             MVI A,00
                             
                             STA 8501
                             
                             
                             JMP END
                             
                             
CARRY : 
                             MVI A,FF
                             
                             MOV B,M
                             SUB B
                             INR A
                             STA 8500
                             
                             
                             MVI A,01
                             
                             STA 8501
                             
                             
END : 
                             HLT
