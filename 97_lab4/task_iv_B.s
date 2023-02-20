	AREA task_iv_B_data, DATA, READWRITE
X DCB "Hello",0; Allocates a bytes of memory and store string
Y DCB 0; Allocates a bytes of memory for storing reversed string
	
	AREA task_iv_B, CODE, READONLY
	ENTRY
	EXPORT main
main
	LDR r0, =X; Load the address of X to r0 register
	SUB r0, r0, #1; Put the immediate address before X in r0 register
	LDR r1, =X; Load the address of X to r1 register
	LDR r2, =Y; Load the address of Y to r2 register
	
last
	LDRB r3, [r1], #1; Load the current byte of X to r3 and increment
	CMP r3, #0; Check if end of the string is reached
	BNE last; If not then jump to loop
	
reverseCopy
	LDRB r3, [r1], #-1; Load the last byte of X to r3 and decrement by 1
	STRB r3, [r2], #1; Store the current byte in r2 to Y and increment by 1
	CMP r1, r0; Check if the current byte of X has decreased to the first
	BNE reverseCopy; If not then jump to loop
	
Stop B Stop
	END