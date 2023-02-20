	AREA task_iv_D_data, DATA, READWRITE
X DCB "World",0; Allocates a few bytes of memory and store string
Y DCB "Worl",0; Allocates a few bytes of memory and store string
	
	AREA task_iv_D, CODE, READONLY
	ENTRY
	EXPORT main
main
	LDR r0, =X; Loads the address of X to r0 register
	LDR r1, =Y; Loads the address of Y to r1 register
	
compareString 
	LDRB r2, [r0], #1; Load the current byte of X to r2 register and increment
	LDRB r3, [r1], #1; Load the current byte of Y to r3 register and increment
	
	CMP r2, #0; If the null character of X is found, then exit
	BEQ exit
	
	CMP r3, #0; IF the null character of Y is found, then exit
	BEQ exit
	
	CMP r2, r3; Compare the two current bytes of X and Y
	BEQ compareString; If they are the same then jump to loop

exit
	CMP r2,r3; compare the last two bytes of X and Y
Stop B Stop
	END