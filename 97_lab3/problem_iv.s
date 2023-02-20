	AREA problem_iv, CODE, READONLY
V1 DCD 0xFFFFF; Allocates a halfword of memory as 0x0032
V2 DCD 0xFFFFF; Allocates a halfword of memory as 0x0124
	ENTRY
	EXPORT main2
main2
	LDR r1, V1; Load the variable V1 to the register r1
	
	LSR r2, r1, #2; LSR operation done on 32 bit variables
	ASR r3, r1, #2; ASR operation done on 32 bit variables
	LSL r4, r1, #2; LSL operation done on 32 bit variables

Stop B Stop
	END