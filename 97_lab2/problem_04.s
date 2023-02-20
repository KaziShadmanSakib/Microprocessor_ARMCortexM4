	AREA problem_04, CODE, READONLY
	ENTRY; starting point of the code execution
	EXPORT main; the declaration of identifier main
main; address of the main function
	LDR r1, value1; load the first value
	LDR r2, value2; load the second value
	CMP r1, r2; comparing them
	BLT done; if r1 contains the smaller integer then go to label "done"
	MOV r1, r2; else overwrite r1
done; address of the done function
	MOV r0, r1; move the smaller integer in register r0 as the result
Stop B Stop; Endless loop
value1 DCD 8; first value to be compared
value2 DCD 9; second value to be compared
	END; End of the program