;Read the status of the switch and glow the leds in that and it's complimented manner

	org 2000H
	MVI A,82H
	OUT 83H
Loop:	IN 81H
;	MOV B,A
	OUT 80H
	CMA
	OUT 82H
	JMP Loop
	END 