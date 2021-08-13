;PROBLEM: read the status of switch connected in port B and store that number in 3004H memory location

	ORG 2000H
	MVI A,82H
	OUT 83H
	MVI C,00H
	IN 81H
	LXI H,2050H
l2:	INR C
	CMP M
	INX H
	JNZ l2

	MOV A,C
	STA 3004H
	

	HLT 
	ORG 2050H
	DB 01H,02H,04H,08H,10H,20H,40H,80H