	AREA problem_01, CODE, READONLY
	ENTRY; starting point of the code
	EXPORT main; the declaration of identifier main
X EQU 9; puting the data 9 in memory in the form of constant, X
Y EQU 8; puting the data 8 in memory in the form of constant, X
Z EQU 5; puting the data 5 in memory in the form of constant, X
main; address of the main function
	MOV r4, #X; load X = 9 in r4
	MOV r3, #Y;	load Y = 8 in r3
	MOV r2, #Z;	load Z = 5 in r2
	ADD r0, r2, r3; add the values in r2 and r3 and store the result in r0
	ADD r0, r0, r4; add the values in r0 and r4 and store the result in r0
Stop B Stop; Endless loop
	END; End of the program