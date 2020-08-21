
_config:

;dsPIC_VGA.c,89 :: 		void config()
;dsPIC_VGA.c,91 :: 		ADPCFG = 0xFFFF;
	MOV	#65535, W0
	MOV	WREG, ADPCFG
;dsPIC_VGA.c,92 :: 		PORTB=0;
	CLR	PORTB
;dsPIC_VGA.c,93 :: 		PORTC=0;
	CLR	PORTC
;dsPIC_VGA.c,94 :: 		PORTD=0;
	CLR	PORTD
;dsPIC_VGA.c,95 :: 		PORTE=0;
	CLR	PORTE
;dsPIC_VGA.c,97 :: 		TRISE = 0;
	CLR	TRISE
;dsPIC_VGA.c,98 :: 		TRISD = 0;
	CLR	TRISD
;dsPIC_VGA.c,99 :: 		TRISB = 0;
	CLR	TRISB
;dsPIC_VGA.c,102 :: 		}
L_end_config:
	RETURN
; end of _config

_Draw:

;dsPIC_VGA.c,110 :: 		void Draw() {
;dsPIC_VGA.c,113 :: 		if (current_vertical_line == VGA_VERTICAL_LINES) { current_vertical_line = 0; } else { NOP NOP } // 7 cycles
	MOV	_current_vertical_line, W1
	MOV	#600, W0
	CP	W1, W0
	BRA Z	L__Draw6
	GOTO	L_Draw0
L__Draw6:
	CLR	W0
	MOV	W0, _current_vertical_line
	GOTO	L_Draw1
L_Draw0:
	NOP
	NOP
L_Draw1:
;dsPIC_VGA.c,114 :: 		REP(0, 0, 8, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,118 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,119 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,120 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,121 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,122 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,123 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,124 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,125 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,126 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,127 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,129 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,130 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,131 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,132 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,133 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,134 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,135 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,136 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,137 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,138 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,140 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,141 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,142 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,143 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,144 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,145 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,146 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,147 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,148 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,149 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,151 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,152 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,153 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,154 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,155 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,156 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,157 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,158 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,159 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,160 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,162 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,163 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,164 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,165 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,166 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,167 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,168 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,169 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,170 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,171 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,173 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,174 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,175 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,176 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,177 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,178 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,179 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,180 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,181 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,182 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,184 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,185 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,186 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,187 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,188 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,189 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,190 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,191 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,192 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,193 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,195 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,196 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,197 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,198 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,199 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,200 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,201 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,202 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,203 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,204 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,241 :: 		VGA_COLOR = 0;
	CLR	LATD
;dsPIC_VGA.c,242 :: 		current_vertical_line++; // 4 cycles
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
;dsPIC_VGA.c,243 :: 		REP(0, 0, 1, NOP)
	NOP
;dsPIC_VGA.c,244 :: 		}
L_end_Draw:
	RETURN
; end of _Draw

_NullDraw:

;dsPIC_VGA.c,246 :: 		void NullDraw() {
;dsPIC_VGA.c,248 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,251 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,254 :: 		VGA_COLOR = 0; REP(0, 0, 5, NOP);
	CLR	LATD
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,255 :: 		}
L_end_NullDraw:
	RETURN
; end of _NullDraw

_NullDraw_less_2_final_cycle:

;dsPIC_VGA.c,257 :: 		void NullDraw_less_2_final_cycle() {
;dsPIC_VGA.c,259 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,262 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,265 :: 		VGA_COLOR = 0; REP(0, 0, 3, NOP)
	CLR	LATD
	NOP
	NOP
	NOP
;dsPIC_VGA.c,266 :: 		}
L_end_NullDraw_less_2_final_cycle:
	RETURN
; end of _NullDraw_less_2_final_cycle

_HSync_nops:

;dsPIC_VGA.c,268 :: 		void HSync_nops() {
;dsPIC_VGA.c,269 :: 		REP(0, 1, 9, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,270 :: 		}
L_end_HSync_nops:
	RETURN
; end of _HSync_nops

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68

;dsPIC_VGA.c,274 :: 		int main()
;dsPIC_VGA.c,276 :: 		config();
	CALL	_config
;dsPIC_VGA.c,278 :: 		while(1) {
L_main2:
;dsPIC_VGA.c,280 :: 		vsync_on;
	BCLR.B	LATEbits, #2
;dsPIC_VGA.c,281 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,282 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,283 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,284 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,285 :: 		vsync_off;
	BSET.B	LATEbits, #2
;dsPIC_VGA.c,288 :: 		REP(0, 2, 3, HSYNC_NOPS NullDraw();)
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,291 :: 		REP(6, 0, 0, HSYNC_NOPS Draw();)
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
;dsPIC_VGA.c,294 :: 		HSYNC_NOPS NullDraw_less_2_final_cycle();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw_less_2_final_cycle
;dsPIC_VGA.c,295 :: 		}
	GOTO	L_main2
;dsPIC_VGA.c,296 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
