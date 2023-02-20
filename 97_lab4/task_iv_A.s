	AREA task_iv_A_data, DATA, READWRITE
X DCB "Hello",0; Allocates a bytes of memory and define its contents
Y DCB 0; Allocates a bytes of memory and define its contents
	
	AREA task_iv_A, CODE, READONLY
	ENTRY
	EXPORT main
main
	LDR r0, =X; Loads the address of X to r0 register
	LDR r1, =Y; Loads the address of Y to r1 register
	
copy
	LDRB r2, [r0], #1; Load the current byte of X to r2 and increment by 1
	STRB r2, [r1], #1; Store the current byte in r2 to Y and increment by 1
	CMP r2, #0; Check if end of the string is reached
	BNE copy; If not, then jump to loop
Stop B Stop
	END