	AREA problem_02, CODE, READONLY
	ENTRY; starting point of the code execution
	EXPORT main; the declaration of the identifier main
main; address of the main function
	LDR r4, X; load r4 with the content of memory location X 
	LDR r3, Y; load r3 with the content of memory location Y
	LDR r2, Z; load r2 with the content of memory location Z
	ADD r0, r2, r3; add the values r2 and r3 and store the result in r0
	ADD r0, r0, r4; add the values r0 and r4 and sotre the result in r0
Stop B Stop; Endless loop
X DCD 9; create the variable X with the initial value 9
Y DCD 8; create the variable Y with the initial value 8
Z DCD 5; create the variable Z with the initial value 5
	END; End of the program