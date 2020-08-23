
_rotateL:

;utils.h,23 :: 		void rotateL(unsigned char *start, unsigned char *end)
;utils.h,26 :: 		aux = *start;
; aux start address is: 2 (W1)
	MOV.B	[W10], W1
; aux end address is: 2 (W1)
;utils.h,27 :: 		while (start < end)
L_rotateL0:
; aux start address is: 2 (W1)
	CP	W10, W11
	BRA LTU	L__rotateL58
	GOTO	L_rotateL1
L__rotateL58:
;utils.h,29 :: 		*start = *(start + 1);
	ADD	W10, #1, W0
	MOV.B	[W0], [W10]
;utils.h,30 :: 		start++;
	ADD	W10, #1, W0
	MOV	W0, W10
;utils.h,31 :: 		}
	GOTO	L_rotateL0
L_rotateL1:
;utils.h,32 :: 		*end = aux;
	MOV.B	W1, [W11]
; aux end address is: 2 (W1)
;utils.h,33 :: 		}
L_end_rotateL:
	RETURN
; end of _rotateL

_rotateR:

;utils.h,35 :: 		void rotateR(unsigned char *start, unsigned char *end)
;utils.h,38 :: 		aux = *end;
; aux start address is: 2 (W1)
	MOV.B	[W11], W1
; aux end address is: 2 (W1)
;utils.h,39 :: 		while (start < end)
L_rotateR2:
; aux start address is: 2 (W1)
	CP	W10, W11
	BRA LTU	L__rotateR60
	GOTO	L_rotateR3
L__rotateR60:
;utils.h,41 :: 		*end = *(end - 1);
	SUB	W11, #1, W0
	MOV.B	[W0], [W11]
;utils.h,42 :: 		end--;
	SUB	W11, #1, W0
	MOV	W0, W11
;utils.h,43 :: 		}
	GOTO	L_rotateR2
L_rotateR3:
;utils.h,44 :: 		*start = aux;
	MOV.B	W1, [W10]
; aux end address is: 2 (W1)
;utils.h,45 :: 		}
L_end_rotateR:
	RETURN
; end of _rotateR

_fill:

;utils.h,47 :: 		void fill(unsigned char *data0, unsigned int size, unsigned char value)
;utils.h,50 :: 		for (i = 0; i < size; i++) data0[i] = value;
; i start address is: 2 (W1)
	CLR	W1
; i end address is: 2 (W1)
L_fill4:
; i start address is: 2 (W1)
	CP	W1, W11
	BRA LTU	L__fill62
	GOTO	L_fill5
L__fill62:
	ADD	W10, W1, W0
	MOV.B	W12, [W0]
	INC	W1
; i end address is: 2 (W1)
	GOTO	L_fill4
L_fill5:
;utils.h,51 :: 		}
L_end_fill:
	RETURN
; end of _fill

_copy:

;utils.h,53 :: 		void copy(unsigned char *data0, unsigned char *destination, unsigned int size)
;utils.h,56 :: 		for (i = 0; i < size; i++) destination[i] = data0[i];
; i start address is: 4 (W2)
	CLR	W2
; i end address is: 4 (W2)
L_copy7:
; i start address is: 4 (W2)
	CP	W2, W12
	BRA LTU	L__copy64
	GOTO	L_copy8
L__copy64:
	ADD	W11, W2, W1
	ADD	W10, W2, W0
	MOV.B	[W0], [W1]
	INC	W2
; i end address is: 4 (W2)
	GOTO	L_copy7
L_copy8:
;utils.h,57 :: 		}
L_end_copy:
	RETURN
; end of _copy

_compare:

;utils.h,59 :: 		char compare(unsigned char *data0, unsigned char *data1, unsigned int size)
;utils.h,62 :: 		for (i = 0; i < size; i++)
; i start address is: 4 (W2)
	CLR	W2
; i end address is: 4 (W2)
L_compare10:
; i start address is: 4 (W2)
	CP	W2, W12
	BRA LTU	L__compare66
	GOTO	L_compare11
L__compare66:
;utils.h,64 :: 		if (data0[i] != data1[i]) {
	ADD	W10, W2, W0
	ADD	W11, W2, W1
	MOV.B	[W0], W0
	CP.B	W0, [W1]
	BRA NZ	L__compare67
	GOTO	L_compare13
L__compare67:
;utils.h,65 :: 		if (data0[i] < data1[i]) {
	ADD	W10, W2, W0
	ADD	W11, W2, W1
; i end address is: 4 (W2)
	MOV.B	[W0], W0
	CP.B	W0, [W1]
	BRA LTU	L__compare68
	GOTO	L_compare14
L__compare68:
;utils.h,66 :: 		return -1;
	MOV.B	#255, W0
	GOTO	L_end_compare
;utils.h,67 :: 		} else {
L_compare14:
;utils.h,68 :: 		return 1;
	MOV.B	#1, W0
	GOTO	L_end_compare
;utils.h,70 :: 		}
L_compare13:
;utils.h,62 :: 		for (i = 0; i < size; i++)
; i start address is: 4 (W2)
	INC	W2
;utils.h,71 :: 		}
; i end address is: 4 (W2)
	GOTO	L_compare10
L_compare11:
;utils.h,72 :: 		return 0;
	CLR	W0
;utils.h,73 :: 		}
L_end_compare:
	RETURN
; end of _compare

_toupper_str:

;utils.h,75 :: 		void toupper_str(unsigned char *str)
;utils.h,77 :: 		while (*str)
L_toupper_str16:
	CP0.B	[W10]
	BRA NZ	L__toupper_str70
	GOTO	L_toupper_str17
