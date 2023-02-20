	AREA problem_iii, CODE, READONLY
V1 DCD 0xFFFFF; Allocates a halfword of memory as 0x0032
V2 DCD 0xFFFFF; Allocates a halfword of memory as 0x0124
	ENTRY
	EXPORT main2
main2
	LDR r1, V1; Load the variable V1 to the register r1
	LDR r2, V2; Load the variable V2 to the register r2
	AND r3, r1, r2; AND Operation on r1 and r2 and storing result it in r3
	ORR r4, r1, r2; OR operation on r1 and r2 and storing result it in r4
	MVN r5, r4; NOR Operation done
	MVN r6, r3; NAND Operation done
	EOR r7, r1, r2; XOR Operation done
	MVN r8, r7; XNOR Operation done

Stop B Stop
	END