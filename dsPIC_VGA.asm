
_setup_ports:

;dsPIC_VGA.c,37 :: 		void setup_ports(void)
;dsPIC_VGA.c,39 :: 		ADPCFG = 0xFFFF;
	MOV	#65535, W0
	MOV	WREG, ADPCFG
;dsPIC_VGA.c,40 :: 		PORTB=0;
	CLR	PORTB
;dsPIC_VGA.c,41 :: 		PORTC=0;
	CLR	PORTC
;dsPIC_VGA.c,42 :: 		PORTD=0;
	CLR	PORTD
;dsPIC_VGA.c,43 :: 		PORTE=0;
	CLR	PORTE
;dsPIC_VGA.c,45 :: 		TRISE = 0;
	CLR	TRISE
;dsPIC_VGA.c,46 :: 		TRISD = 0;
	CLR	TRISD
;dsPIC_VGA.c,47 :: 		TRISB = 0;
	CLR	TRISB
;dsPIC_VGA.c,48 :: 		}
L_end_setup_ports:
	RETURN
; end of _setup_ports

_Hsync:

;dsPIC_VGA.c,68 :: 		void Hsync() {
;dsPIC_VGA.c,69 :: 		REP(1, 9, 8, NOP) // 200 cycles
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,71 :: 		REP(0, 1, 0, NOP) // 10 cycles
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,73 :: 		hsync_on; REP(0, 3, 0, NOP) hsync_off;// 32 cycles
	BCLR.B	LATEbits, #1
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,75 :: 		REP(0, 1, 9, NOP) } // 22 cycles
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
L_end_Hsync:
	RETURN
; end of _Hsync

_Hsync_final:

;dsPIC_VGA.c,78 :: 		void Hsync_final() {
;dsPIC_VGA.c,79 :: 		REP(1, 9, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,81 :: 		REP(0, 1, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,83 :: 		hsync_on; REP(0, 3, 0, NOP) hsync_off;
	BCLR.B	LATEbits, #1
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,85 :: 		REP(0, 1, 7, NOP) }
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
L_end_Hsync_final:
	RETURN
; end of _Hsync_final

_Hsync_with_vsync_on:

;dsPIC_VGA.c,88 :: 		void Hsync_with_vsync_on() {
;dsPIC_VGA.c,89 :: 		REP(1, 9, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,91 :: 		REP(0, 1, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,93 :: 		hsync_on; REP(0, 3, 0, NOP) hsync_off;
	BCLR.B	LATEbits, #1
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,95 :: 		REP(0, 1, 8, NOP) vsync_on;}
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	BCLR.B	LATEbits, #2
L_end_Hsync_with_vsync_on:
	RETURN
; end of _Hsync_with_vsync_on

_Hsync_with_vsync_off:

;dsPIC_VGA.c,97 :: 		void Hsync_with_vsync_off() {
;dsPIC_VGA.c,98 :: 		REP(1, 9, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,100 :: 		REP(0, 1, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,102 :: 		hsync_on; REP(0, 3, 0, NOP) hsync_off;
	BCLR.B	LATEbits, #1
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,104 :: 		REP(0, 1, 8, NOP) vsync_off; }
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	BSET.B	LATEbits, #2
L_end_Hsync_with_vsync_off:
	RETURN
; end of _Hsync_with_vsync_off

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68

;dsPIC_VGA.c,106 :: 		int main()
;dsPIC_VGA.c,108 :: 		setup_ports();
	CALL	_setup_ports
;dsPIC_VGA.c,109 :: 		hsync_off;
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,110 :: 		vsync_off;
	BSET.B	LATEbits, #2
;dsPIC_VGA.c,111 :: 		VGA_R = 1;
	BSET.B	LATDbits, #0
;dsPIC_VGA.c,113 :: 		while(1) {
L_main0:
;dsPIC_VGA.c,114 :: 		REP(6, 0, 0, Hsync();) // 15.84 ms
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
;dsPIC_VGA.c,116 :: 		Hsync_with_vsync_on(); // 0.0264 ms
	CALL	_Hsync_with_vsync_on
;dsPIC_VGA.c,118 :: 		Hsync(); Hsync(); Hsync(); Hsync_with_vsync_off(); // 0.1056 ms
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync_with_vsync_off
;dsPIC_VGA.c,120 :: 		REP(0, 2, 2, Hsync();) Hsync_final(); } //0.6072 ms
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync_final
	GOTO	L_main0
;dsPIC_VGA.c,121 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
