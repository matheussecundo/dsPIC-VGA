
_config:

;dsPIC_VGA.c,90 :: 		void config()
;dsPIC_VGA.c,92 :: 		ADPCFG = 0xFFFF;
	MOV	#65535, W0
	MOV	WREG, ADPCFG
;dsPIC_VGA.c,93 :: 		PORTB=0;
	CLR	PORTB
;dsPIC_VGA.c,94 :: 		PORTC=0;
	CLR	PORTC
;dsPIC_VGA.c,95 :: 		PORTD=0;
	CLR	PORTD
;dsPIC_VGA.c,96 :: 		PORTE=0;
	CLR	PORTE
;dsPIC_VGA.c,98 :: 		TRISE = 0;
	CLR	TRISE
;dsPIC_VGA.c,99 :: 		TRISD = 0;
	CLR	TRISD
;dsPIC_VGA.c,100 :: 		TRISB = 0;
	CLR	TRISB
;dsPIC_VGA.c,103 :: 		}
L_end_config:
	RETURN
; end of _config

_Draw:

;dsPIC_VGA.c,111 :: 		void Draw() {
;dsPIC_VGA.c,113 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,117 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,118 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,119 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,120 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,121 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,122 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,123 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,124 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,125 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,126 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,128 :: 		VGA_COLOR = 1;
	MOV	#1, W0
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
;dsPIC_VGA.c,139 :: 		VGA_COLOR = 2;
	MOV	#2, W0
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
;dsPIC_VGA.c,150 :: 		VGA_COLOR = 3;
	MOV	#3, W0
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
;dsPIC_VGA.c,161 :: 		VGA_COLOR = 4;
	MOV	#4, W0
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
;dsPIC_VGA.c,172 :: 		VGA_COLOR = 5;
	MOV	#5, W0
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
;dsPIC_VGA.c,183 :: 		VGA_COLOR = 6;
	MOV	#6, W0
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
;dsPIC_VGA.c,194 :: 		VGA_COLOR = 7;
	MOV	#7, W0
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
;dsPIC_VGA.c,240 :: 		VGA_COLOR = 0; REP(0, 0, 5, NOP)
	CLR	LATD
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,241 :: 		}
L_end_Draw:
	RETURN
; end of _Draw

_NullDraw:

;dsPIC_VGA.c,243 :: 		void NullDraw() {
;dsPIC_VGA.c,245 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,248 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,251 :: 		VGA_COLOR = 0; REP(0, 0, 5, NOP);
	CLR	LATD
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,252 :: 		}
L_end_NullDraw:
	RETURN
; end of _NullDraw

_NullDraw_less_2_final_cycle:

;dsPIC_VGA.c,254 :: 		void NullDraw_less_2_final_cycle() {
;dsPIC_VGA.c,256 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,259 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,262 :: 		VGA_COLOR = 0; REP(0, 0, 3, NOP)
	CLR	LATD
	NOP
	NOP
	NOP
;dsPIC_VGA.c,263 :: 		}
L_end_NullDraw_less_2_final_cycle:
	RETURN
; end of _NullDraw_less_2_final_cycle

_HSync_nops:

;dsPIC_VGA.c,265 :: 		void HSync_nops() {
;dsPIC_VGA.c,266 :: 		REP(0, 1, 9, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,267 :: 		}
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

;dsPIC_VGA.c,271 :: 		int main()
;dsPIC_VGA.c,273 :: 		config();
	CALL	_config
;dsPIC_VGA.c,275 :: 		while(1) {
L_main0:
;dsPIC_VGA.c,277 :: 		vsync_on;
	BCLR.B	LATEbits, #2
;dsPIC_VGA.c,278 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,279 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,280 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,281 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,282 :: 		vsync_off;
	BSET.B	LATEbits, #2
;dsPIC_VGA.c,285 :: 		REP(0, 2, 3, HSYNC_NOPS NullDraw();)
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
;dsPIC_VGA.c,288 :: 		REP(6, 0, 0, HSYNC_NOPS Draw();)
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
;dsPIC_VGA.c,291 :: 		HSYNC_NOPS NullDraw_less_2_final_cycle();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw_less_2_final_cycle
;dsPIC_VGA.c,292 :: 		}
	GOTO	L_main0
;dsPIC_VGA.c,293 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
