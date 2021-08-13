ORG 0000H
	
          LXI H,3090H   ;Set pointer for array  
	  MVI C,0AH
          DCR C         ;Decrement Count
  REPEAT: MOV D,C 
          LXI H,3090H
    LOOP: MOV A,M       ;copy content of memory location to Accumulator
          INX H 
          CMP M 
          JC SKIP       ;jump to skip if carry generated
          MOV B,M       ;copy content of memory location to B - Register
          MOV M,A       ;copy content of Accumulator to memory location
          DCX H         ;Decrement content of HL pair of registers
          MOV M,B       ;copy content of B - Register to memory location
          INX H         ;Increment content of HL pair of registers
    SKIP: DCR D         ;Decrement content of Register - D
          JNZ LOOP      ;jump to loop if not equal to zero
          DCR C         ;Decrement count
          JNZ REPEAT    ;jump to repeat if not equal to zero
          HLT           ;Terminate Program

	ORG 3090H
DB 	79H,22H,38H,58H,69H,19H,0FH,0ACH,0BAH,03H
	END