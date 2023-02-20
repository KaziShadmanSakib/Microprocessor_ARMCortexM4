	AREA lab_3, CODE, READONLY
V1 DCD 0xFFFFFFFF; Allocates a halfword of memory as 0x0032
V2 DCD 0xFFFFFFFF; Allocates a halfword of memory as 0x0124
	ENTRY
	EXPORT main4
main4
	LDR r1, V1; Load the variable V1 to the register r1
	LDR r2, V2; Load the variable V2 to the register r2
	
	MOVT r1, #0;
	MOVT r2, #0;
	
	ADDS r3, r1, r2; does ADD operation on r1 and r2 registers and stores result in r3
	SUBS r4, r1, r2; does Sub operation on r1 and r2 registers and stores result in r4
	MUL r5, r1, r2; does Multiplication operation on r1 and r2 and stores result in r5
	
Stop B Stop
	END