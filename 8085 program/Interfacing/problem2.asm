;If the last bit of the result of OR operation of the containt of 2500H and 2501H is 1 then it 8 leds will glow connected to port A, otherwise all should be off.

ORG 2000H

	MVI A,80H
	OUT 83H

	LDA 2500H
	MOV H,A
	LDA 2501H
	ORA H

	RRC
	JC ON
	JNC OFF

ON:	MVI A,0FFH  	;A=DATA(FFH)
	OUT 80H		;A TO PORT A(TO LEDS)
	HLT

OFF:	MVI A,00H  	;A=DATA(00H)
	OUT 80H		;A TO PORT A(TO LEDS)
	HLT

	ORG 2500H
DB 	71H,50H
	END