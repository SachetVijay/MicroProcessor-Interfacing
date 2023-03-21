                             MVI A,FF
                             
                             MVI B,FF
                             
                             ADD B
                             JC MPI
                             
                             
                             STA 8500
                             
                             
                             MVI A,00
                             
MPI2 : 
                             STA 8501
                             
                             
                             JMP STOP
                             
                             
MPI : 
                             STA 8500
                             
                             
                             MVI A,01
                             
                             JMP MPI2
                             
                             
STOP : 
                             HLT
