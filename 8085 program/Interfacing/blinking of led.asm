;BLINK ALL THE LED CONNECTED TO PORT A IN 8255 WITH A DELAY

	ORG 2000H
	MVI A,80H
	OUT 83H
	LXI SP,2FFFH
	
L1:	MVI A,0FFH
	OUT 80H

	CALL 2050H
	
	MVI A,00H
	OUT 80H
	CALL 2050H
	JMP L1

	ORG 2050H
	MVI B,01H
L3:	MVI C,04H
L2:	DCR C
	JNZ L2
	DCR B
	JNZ L3
	RET
	END