L__toupper_str70:
;utils.h,79 :: 		*str = toupper(*str);
	PUSH	W10
	MOV.B	[W10], W10
	CALL	_toupper
	POP	W10
	MOV.B	W0, [W10]
;utils.h,80 :: 		str++;
	ADD	W10, #1, W0
	MOV	W0, W10
;utils.h,81 :: 		}
	GOTO	L_toupper_str16
L_toupper_str17:
;utils.h,82 :: 		}
L_end_toupper_str:
	RETURN
; end of _toupper_str

_config:

;dsPIC_VGA.c,37 :: 		void config()
;dsPIC_VGA.c,39 :: 		ADPCFG = 0xFFFF;
	MOV	#65535, W0
	MOV	WREG, ADPCFG
;dsPIC_VGA.c,41 :: 		PORTB=0;
	CLR	PORTB
;dsPIC_VGA.c,42 :: 		PORTD=0;
	CLR	PORTD
;dsPIC_VGA.c,44 :: 		PORTF=0;
	CLR	PORTF
;dsPIC_VGA.c,46 :: 		TRISB = 0xf;
	MOV	#15, W0
	MOV	WREG, TRISB
;dsPIC_VGA.c,47 :: 		TRISD = 0;
	CLR	TRISD
;dsPIC_VGA.c,49 :: 		TRISF = 0;
	CLR	TRISF
;dsPIC_VGA.c,50 :: 		}
L_end_config:
	RETURN
; end of _config

_Draw_0:

;dsPIC_VGA.c,103 :: 		DEFINE_DRAW(0)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+2, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+2, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+4, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+4, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+6, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+6, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+8, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+8, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+10, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+10, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+12, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+12, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+14, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+14, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+16, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+16, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+18, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+18, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+20, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+20, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+22, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+22, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+24, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+24, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+26, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+26, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+28, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+28, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+30, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+30, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+32, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+32, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+34, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+34, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+36, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+36, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+38, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+38, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_0:
	RETURN
; end of _Draw_0

_Draw_1:

;dsPIC_VGA.c,104 :: 		DEFINE_DRAW(1)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+40, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+40, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+42, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+42, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+44, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+44, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+46, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+46, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+48, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+48, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+50, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+50, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+52, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+52, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+54, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+54, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+56, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+56, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+58, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+58, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+60, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+60, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+62, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+62, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+64, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+64, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+66, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+66, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+68, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+68, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+70, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+70, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+72, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+72, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+74, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+74, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+76, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+76, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+78, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+78, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_1:
	RETURN
; end of _Draw_1

_Draw_2:

;dsPIC_VGA.c,105 :: 		DEFINE_DRAW(2)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+80, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+80, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+82, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+82, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+84, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+84, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+86, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+86, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+88, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+88, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+90, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+90, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+92, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+92, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+94, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+94, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+96, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+96, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+98, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+98, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+100, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+100, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+102, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+102, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+104, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+104, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+106, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+106, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+108, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+108, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+110, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+110, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+112, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+112, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+114, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+114, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+116, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+116, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+118, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+118, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_2:
	RETURN
; end of _Draw_2

_Draw_3:

;dsPIC_VGA.c,106 :: 		DEFINE_DRAW(3)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+120, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+120, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+122, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+122, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+124, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+124, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+126, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+126, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+128, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+128, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+130, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+130, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+132, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+132, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+134, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+134, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+136, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+136, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+138, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+138, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+140, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+140, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+142, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+142, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+144, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+144, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+146, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+146, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+148, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+148, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+150, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+150, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+152, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+152, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+154, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+154, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+156, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+156, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+158, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+158, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_3:
	RETURN
; end of _Draw_3

_Draw_4:

;dsPIC_VGA.c,107 :: 		DEFINE_DRAW(4)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+160, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+160, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+162, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+162, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+164, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+164, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+166, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+166, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+168, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+168, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+170, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+170, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+172, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+172, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+174, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+174, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+176, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+176, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+178, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+178, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+180, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+180, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+182, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+182, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+184, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+184, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+186, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+186, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+188, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+188, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+190, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+190, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+192, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+192, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+194, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+194, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+196, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+196, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+198, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+198, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_4:
	RETURN
; end of _Draw_4

_Draw_5:

;dsPIC_VGA.c,108 :: 		DEFINE_DRAW(5)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+200, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+200, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+202, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+202, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+204, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+204, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+206, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+206, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+208, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+208, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+210, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+210, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+212, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+212, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+214, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+214, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+216, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+216, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+218, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+218, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+220, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+220, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+222, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+222, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+224, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+224, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+226, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+226, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+228, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+228, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+230, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+230, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+232, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+232, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+234, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+234, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+236, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+236, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+238, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+238, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_5:
	RETURN
; end of _Draw_5

_Draw_6:

;dsPIC_VGA.c,109 :: 		DEFINE_DRAW(6)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+240, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+240, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+242, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+242, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+244, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+244, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+246, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+246, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+248, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+248, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+250, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+250, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+252, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+252, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+254, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+254, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+256, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+256, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+258, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+258, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+260, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+260, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+262, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+262, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+264, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+264, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+266, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+266, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+268, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+268, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+270, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+270, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+272, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+272, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+274, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+274, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+276, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+276, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+278, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+278, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_6:
	RETURN
; end of _Draw_6

_Draw_7:

;dsPIC_VGA.c,110 :: 		DEFINE_DRAW(7)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+280, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+280, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+282, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+282, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+284, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+284, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+286, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+286, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+288, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+288, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+290, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+290, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+292, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+292, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+294, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+294, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+296, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+296, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+298, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+298, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+300, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+300, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+302, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+302, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+304, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+304, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+306, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+306, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+308, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+308, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+310, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+310, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+312, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+312, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+314, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+314, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+316, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+316, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+318, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+318, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_7:
	RETURN
