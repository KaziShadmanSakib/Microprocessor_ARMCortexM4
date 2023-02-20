	AREA task_iii_B_data, DATA, READWRITE
A DCB 3; Allocates 8 bits of memory and set value to 3 register
B DCB 4; Allocates 8 bits of memory and set value to 4 register
C DCB 5; Allocates 8 bits of memory and set value to 5 register
S DCB 0; Allocates 8 bits of memory and set value to 0 register
	
	AREA task_iii_B, CODE, READONLY
	ENTRY
	EXPORT main //A^2 + B^2 = C^2
main
	LDR r1, =A; Load the address of A to r1 register
	LDR r2, =B; Load the address of B to r2 register
	LDR r3, =C; Load the address of C to r3 register
	LDRB r1, [r1]; Load the contents of A to r1 register
	LDRB r2, [r2]; Load the contents of B to r2 register
	LDRB r3, [r3]; Load the contents of C to r3 register
	MUL r1, r1, r1; Multiply r1 with r1 to get A squared
	MUL r2, r2, r2; Multiply r2 with r2 to get B squared
	MUL r3, r3, r3; Multiply r3 with r3 to get C squared
	ADD r4, r1, r2; Add r1 and r2 to get A squared + B squared
	CMP r4, r3; Compare the sum to r3 as C squared
	BEQ correct; if branch equal then jump to correct
	B Stop

correct
	MOV r5, #1
	STR r5, [r0]; Store r5 at the address of result

Stop B Stop
	END