
_setup_ports:

;dsPIC_VGA.c,41 :: 		void setup_ports(void)
;dsPIC_VGA.c,43 :: 		ADPCFG = 0xFFFF;
	MOV	#65535, W0
	MOV	WREG, ADPCFG
;dsPIC_VGA.c,44 :: 		PORTB=0;
	CLR	PORTB
;dsPIC_VGA.c,45 :: 		PORTC=0;
	CLR	PORTC
;dsPIC_VGA.c,46 :: 		PORTD=0;
	CLR	PORTD
;dsPIC_VGA.c,47 :: 		PORTE=0;
	CLR	PORTE
;dsPIC_VGA.c,49 :: 		TRISE = 0;
	CLR	TRISE
;dsPIC_VGA.c,50 :: 		TRISD = 0;
	CLR	TRISD
;dsPIC_VGA.c,51 :: 		TRISB = 0;
	CLR	TRISB
;dsPIC_VGA.c,52 :: 		}
L_end_setup_ports:
	RETURN
; end of _setup_ports

_Hsync:

;dsPIC_VGA.c,72 :: 		void Hsync() {
;dsPIC_VGA.c,73 :: 		REP(1, 5, 8, VGA_R = !VGA_R;) // 800 / 5 = 160 cycles
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
	BTG.B	LATDbits, #0
;dsPIC_VGA.c,75 :: 		REP(0, 0, 8, VGA_R = 0;) // 40 / 5 = 8 cycles
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
	BCLR.B	LATDbits, #0
;dsPIC_VGA.c,77 :: 		hsync_on; REP(0, 2, 4, NOP) hsync_off; // 128 / 5 = 25.6 cycles
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
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,79 :: 		REP(0, 1, 5, NOP) } // 88 / 5 = 17.6 cycles
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
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

;dsPIC_VGA.c,82 :: 		void Hsync_final() {
;dsPIC_VGA.c,83 :: 		REP(1, 5, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,85 :: 		REP(0, 0, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,87 :: 		hsync_on; REP(0, 2, 4, NOP) hsync_off;
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
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,89 :: 		REP(0, 1, 3, NOP) }
	NOP
	NOP
	NOP
	NOP
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

;dsPIC_VGA.c,92 :: 		void Hsync_with_vsync_on() {
;dsPIC_VGA.c,93 :: 		REP(1, 5, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,95 :: 		REP(0, 0, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,97 :: 		hsync_on; REP(0, 2, 4, NOP) hsync_off;
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
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,99 :: 		REP(0, 1, 4, NOP) vsync_on;}
	NOP
	NOP
	NOP
	NOP
	NOP
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

;dsPIC_VGA.c,101 :: 		void Hsync_with_vsync_off() {
;dsPIC_VGA.c,102 :: 		REP(1, 5, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,104 :: 		REP(0, 0, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,106 :: 		hsync_on; REP(0, 2, 4, NOP) hsync_off;
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
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,108 :: 		REP(0, 1, 4, NOP) vsync_off; }
	NOP
	NOP
	NOP
	NOP
	NOP
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

;dsPIC_VGA.c,110 :: 		int main()
;dsPIC_VGA.c,112 :: 		setup_ports();
	CALL	_setup_ports
;dsPIC_VGA.c,113 :: 		hsync_off;
	BSET.B	LATEbits, #1
;dsPIC_VGA.c,114 :: 		vsync_off;
	BSET.B	LATEbits, #2
;dsPIC_VGA.c,116 :: 		while(1) {
L_main0:
;dsPIC_VGA.c,117 :: 		REP(6, 0, 0, Hsync();) // 15.84 ms
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
;dsPIC_VGA.c,119 :: 		Hsync_with_vsync_on(); // 0.0264 ms
	CALL	_Hsync_with_vsync_on
;dsPIC_VGA.c,121 :: 		Hsync_with_vsync_on(); Hsync_with_vsync_on(); Hsync_with_vsync_on(); Hsync_with_vsync_off(); // 0.1056 ms
	CALL	_Hsync_with_vsync_on
	CALL	_Hsync_with_vsync_on
	CALL	_Hsync_with_vsync_on
	CALL	_Hsync_with_vsync_off
;dsPIC_VGA.c,123 :: 		REP(0, 2, 2, Hsync();) Hsync_final(); } //0.6072 ms
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
	CALL	_Hsync
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
;dsPIC_VGA.c,124 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
