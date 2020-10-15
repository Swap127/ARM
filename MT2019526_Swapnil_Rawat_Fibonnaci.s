     AREA     Fibbonaci, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
    MOV r0,#0						;initial 0
    MOV r1,#1						;initial 1
    MOV r3,#128						;The number uptil which the sequence is required
    MOV r4,#0						;every new element in the series is calculated in r4
    MOV r5,#0x40000000				;The entire series is written from this memory location
    ADD r4,r0,r1					
Loop1 CMP r4,r3						
    BLE Loop2						
    B stopLoop						
Loop2 STR r4,[r5],#4				;Storing the series into memory  starting with 0x4000000 followed by it getting added 4 everytime
    MOV r0,r1						
    MOV r1,r4						
    ADD r4,r0,r1			
    B Loop1						
stopLoop    B stopLoop				;for stopping the loops
        ENDFUNC
        END
