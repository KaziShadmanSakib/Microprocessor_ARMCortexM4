	AREA problem_03, CODE, READONLY
	ENTRY; starting point of the code execution
	EXPORT main; declaration of identifier main
main; address of the function main
	MOVW r1, #0xFFFF; move only 16 bits [15:0] to r1
	MOVW r2, #0xFFFF; move only 16 bits [15:0] to r2
	ADD r0, r1, r2; addition of two 16 bit variables 
	MOVT r0, #0; loads 0's in the upper 16 bit [31:16] of the final result r0
Stop B Stop; Endless loop
	END; End of the program