;PROBLEM: If sum of the two numbers stored in memoroy location, 2300H and 2301H is 16 bit, then print 1 on 7 segment LED otherwise 0 

	ORG 2000H
	MVI A,82H
	OUT 83H

	LXI H,2300H
	mov A,M
	INX H
	MOV B,M
	ADD B
	JC loop1
	JNC loop2
loop1:	MVI A,06H
	OUT 82H
	
	HLT

loop2:	MVI A,3FH
	OUT 82H

	HLT

	ORG 2300H
	DB 0FFH,0A3H