; end of _Draw_7

_Draw_8:

;dsPIC_VGA.c,111 :: 		DEFINE_DRAW(8)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+320, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+320, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+322, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+322, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+324, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+324, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+326, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+326, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+328, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+328, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+330, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+330, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+332, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+332, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+334, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+334, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+336, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+336, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+338, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+338, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+340, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+340, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+342, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+342, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+344, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+344, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+346, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+346, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+348, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+348, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+350, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+350, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+352, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+352, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+354, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+354, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+356, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+356, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+358, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+358, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_8:
	RETURN
; end of _Draw_8

_Draw_9:

;dsPIC_VGA.c,112 :: 		DEFINE_DRAW(9)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+360, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+360, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+362, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+362, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+364, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+364, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+366, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+366, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+368, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+368, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+370, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+370, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+372, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+372, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+374, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+374, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+376, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+376, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+378, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+378, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+380, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+380, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+382, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+382, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+384, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+384, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+386, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+386, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+388, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+388, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+390, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+390, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+392, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+392, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+394, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+394, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+396, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+396, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+398, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+398, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_9:
	RETURN
; end of _Draw_9

_Draw_10:

;dsPIC_VGA.c,113 :: 		DEFINE_DRAW(10)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+400, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+400, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+402, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+402, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+404, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+404, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+406, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+406, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+408, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+408, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+410, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+410, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+412, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+412, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+414, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+414, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+416, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+416, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+418, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+418, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+420, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+420, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+422, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+422, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+424, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+424, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+426, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+426, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+428, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+428, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+430, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+430, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+432, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+432, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+434, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+434, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+436, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+436, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+438, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+438, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_10:
	RETURN
; end of _Draw_10

_Draw_11:

;dsPIC_VGA.c,114 :: 		DEFINE_DRAW(11)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+440, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+440, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+442, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+442, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+444, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+444, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+446, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+446, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+448, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+448, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+450, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+450, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+452, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+452, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+454, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+454, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+456, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+456, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+458, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+458, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+460, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+460, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+462, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+462, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+464, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+464, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+466, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+466, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+468, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+468, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+470, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+470, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+472, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+472, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+474, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+474, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+476, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+476, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+478, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+478, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_11:
	RETURN
; end of _Draw_11

_Draw_12:

;dsPIC_VGA.c,115 :: 		DEFINE_DRAW(12)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+480, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+480, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+482, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+482, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+484, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+484, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+486, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+486, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+488, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+488, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+490, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+490, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+492, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+492, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+494, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+494, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+496, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+496, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+498, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+498, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+500, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+500, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+502, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+502, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+504, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+504, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+506, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+506, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+508, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+508, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+510, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+510, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+512, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+512, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+514, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+514, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+516, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+516, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+518, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+518, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_12:
	RETURN
; end of _Draw_12

_Draw_13:

;dsPIC_VGA.c,116 :: 		DEFINE_DRAW(13)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+520, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+520, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+522, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+522, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+524, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+524, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+526, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+526, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+528, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+528, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+530, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+530, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+532, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+532, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+534, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+534, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+536, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+536, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+538, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+538, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+540, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+540, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+542, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+542, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+544, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+544, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+546, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+546, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+548, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+548, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+550, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+550, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+552, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+552, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+554, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+554, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+556, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+556, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+558, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+558, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_13:
	RETURN
; end of _Draw_13

_Draw_14:

;dsPIC_VGA.c,117 :: 		DEFINE_DRAW(14)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+560, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+560, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+562, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+562, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+564, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+564, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+566, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+566, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+568, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+568, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+570, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+570, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+572, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+572, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+574, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+574, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+576, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+576, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+578, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+578, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+580, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+580, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+582, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+582, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+584, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+584, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+586, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+586, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+588, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+588, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+590, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+590, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+592, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+592, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+594, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+594, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+596, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+596, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+598, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+598, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_14:
	RETURN
; end of _Draw_14

_Draw_15:

;dsPIC_VGA.c,118 :: 		DEFINE_DRAW(15)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+600, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+600, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+602, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+602, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+604, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+604, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+606, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+606, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+608, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+608, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+610, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+610, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+612, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+612, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+614, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+614, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+616, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+616, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+618, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+618, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+620, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+620, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+622, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+622, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+624, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+624, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+626, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+626, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+628, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+628, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+630, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+630, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+632, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+632, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+634, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+634, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+636, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+636, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+638, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+638, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_15:
	RETURN
; end of _Draw_15

_Draw_16:

;dsPIC_VGA.c,119 :: 		DEFINE_DRAW(16)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+640, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+640, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+642, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+642, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+644, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+644, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+646, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+646, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+648, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+648, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+650, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+650, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+652, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+652, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+654, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+654, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+656, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+656, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+658, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+658, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+660, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+660, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+662, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+662, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+664, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+664, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+666, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+666, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+668, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+668, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+670, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+670, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+672, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+672, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+674, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+674, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+676, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+676, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+678, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+678, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_16:
	RETURN
; end of _Draw_16

_Draw_17:

;dsPIC_VGA.c,120 :: 		DEFINE_DRAW(17)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+680, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+680, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+682, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+682, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+684, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+684, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+686, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+686, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+688, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+688, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+690, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+690, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+692, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+692, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+694, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+694, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+696, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+696, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+698, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+698, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+700, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+700, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+702, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+702, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+704, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+704, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+706, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+706, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+708, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+708, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+710, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+710, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+712, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+712, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+714, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+714, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+716, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+716, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+718, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+718, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_17:
	RETURN
; end of _Draw_17

_Draw_18:

