	 AREA  GCD, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
     MOV r0,#64				;First Number = 64
	 MOV r1,#24				;Second Number = 24
Loop 
	 CMP r0,r1				;Compare between r0 and r1 
	 ITE GT					;If Then Else (ITE)
		SUBGT r0,r0,r1		;if r0 is greater than r1, r0 = r0 - r1
		SUBLE r1,r1,r0		;else(opposite condition)	r1 = r1 - r0
	 BNE Loop				;run the loop again till r0 = r1
	 
stopProgram	B stopProgram	;stop program	 		;finally r0 = GCD of r0,r1 and r1= 0
		 
     ENDFUNC
     END