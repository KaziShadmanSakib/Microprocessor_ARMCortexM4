	AREA task_iv_C_data, DATA, READWRITE
X DCB "World",0; Allocates a bytes of memory and store string
	
	AREA task_iv_C, CODE, READONLY
	ENTRY
	EXPORT main
main
	LDR r0, =X; Load the address of X to r0 register
	MOV r2, #0; Load the value 0 into r2 register
	
length 
	LDRB r1, [r0], #1; Load the current byte of X to r1 and increment by 1
	ADD r2, r2, #1; Increment the value of r2 by 1
	CMP r1, #0; Check if end of the string is reached
	BNE length; If not then jump to look
	SUB r2, r2, #1; Decrement r2 by 1 to account to remove null character
Stop B Stop
	END