;dsPIC_VGA.c,121 :: 		DEFINE_DRAW(18)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+720, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+720, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+722, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+722, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+724, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+724, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+726, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+726, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+728, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+728, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+730, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+730, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+732, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+732, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+734, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+734, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+736, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+736, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+738, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+738, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+740, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+740, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+742, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+742, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+744, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+744, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+746, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+746, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+748, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+748, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+750, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+750, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+752, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+752, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+754, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+754, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+756, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+756, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+758, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+758, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_18:
	RETURN
; end of _Draw_18

_Draw_19:

;dsPIC_VGA.c,122 :: 		DEFINE_DRAW(19)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+760, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+760, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+762, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+762, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+764, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+764, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+766, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+766, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+768, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+768, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+770, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+770, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+772, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+772, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+774, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+774, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+776, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+776, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+778, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+778, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+780, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+780, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+782, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+782, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+784, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+784, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+786, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+786, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+788, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+788, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+790, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+790, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+792, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+792, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+794, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+794, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+796, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+796, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+798, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+798, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_19:
	RETURN
; end of _Draw_19

_Draw_20:

;dsPIC_VGA.c,123 :: 		DEFINE_DRAW(20)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+800, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+800, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+802, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+802, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+804, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+804, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+806, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+806, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+808, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+808, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+810, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+810, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+812, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+812, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+814, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+814, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+816, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+816, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+818, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+818, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+820, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+820, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+822, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+822, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+824, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+824, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+826, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+826, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+828, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+828, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+830, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+830, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+832, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+832, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+834, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+834, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+836, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+836, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+838, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+838, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_20:
	RETURN
; end of _Draw_20

_Draw_21:

;dsPIC_VGA.c,124 :: 		DEFINE_DRAW(21)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+840, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+840, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+842, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+842, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+844, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+844, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+846, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+846, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+848, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+848, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+850, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+850, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+852, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+852, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+854, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+854, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+856, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+856, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+858, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+858, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+860, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+860, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+862, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+862, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+864, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+864, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+866, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+866, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+868, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+868, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+870, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+870, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+872, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+872, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+874, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+874, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+876, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+876, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+878, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+878, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_21:
	RETURN
; end of _Draw_21

_Draw_22:

;dsPIC_VGA.c,125 :: 		DEFINE_DRAW(22)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+880, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+880, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+882, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+882, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+884, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+884, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+886, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+886, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+888, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+888, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+890, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+890, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+892, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+892, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+894, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+894, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+896, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+896, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+898, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+898, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+900, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+900, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+902, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+902, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+904, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+904, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+906, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+906, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+908, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+908, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+910, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+910, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+912, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+912, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+914, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+914, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+916, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+916, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+918, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+918, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_22:
	RETURN
; end of _Draw_22

_Draw_23:

;dsPIC_VGA.c,126 :: 		DEFINE_DRAW(23)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+920, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+920, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+922, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+922, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+924, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+924, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+926, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+926, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+928, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+928, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+930, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+930, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+932, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+932, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+934, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+934, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+936, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+936, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+938, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+938, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+940, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+940, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+942, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+942, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+944, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+944, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+946, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+946, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+948, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+948, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+950, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+950, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+952, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+952, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+954, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+954, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+956, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+956, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+958, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+958, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_23:
	RETURN
; end of _Draw_23

_Draw_24:

;dsPIC_VGA.c,127 :: 		DEFINE_DRAW(24)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+960, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+960, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+962, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+962, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+964, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+964, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+966, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+966, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+968, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+968, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+970, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+970, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+972, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+972, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+974, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+974, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+976, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+976, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+978, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+978, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+980, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+980, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+982, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+982, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+984, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+984, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+986, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+986, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+988, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+988, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+990, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+990, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+992, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+992, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+994, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+994, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+996, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+996, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+998, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+998, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_24:
	RETURN
; end of _Draw_24

_Draw_25:

;dsPIC_VGA.c,128 :: 		DEFINE_DRAW(25)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+1000, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1000, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1002, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1002, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1004, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1004, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1006, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1006, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1008, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1008, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1010, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1010, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1012, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1012, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1014, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1014, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1016, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1016, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1018, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1018, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1020, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1020, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1022, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1022, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1024, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1024, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1026, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1026, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1028, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1028, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1030, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1030, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1032, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1032, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1034, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1034, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1036, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1036, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1038, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1038, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_25:
	RETURN
; end of _Draw_25

_Draw_26:

;dsPIC_VGA.c,129 :: 		DEFINE_DRAW(26)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+1040, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1040, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1042, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1042, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1044, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1044, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1046, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1046, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1048, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1048, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1050, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1050, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1052, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1052, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1054, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1054, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1056, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1056, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1058, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1058, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1060, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1060, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1062, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1062, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1064, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1064, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1066, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1066, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1068, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1068, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1070, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1070, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1072, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1072, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1074, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1074, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1076, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1076, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1078, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1078, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_26:
	RETURN
; end of _Draw_26

_Draw_27:

;dsPIC_VGA.c,130 :: 		DEFINE_DRAW(27)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+1080, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1080, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1082, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1082, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1084, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1084, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1086, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1086, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1088, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1088, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1090, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1090, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1092, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1092, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1094, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1094, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1096, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1096, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1098, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1098, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1100, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1100, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1102, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1102, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1104, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1104, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1106, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1106, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1108, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1108, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1110, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1110, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1112, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1112, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1114, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1114, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1116, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1116, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1118, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1118, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_27:
	RETURN
; end of _Draw_27

_Draw_28:

