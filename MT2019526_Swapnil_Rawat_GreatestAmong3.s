     AREA     GreatestAmong3, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
     MOV r0,#4					;First Number
	 MOV r1,#16					;Second Number
	 MOV r2,#64					;Third Number
	 CMP r0,r1					;Comparison between r0 and r1		whichever is the larger one is stored in r3
	 ITE GT						;If Then Else (ITE) 
		MOVGT r3,r0				;if r0 is greater than r1 then store r0 in r3
		MOVLE r3,r1				;else(opposite condition) store r1 in r3
	 CMP r3,r2					;Comparison between r2 and r3		whichever is the larger one is stored in r4
	 ITE GT						;If Then Else (ITE)
		MOVGT r4,r3				;if r3 is greater than r2 then store r3 in r4
		MOVLE r4,r2				;else(opposite condition) store r2 in r3
	 
stopProgram	B stopProgram		;stop program	 
		 
     ENDFUNC
     END