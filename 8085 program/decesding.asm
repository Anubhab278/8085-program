	ORG 2000H
        LXI H,2050H      ;Set pointer for array
        MOV C,M         ;Load the Count 
        DCR C            ;Decrement Count
REPEAT: MOV D,C          
        LXI H,2051H      ;Load starting address of data array
LOOP:   MOV A,M      ;copy content of memory location to Accumulator
        INX H           
        CMP M           
        JNC SKIP        ;Jump to skip if carry not generated
        MOV B,M         ;copy content of memory location to B - Register
        MOV M,A         ;copy content of A - Register to memory location
        DCX H            ;Decrement content of HL pair of registers
        MOV M,B         
        INX H            ;Increment content of HL pair of registers
SKIP:   DCR D           
        JNZ LOOP       ;Jump to LOOP if not Zero
        DCR C            ;Decrement Count
        JNZ REPEAT     ;Jump to REPEAT if not Zero  
        HLT            ;Terminate Program
	
	ORG 2050H
	DB 23H,54H,34H,67H,23H,02H,07H,78H,0D4H.90H