;dsPIC_VGA.c,131 :: 		DEFINE_DRAW(28)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+1120, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1120, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1122, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1122, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1124, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1124, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1126, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1126, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1128, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1128, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1130, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1130, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1132, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1132, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1134, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1134, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1136, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1136, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1138, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1138, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1140, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1140, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1142, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1142, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1144, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1144, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1146, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1146, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1148, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1148, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1150, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1150, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1152, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1152, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1154, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1154, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1156, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1156, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1158, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1158, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_28:
	RETURN
; end of _Draw_28

_Draw_29:

;dsPIC_VGA.c,132 :: 		DEFINE_DRAW(29)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	MOV	_matrix+1160, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1160, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1162, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1162, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1164, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1164, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1166, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1166, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1168, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1168, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1170, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1170, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1172, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1172, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1174, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1174, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1176, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1176, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1178, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1178, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1180, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1180, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1182, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1182, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1184, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1184, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1186, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1186, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1188, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1188, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1190, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1190, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1192, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1192, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1194, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1194, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1196, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1196, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	MOV	_matrix+1198, W0
	MOV	WREG, LATD
	NOP
	MOV	_matrix+1198, W0
	LSR	W0, #8, W0
	MOV	WREG, LATD
	NOP
	NOP
	NOP
	NOP
	CLR	LATD
	MOV	#1, W1
	MOV	#lo_addr(_current_vertical_line), W0
	ADD	W1, [W0], [W0]
	NOP
L_end_Draw_29:
	RETURN
; end of _Draw_29

_NullDraw:

