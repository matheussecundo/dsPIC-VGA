
_config:

;dsPIC_VGA.c,80 :: 		void config()
;dsPIC_VGA.c,82 :: 		ADPCFG = 0xFFFF;
	MOV	#65535, W0
	MOV	WREG, ADPCFG
;dsPIC_VGA.c,83 :: 		PORTB=0;
	CLR	PORTB
;dsPIC_VGA.c,84 :: 		PORTC=0;
	CLR	PORTC
;dsPIC_VGA.c,85 :: 		PORTD=0;
	CLR	PORTD
;dsPIC_VGA.c,86 :: 		PORTE=0;
	CLR	PORTE
;dsPIC_VGA.c,88 :: 		TRISE = 0;
	CLR	TRISE
;dsPIC_VGA.c,89 :: 		TRISD = 0;
	CLR	TRISD
;dsPIC_VGA.c,90 :: 		TRISB = 0;
	CLR	TRISB
;dsPIC_VGA.c,91 :: 		}
L_end_config:
	RETURN
; end of _config

_Draw:

;dsPIC_VGA.c,93 :: 		void Draw() {
;dsPIC_VGA.c,95 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,100 :: 		VGA_COLOR = current_vertical_line;
	MOV	_current_vertical_line, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,101 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,102 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,103 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,104 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,105 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,106 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,107 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,108 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,109 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,111 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,112 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,113 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,114 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,115 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,116 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,117 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,118 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,119 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,120 :: 		VGA_COLOR = 1;
	MOV	#1, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,122 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,123 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,124 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,125 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,126 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,127 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,128 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,129 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,130 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,131 :: 		VGA_COLOR = 2;
	MOV	#2, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,133 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,134 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,135 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,136 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,137 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,138 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,139 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,140 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,141 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,142 :: 		VGA_COLOR = 3;
	MOV	#3, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,144 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,145 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,146 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,147 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,148 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,149 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,150 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,151 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,152 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,153 :: 		VGA_COLOR = 4;
	MOV	#4, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,155 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,156 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,157 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,158 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,159 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,160 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,161 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,162 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,163 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,164 :: 		VGA_COLOR = 5;
	MOV	#5, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,166 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,167 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,168 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,169 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,170 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,171 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,172 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,173 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,174 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,175 :: 		VGA_COLOR = 6;
	MOV	#6, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,177 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,178 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,179 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,180 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,181 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,182 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,183 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,184 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,185 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,186 :: 		VGA_COLOR = 7;
	MOV	#7, W0
	MOV	WREG, LATD
;dsPIC_VGA.c,189 :: 		VGA_COLOR = 0;
	CLR	LATD
;dsPIC_VGA.c,190 :: 		current_vertical_line++; // 4 cycles
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
;dsPIC_VGA.c,191 :: 		REP(0, 0, 1, NOP)
	NOP
;dsPIC_VGA.c,192 :: 		}
L_end_Draw:
	RETURN
; end of _Draw

_NullDraw:

;dsPIC_VGA.c,194 :: 		void NullDraw() {
;dsPIC_VGA.c,196 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,199 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,202 :: 		VGA_COLOR = 0; REP(0, 0, 5, NOP);
	CLR	LATD
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,203 :: 		}
L_end_NullDraw:
	RETURN
; end of _NullDraw

_NullDraw_less_2_final_cycle:

;dsPIC_VGA.c,205 :: 		void NullDraw_less_2_final_cycle() {
;dsPIC_VGA.c,207 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,210 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,213 :: 		VGA_COLOR = 0; current_vertical_line = 0; REP(0, 0, 1, NOP)
	CLR	LATD
	CLR	W0
	MOV	W0, _current_vertical_line
	NOP
;dsPIC_VGA.c,214 :: 		}
L_end_NullDraw_less_2_final_cycle:
	RETURN
; end of _NullDraw_less_2_final_cycle

_HSync_nops:

;dsPIC_VGA.c,216 :: 		void HSync_nops() {
;dsPIC_VGA.c,217 :: 		REP(0, 1, 9, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,218 :: 		}
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

;dsPIC_VGA.c,222 :: 		int main()
;dsPIC_VGA.c,224 :: 		config();
	CALL	_config
;dsPIC_VGA.c,226 :: 		while(1) {
L_main0:
;dsPIC_VGA.c,228 :: 		vsync_on;
	BCLR.B	LATEbits, #2
;dsPIC_VGA.c,229 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,230 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,231 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,232 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw
;dsPIC_VGA.c,233 :: 		vsync_off;
	BSET.B	LATEbits, #2
;dsPIC_VGA.c,236 :: 		REP(0, 2, 3, HSYNC_NOPS NullDraw();)
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
;dsPIC_VGA.c,239 :: 		REP(6, 0, 0, HSYNC_NOPS Draw();)
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_Draw
;dsPIC_VGA.c,242 :: 		HSYNC_NOPS NullDraw_less_2_final_cycle();
	BCLR.B	LATEbits, #1
	CALL	_HSync_nops
	BSET.B	LATEbits, #1
	CALL	_NullDraw_less_2_final_cycle
;dsPIC_VGA.c,243 :: 		}
	GOTO	L_main0
;dsPIC_VGA.c,244 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
