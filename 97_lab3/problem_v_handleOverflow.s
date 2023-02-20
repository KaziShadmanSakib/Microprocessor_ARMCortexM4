	AREA lab_3, CODE, READONLY
V1 DCD 0x4; Allocates a halfword of memory as 0x0032
V2 DCD 0xFFFFFFFF; Allocates a halfword of memory as 0x0124
	ENTRY
	EXPORT main
main
	LDR r1, V1; Load the variable V1 to the register r1
	LDR r2, V2; Load the variable V2 to the register r2
	
	ADDS r3, r1, r2; r4 r3
	ADC r4, r4 // Add carry
	SUBS r5, r1, r2; r6 r5
	BCC negOveflow; //branch if carry clear
	B Multiply;
	
negOverflow
	ADD r6, r6, #0xFFFFFFFF;
	
Multiply
	UMULL r7, r8, r1, r2; r8 r7 
	
Stop B Stop
	END