;dsPIC_VGA.c,134 :: 		void NullDraw() {
;dsPIC_VGA.c,136 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,139 :: 		REP(1, 6, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,142 :: 		VGA_COLOR = 0; REP(0, 0, 5, NOP);
	CLR	LATD
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,143 :: 		}
L_end_NullDraw:
	RETURN
; end of _NullDraw

_HSync_nops:

;dsPIC_VGA.c,145 :: 		void HSync_nops() {
;dsPIC_VGA.c,146 :: 		REP(0, 1, 9, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,147 :: 		}
L_end_HSync_nops:
	RETURN
; end of _HSync_nops

_snakeInit:

;dsPIC_VGA.c,154 :: 		void snakeInit() {
;dsPIC_VGA.c,155 :: 		copy(matrix_default, matrix, MATRIX_LINES * MATRIX_COLUMNS);
	PUSH	W10
	PUSH	W11
	PUSH	W12
	MOV	#1200, W12
	MOV	#lo_addr(_matrix), W11
	MOV	#lo_addr(_matrix_default), W10
	CALL	_copy
;dsPIC_VGA.c,157 :: 		snake.apple_pos = &matrix[5 * MATRIX_COLUMNS + 19];
	MOV	#lo_addr(_matrix+219), W0
	MOV	W0, _snake+12
;dsPIC_VGA.c,158 :: 		*snake.apple_pos = 5;
	MOV	_snake+12, W1
	MOV.B	#5, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,159 :: 		snake.apple_qtd = 0;
	CLR	W0
	MOV	W0, _snake+14
;dsPIC_VGA.c,160 :: 		snake.ipos = &matrix[20 * MATRIX_COLUMNS + 19];
	MOV	#lo_addr(_matrix+819), W0
	MOV	W0, _snake
;dsPIC_VGA.c,161 :: 		snake.fpos = &matrix[21 * MATRIX_COLUMNS + 19];
	MOV	#lo_addr(_matrix+859), W0
	MOV	W0, _snake+6
;dsPIC_VGA.c,162 :: 		*snake.ipos = 0b10010001;
	MOV	_snake, W1
	MOV.B	#145, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,163 :: 		*snake.fpos = 0b10010001;
	MOV	_snake+6, W1
	MOV.B	#145, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,164 :: 		snake.idir = 0b1001;
	MOV	#lo_addr(_snake+2), W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,165 :: 		snake.idirx = 0;
	MOV	#lo_addr(_snake+3), W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,166 :: 		snake.idiry = -1;
	MOV	#lo_addr(_snake+4), W1
	MOV.B	#255, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,167 :: 		snake.fdir = 0b1001;
	MOV	#lo_addr(_snake+8), W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,168 :: 		snake.fdirx = 0;
	MOV	#lo_addr(_snake+9), W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,169 :: 		snake.fdiry = -1;
	MOV	#lo_addr(_snake+10), W1
	MOV.B	#255, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,170 :: 		}
L_end_snakeInit:
	POP	W12
	POP	W11
	POP	W10
	RETURN
; end of _snakeInit

_SNAKE_NullDraw_less_2_final_cycle:

;dsPIC_VGA.c,172 :: 		void SNAKE_NullDraw_less_2_final_cycle() {
;dsPIC_VGA.c,174 :: 		REP(0, 1, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,177 :: 		if (current_vertical_line >= update_frame) {
	MOV	_current_vertical_line, W1
	MOV	#7200, W0
	CP	W1, W0
	BRA GEU	L__SNAKE_NullDraw_less_2_final_cycle106
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle18
L__SNAKE_NullDraw_less_2_final_cycle106:
;dsPIC_VGA.c,180 :: 		if (PORTBbits.RB0 && snake.idirx != 1) {
	BTSS	PORTBbits, #0
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle50
	MOV	#lo_addr(_snake+3), W0
	MOV.B	[W0], W0
	CP.B	W0, #1
	BRA NZ	L__SNAKE_NullDraw_less_2_final_cycle107
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle49
L__SNAKE_NullDraw_less_2_final_cycle107:
L__SNAKE_NullDraw_less_2_final_cycle48:
;dsPIC_VGA.c,181 :: 		snake.idir = 0b0110;
	MOV	#lo_addr(_snake+2), W1
	MOV.B	#6, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,182 :: 		snake.idirx = -1;
	MOV	#lo_addr(_snake+3), W1
	MOV.B	#255, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,183 :: 		snake.idiry = 0;
	MOV	#lo_addr(_snake+4), W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,184 :: 		*snake.ipos = (*snake.ipos & 0xf) | 0b01100000;
	MOV	_snake, W0
	ZE	[W0], W0
	AND	W0, #15, W1
	MOV	#96, W0
	IOR	W1, W0, W1
	MOV	_snake, W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,185 :: 		REP(0,2,7, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,186 :: 		} else if (PORTBbits.RB1 && snake.idiry != 1) {
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle22
;dsPIC_VGA.c,180 :: 		if (PORTBbits.RB0 && snake.idirx != 1) {
L__SNAKE_NullDraw_less_2_final_cycle50:
L__SNAKE_NullDraw_less_2_final_cycle49:
;dsPIC_VGA.c,186 :: 		} else if (PORTBbits.RB1 && snake.idiry != 1) {
	BTSS	PORTBbits, #1
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle52
	MOV	#lo_addr(_snake+4), W0
	MOV.B	[W0], W0
	CP.B	W0, #1
	BRA NZ	L__SNAKE_NullDraw_less_2_final_cycle108
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle51
L__SNAKE_NullDraw_less_2_final_cycle108:
L__SNAKE_NullDraw_less_2_final_cycle47:
;dsPIC_VGA.c,187 :: 		snake.idir = 0b1001;
	MOV	#lo_addr(_snake+2), W1
	MOV.B	#9, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,188 :: 		snake.idirx = 0;
	MOV	#lo_addr(_snake+3), W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,189 :: 		snake.idiry = -1;
	MOV	#lo_addr(_snake+4), W1
	MOV.B	#255, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,190 :: 		*snake.ipos = (*snake.ipos & 0xf) | 0b10010000;
	MOV	_snake, W0
	ZE	[W0], W0
	AND	W0, #15, W1
	MOV	#144, W0
	IOR	W1, W0, W1
	MOV	_snake, W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,191 :: 		REP(0,2,0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,192 :: 		} else if (PORTBbits.RB2 && snake.idirx != -1) {
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle26
;dsPIC_VGA.c,186 :: 		} else if (PORTBbits.RB1 && snake.idiry != 1) {
L__SNAKE_NullDraw_less_2_final_cycle52:
L__SNAKE_NullDraw_less_2_final_cycle51:
;dsPIC_VGA.c,192 :: 		} else if (PORTBbits.RB2 && snake.idirx != -1) {
	BTSS	PORTBbits, #2
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle54
	MOV	#lo_addr(_snake+3), W0
	MOV.B	[W0], W1
	MOV.B	#255, W0
	CP.B	W1, W0
	BRA NZ	L__SNAKE_NullDraw_less_2_final_cycle109
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle53
L__SNAKE_NullDraw_less_2_final_cycle109:
L__SNAKE_NullDraw_less_2_final_cycle46:
;dsPIC_VGA.c,193 :: 		snake.idir = 0b1110;
	MOV	#lo_addr(_snake+2), W1
	MOV.B	#14, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,194 :: 		snake.idirx = 1;
	MOV	#lo_addr(_snake+3), W1
	MOV.B	#1, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,195 :: 		snake.idiry = 0;
	MOV	#lo_addr(_snake+4), W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,196 :: 		*snake.ipos = (*snake.ipos & 0xf) | 0b11100000;
	MOV	_snake, W0
	ZE	[W0], W0
	AND	W0, #15, W1
	MOV	#224, W0
	IOR	W1, W0, W1
	MOV	_snake, W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,197 :: 		REP(0,1,3, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,198 :: 		} else if (PORTBbits.RB3 && snake.idiry != -1) {
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle30
;dsPIC_VGA.c,192 :: 		} else if (PORTBbits.RB2 && snake.idirx != -1) {
L__SNAKE_NullDraw_less_2_final_cycle54:
L__SNAKE_NullDraw_less_2_final_cycle53:
;dsPIC_VGA.c,198 :: 		} else if (PORTBbits.RB3 && snake.idiry != -1) {
	BTSS	PORTBbits, #3
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle56
	MOV	#lo_addr(_snake+4), W0
	MOV.B	[W0], W1
	MOV.B	#255, W0
	CP.B	W1, W0
	BRA NZ	L__SNAKE_NullDraw_less_2_final_cycle110
	GOTO	L__SNAKE_NullDraw_less_2_final_cycle55
L__SNAKE_NullDraw_less_2_final_cycle110:
L__SNAKE_NullDraw_less_2_final_cycle45:
;dsPIC_VGA.c,199 :: 		snake.idir = 0b1011;
	MOV	#lo_addr(_snake+2), W1
	MOV.B	#11, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,200 :: 		snake.idirx = 0;
	MOV	#lo_addr(_snake+3), W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,201 :: 		snake.idiry = 1;
	MOV	#lo_addr(_snake+4), W1
	MOV.B	#1, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,202 :: 		*snake.ipos = (*snake.ipos & 0xf) | 0b10110000;
	MOV	_snake, W0
	ZE	[W0], W0
	AND	W0, #15, W1
	MOV	#176, W0
	IOR	W1, W0, W1
	MOV	_snake, W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,203 :: 		REP(0,0,6, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,204 :: 		} else {
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle34
;dsPIC_VGA.c,198 :: 		} else if (PORTBbits.RB3 && snake.idiry != -1) {
L__SNAKE_NullDraw_less_2_final_cycle56:
L__SNAKE_NullDraw_less_2_final_cycle55:
;dsPIC_VGA.c,205 :: 		snake.idir = (*snake.ipos) >> 4;
	MOV	_snake, W0
	MOV.B	[W0], W0
	ZE	W0, W0
	LSR	W0, #4, W1
	MOV	#lo_addr(_snake+2), W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,206 :: 		snake.idirx = (snake.idir >> 2) - 2;
	SE	W1, W0
	ASR	W0, #2, W0
	SE	W0, W0
	SUB	W0, #2, W1
	MOV	#lo_addr(_snake+3), W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,207 :: 		snake.idiry = (snake.idir & 0x3) - 2;
	MOV	#lo_addr(_snake+2), W0
	SE	[W0], W0
	AND	W0, #3, W0
	SUB	W0, #2, W1
	MOV	#lo_addr(_snake+4), W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,208 :: 		}
L_SNAKE_NullDraw_less_2_final_cycle34:
L_SNAKE_NullDraw_less_2_final_cycle30:
L_SNAKE_NullDraw_less_2_final_cycle26:
L_SNAKE_NullDraw_less_2_final_cycle22:
;dsPIC_VGA.c,212 :: 		snake.fdir = (*snake.fpos) >> 4;
	MOV	_snake+6, W0
	MOV.B	[W0], W0
	ZE	W0, W0
	LSR	W0, #4, W1
	MOV	#lo_addr(_snake+8), W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,213 :: 		snake.fdirx = (snake.fdir >> 2) - 2;
	SE	W1, W0
	ASR	W0, #2, W0
	SE	W0, W0
	SUB	W0, #2, W1
	MOV	#lo_addr(_snake+9), W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,214 :: 		snake.fdiry = (snake.fdir & 0x3) - 2;
	MOV	#lo_addr(_snake+8), W0
	SE	[W0], W0
	AND	W0, #3, W0
	SUB	W0, #2, W1
	MOV	#lo_addr(_snake+10), W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,218 :: 		current_vertical_line = 0;
	CLR	W0
	MOV	W0, _current_vertical_line
;dsPIC_VGA.c,222 :: 		snake.ipos = snake.ipos + snake.idiry * MATRIX_COLUMNS + snake.idirx;
	MOV	#lo_addr(_snake+4), W0
	SE	[W0], W1
	MOV	#40, W0
	MUL.SS	W1, W0, W2
	MOV	#lo_addr(_snake), W0
	ADD	W2, [W0], W1
	MOV	#lo_addr(_snake+3), W0
	SE	[W0], W0
	ADD	W1, W0, W0
	MOV	W0, _snake
;dsPIC_VGA.c,226 :: 		if ((*snake.ipos & 0x7) == 1) {
	ZE	[W0], W0
	AND	W0, #7, W0
	CP	W0, #1
	BRA Z	L__SNAKE_NullDraw_less_2_final_cycle111
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle35
L__SNAKE_NullDraw_less_2_final_cycle111:
;dsPIC_VGA.c,228 :: 		snakeInit();
	CALL	_snakeInit
;dsPIC_VGA.c,230 :: 		}
L_SNAKE_NullDraw_less_2_final_cycle35:
;dsPIC_VGA.c,234 :: 		if (*snake.ipos == 7) {
	MOV	_snake, W0
	MOV.B	[W0], W0
	CP.B	W0, #7
	BRA Z	L__SNAKE_NullDraw_less_2_final_cycle112
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle36
L__SNAKE_NullDraw_less_2_final_cycle112:
;dsPIC_VGA.c,236 :: 		snakeInit();
	CALL	_snakeInit
;dsPIC_VGA.c,238 :: 		}
L_SNAKE_NullDraw_less_2_final_cycle36:
;dsPIC_VGA.c,242 :: 		if (*snake.ipos == 0) {
	MOV	_snake, W0
	MOV.B	[W0], W0
	CP.B	W0, #0
	BRA Z	L__SNAKE_NullDraw_less_2_final_cycle113
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle37
L__SNAKE_NullDraw_less_2_final_cycle113:
;dsPIC_VGA.c,244 :: 		*snake.fpos = 0;
	MOV	_snake+6, W1
	CLR	W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,246 :: 		snake.fpos = snake.fpos + snake.fdiry * MATRIX_COLUMNS + snake.fdirx;
	MOV	#lo_addr(_snake+10), W0
	SE	[W0], W1
	MOV	#40, W0
	MUL.SS	W1, W0, W2
	MOV	#lo_addr(_snake+6), W0
	ADD	W2, [W0], W1
	MOV	#lo_addr(_snake+9), W0
	SE	[W0], W0
	ADD	W1, W0, W0
	MOV	W0, _snake+6
;dsPIC_VGA.c,248 :: 		} else {
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle38
L_SNAKE_NullDraw_less_2_final_cycle37:
;dsPIC_VGA.c,250 :: 		REP(0,0,3, NOP)
	NOP
	NOP
	NOP
;dsPIC_VGA.c,252 :: 		REP(0,1,0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,254 :: 		}
L_SNAKE_NullDraw_less_2_final_cycle38:
;dsPIC_VGA.c,258 :: 		*snake.ipos = (snake.idir << 4) | 1;
	MOV	#lo_addr(_snake+2), W0
	SE	[W0], W0
	SL	W0, #4, W0
	IOR	W0, #1, W1
	MOV	_snake, W0
	MOV.B	W1, [W0]
;dsPIC_VGA.c,261 :: 		REP(0, 4, 5, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,262 :: 		} else {
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle39
L_SNAKE_NullDraw_less_2_final_cycle18:
;dsPIC_VGA.c,263 :: 		if (*snake.apple_pos != 5) {
	MOV	_snake+12, W0
	MOV.B	[W0], W0
	CP.B	W0, #5
	BRA NZ	L__SNAKE_NullDraw_less_2_final_cycle114
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle40
L__SNAKE_NullDraw_less_2_final_cycle114:
;dsPIC_VGA.c,264 :: 		int index = rand() % MATRIX_SIZE;
	CALL	_rand
	MOV	#1200, W2
	REPEAT	#17
	DIV.S	W0, W2
	MOV	W1, W0
; index start address is: 4 (W2)
	MOV	W0, W2
; index end address is: 4 (W2)
;dsPIC_VGA.c,265 :: 		while (matrix[index] != 0)
L_SNAKE_NullDraw_less_2_final_cycle41:
; index start address is: 4 (W2)
	MOV	#lo_addr(_matrix), W0
	ADD	W0, W2, W0
	MOV.B	[W0], W0
	CP.B	W0, #0
	BRA NZ	L__SNAKE_NullDraw_less_2_final_cycle115
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle42
L__SNAKE_NullDraw_less_2_final_cycle115:
; index end address is: 4 (W2)
;dsPIC_VGA.c,267 :: 		index = rand() % MATRIX_SIZE;
	CALL	_rand
	MOV	#1200, W2
	REPEAT	#17
	DIV.S	W0, W2
	MOV	W1, W0
; index start address is: 4 (W2)
	MOV	W0, W2
;dsPIC_VGA.c,268 :: 		}
	GOTO	L_SNAKE_NullDraw_less_2_final_cycle41
L_SNAKE_NullDraw_less_2_final_cycle42:
;dsPIC_VGA.c,269 :: 		snake.apple_pos = &matrix[index];
	MOV	#lo_addr(_matrix), W0
	ADD	W0, W2, W1
; index end address is: 4 (W2)
	MOV	W1, _snake+12
;dsPIC_VGA.c,270 :: 		*snake.apple_pos = 5;
	MOV.B	#5, W0
	MOV.B	W0, [W1]
;dsPIC_VGA.c,271 :: 		snake.apple_qtd++;
	MOV	_snake+14, W0
	INC	W0
	MOV	W0, _snake+14
;dsPIC_VGA.c,272 :: 		}
L_SNAKE_NullDraw_less_2_final_cycle40:
;dsPIC_VGA.c,273 :: 		REP(1, 5, 0, NOP)
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
;dsPIC_VGA.c,274 :: 		}
L_SNAKE_NullDraw_less_2_final_cycle39:
;dsPIC_VGA.c,278 :: 		VGA_COLOR = 0; REP(0, 0, 3, NOP)
	CLR	LATD
	NOP
	NOP
	NOP
;dsPIC_VGA.c,279 :: 		}
L_end_SNAKE_NullDraw_less_2_final_cycle:
	RETURN
; end of _SNAKE_NullDraw_less_2_final_cycle

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68

;dsPIC_VGA.c,281 :: 		int main()
;dsPIC_VGA.c,283 :: 		config();
	CALL	_config
;dsPIC_VGA.c,284 :: 		snakeInit();
	CALL	_snakeInit
;dsPIC_VGA.c,286 :: 		while(1) {
L_main43:
;dsPIC_VGA.c,288 :: 		vsync_on;
	BCLR.B	LATFbits, #1
;dsPIC_VGA.c,289 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
;dsPIC_VGA.c,290 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
;dsPIC_VGA.c,291 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
;dsPIC_VGA.c,292 :: 		HSYNC_NOPS NullDraw();
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
;dsPIC_VGA.c,293 :: 		vsync_off;
	BSET.B	LATFbits, #1
;dsPIC_VGA.c,296 :: 		REP(0, 2, 3, HSYNC_NOPS NullDraw();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_NullDraw
;dsPIC_VGA.c,299 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_0();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_0
;dsPIC_VGA.c,300 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_1();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_1
;dsPIC_VGA.c,301 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_2();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_2
;dsPIC_VGA.c,302 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_3();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_3
;dsPIC_VGA.c,303 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_4();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_4
;dsPIC_VGA.c,304 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_5();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_5
;dsPIC_VGA.c,305 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_6();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_6
;dsPIC_VGA.c,306 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_7();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_7
;dsPIC_VGA.c,307 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_8();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_8
;dsPIC_VGA.c,308 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_9();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_9
;dsPIC_VGA.c,309 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_10();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_10
;dsPIC_VGA.c,310 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_11();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_11
;dsPIC_VGA.c,311 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_12();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_12
;dsPIC_VGA.c,312 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_13();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_13
;dsPIC_VGA.c,313 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_14();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_14
;dsPIC_VGA.c,314 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_15();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_15
;dsPIC_VGA.c,315 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_16();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_16
;dsPIC_VGA.c,316 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_17();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_17
;dsPIC_VGA.c,317 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_18();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_18
;dsPIC_VGA.c,318 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_19();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_19
;dsPIC_VGA.c,319 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_20();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_20
;dsPIC_VGA.c,320 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_21();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_21
;dsPIC_VGA.c,321 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_22();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_22
;dsPIC_VGA.c,322 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_23();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_23
;dsPIC_VGA.c,323 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_24();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_24
;dsPIC_VGA.c,324 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_25();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_25
;dsPIC_VGA.c,325 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_26();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_26
;dsPIC_VGA.c,326 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_27();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_27
;dsPIC_VGA.c,327 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_28();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_28
;dsPIC_VGA.c,328 :: 		REP(0, 2, 0, HSYNC_NOPS Draw_29();)
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_Draw_29
;dsPIC_VGA.c,332 :: 		HSYNC_NOPS SNAKE_NullDraw_less_2_final_cycle();
	BCLR.B	LATFbits, #0
	CALL	_HSync_nops
	BSET.B	LATFbits, #0
	CALL	_SNAKE_NullDraw_less_2_final_cycle
;dsPIC_VGA.c,333 :: 		}
	GOTO	L_main43
;dsPIC_VGA.c,334 :: 		}
L_end_main:
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
