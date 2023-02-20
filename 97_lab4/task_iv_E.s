	AREA task_iv_E_data, DATA, READWRITE
X DCB "Problem",0; Allocates a bytes of memory and store string
Y DCB "Solver",0; Allocates a bytes of memory and string
	
	AREA task_iv_E, CODE, READONLY
	ENTRY
	EXPORT main
main
	LDR r0, =X; Loads the address of X to r0 register 
	LDR r1, =Y; Loads the address of Y to r1 register
	
checkLast 
	LDRB r2, [r0], #1; Load the current byte of X to r2 and increment by 1
	CMP r2, #0; Check if null character of the string is found
	BNE checkLast; If not then jump to checkLast
	
concatenate
	LDRB r2, [r1], #1; Load the current byte of Y to r2 and increment by 1
	STRB r2, [r0], #1; Store the current byte in r2 to the end of X and increment by 1
	CMP r2, #0; Check if null character of the string is found
	BNE concatenate; If not then jump to concatenate
	
Stop B Stop
	END