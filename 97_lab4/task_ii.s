	AREA problem_ii, CODE, READONLY;code section is explained as "problem_ii"
	ENTRY; starting point of the code
	EXPORT main; the declaration of identifier main
main
	MOV r3, #5; moving the value 5 in the register r3
	CMP r3, #10; dummy operations which will affect the values of the flag bits
	MRS r0, APSR; APSR --> r0, copying the values of status bits from APSR to r0 (reserved bits excluded)
	MRS r1, IPSR; IPSR --> r1, copying the values of status bits from IPSR to r1 (reserved bits excluded)
	MRS r2, EPSR; EPSR --> r2, copying the values of status bits from EPSR to r2 (reserved bits excluded)
Stop B Stop; Endless loop
	END; End of the program