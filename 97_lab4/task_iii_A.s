	AREA task_iii_A_data, DATA, READWRITE
I DCD 1; Allocates a 32 bit memory and store its value as 1
S DCD 0; Allocates a 32 bit memory and store its value as 0
	
	AREA task_iii_A, CODE, READONLY
	ENTRY
	EXPORT main // Summation of I^2 from 1 to 10
main
	LDR r0, =I; Loads the address of I to r0 register
	LDR r1, [r0]; Loads the contents of I to r1 register
	LDR r0, =S; Loads the address of S to r0 register
	LDR r2, [r0]; Loads the contents of S to r2 register
	
loop 
	MUL r3, r1, r1; r3 = r1*r1 or I^2 is stored in r3
	ADD r1, r1, #1; increment I by 1 in r1
	ADD r2, r2, r3; Add I^2 to the sum
	CMP r1, #10; Check if the value of I is 10
	BLS loop; If not, loop back
	STR r2, [r0]; else store the result in S' memory location
	
Stop B Stop
	END