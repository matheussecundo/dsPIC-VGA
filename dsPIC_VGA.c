// 8 MHz x 1 PLL  / 4 = 2 MIPS
// 8 MHz x 4 PLL  / 4 = 8 MIPS
// 8 MHz x 8 PLL  / 4 = 16 MIPS
// 8 MHz x 16 PLL / 4 = 32 MIPS

#define VGA_VERTICAL_LINES 600
#define VGA_FRAMES_PER_SECOND 60

#define VGA_COLOR LATD
#define VGA_R LATDbits.LATD0
#define VGA_G LATDbits.LATD1
#define VGA_B LATDbits.LATD2
#define VGA_HSync LATFbits.LATF0
#define VGA_VSync LATFbits.LATF1

#define clear_color VGA_COLOR = 0
#define hsync_off VGA_HSync = 1
#define hsync_on VGA_HSync = 0
#define vsync_off VGA_VSync = 1
#define vsync_on VGA_VSync = 0

#define SECONDS_TO_UPDATE 0.2

const unsigned int update_frame = (VGA_VERTICAL_LINES * VGA_FRAMES_PER_SECOND * SECONDS_TO_UPDATE);

unsigned int current_vertical_line = 0; // current line for render

#include "macros.h"
#include "utils.h"

#define MATRIX_LINES 30
#define MATRIX_COLUMNS 40
#define MATRIX_SIZE (MATRIX_LINES * MATRIX_COLUMNS)

#include "matrix.h"

void config()
{
	ADPCFG = 0xFFFF;

	PORTB=0;
	PORTD=0;
	// PORTE=0;
	PORTF=0;

	TRISB = 0xf;
	TRISD = 0;
	// TRISE = 0;
	TRISF = 0;
}

#define DEFINE_DRAW(LINE)\
void Draw_##LINE() {\
	REP(0, 1, 3, NOP)\
\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  0]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  0] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  2]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  2] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  4]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  4] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  6]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  6] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  8]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS +  8] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 10]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 10] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 12]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 12] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 14]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 14] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 16]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 16] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 18]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 18] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 20]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 20] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 22]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 22] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 24]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 24] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 26]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 26] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 28]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 28] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 30]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 30] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 32]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 32] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 34]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 34] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 36]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 36] >> 8;NOP NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 38]; NOP\
	VGA_COLOR = *(unsigned int *)&matrix[LINE * MATRIX_COLUMNS + 38] >> 8;NOP NOP\
	NOP NOP\
\
	VGA_COLOR = 0;\
	current_vertical_line++;\
	REP(0, 0, 1, NOP)\
}\

DEFINE_DRAW(0)
DEFINE_DRAW(1)
DEFINE_DRAW(2)
DEFINE_DRAW(3)
DEFINE_DRAW(4)
DEFINE_DRAW(5)
DEFINE_DRAW(6)
DEFINE_DRAW(7)
DEFINE_DRAW(8)
DEFINE_DRAW(9)
DEFINE_DRAW(10)
DEFINE_DRAW(11)
DEFINE_DRAW(12)
DEFINE_DRAW(13)
DEFINE_DRAW(14)
DEFINE_DRAW(15)
DEFINE_DRAW(16)
DEFINE_DRAW(17)
DEFINE_DRAW(18)
DEFINE_DRAW(19)
DEFINE_DRAW(20)
DEFINE_DRAW(21)
DEFINE_DRAW(22)
DEFINE_DRAW(23)
DEFINE_DRAW(24)
DEFINE_DRAW(25)
DEFINE_DRAW(26)
DEFINE_DRAW(27)
DEFINE_DRAW(28)
DEFINE_DRAW(29)

void NullDraw() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles
	REP(1, 6, 0, NOP)

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP);
}

void HSync_nops() {
	REP(0, 1, 9, NOP)
}

#define HSYNC_NOPS hsync_on; HSync_nops(); hsync_off;

#include "numbers.h"
#include "snake.h"

unsigned short number = 0;
unsigned int start = 0;

void NullDraw0() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles /////////
	number = snake.apple_qtd & 0x00f;
	*&matrix[1026 + 0 * MATRIX_COLUMNS + 0] = numbers[number][0];
	*&matrix[1026 + 0 * MATRIX_COLUMNS + 1] = numbers[number][1];
	*&matrix[1026 + 0 * MATRIX_COLUMNS + 2] = numbers[number][2];
	*&matrix[1026 + 1 * MATRIX_COLUMNS + 0] = numbers[number][3];
	*&matrix[1026 + 1 * MATRIX_COLUMNS + 1] = numbers[number][4];
	*&matrix[1026 + 1 * MATRIX_COLUMNS + 2] = numbers[number][5];
	*&matrix[1026 + 2 * MATRIX_COLUMNS + 0] = numbers[number][6];
	*&matrix[1026 + 2 * MATRIX_COLUMNS + 1] = numbers[number][7];
	*&matrix[1026 + 2 * MATRIX_COLUMNS + 2] = numbers[number][8];
	*&matrix[1026 + 3 * MATRIX_COLUMNS + 0] = numbers[number][9];
	*&matrix[1026 + 3 * MATRIX_COLUMNS + 1] = numbers[number][10];
	*&matrix[1026 + 3 * MATRIX_COLUMNS + 2] = numbers[number][11];
	*&matrix[1026 + 4 * MATRIX_COLUMNS + 0] = numbers[number][12];
	*&matrix[1026 + 4 * MATRIX_COLUMNS + 1] = numbers[number][13];
	*&matrix[1026 + 4 * MATRIX_COLUMNS + 2] = numbers[number][14];
	REP(0, 6, 2, NOP)
	/////////////////////////////////

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP);
}

void NullDraw1() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles /////////
	number = (snake.apple_qtd & 0x0f0) >> 4;
	*&matrix[1022 + 0 * MATRIX_COLUMNS + 0] = numbers[number][0];
	*&matrix[1022 + 0 * MATRIX_COLUMNS + 1] = numbers[number][1];
	*&matrix[1022 + 0 * MATRIX_COLUMNS + 2] = numbers[number][2];
	*&matrix[1022 + 1 * MATRIX_COLUMNS + 0] = numbers[number][3];
	*&matrix[1022 + 1 * MATRIX_COLUMNS + 1] = numbers[number][4];
	*&matrix[1022 + 1 * MATRIX_COLUMNS + 2] = numbers[number][5];
	*&matrix[1022 + 2 * MATRIX_COLUMNS + 0] = numbers[number][6];
	*&matrix[1022 + 2 * MATRIX_COLUMNS + 1] = numbers[number][7];
	*&matrix[1022 + 2 * MATRIX_COLUMNS + 2] = numbers[number][8];
	*&matrix[1022 + 3 * MATRIX_COLUMNS + 0] = numbers[number][9];
	*&matrix[1022 + 3 * MATRIX_COLUMNS + 1] = numbers[number][10];
	*&matrix[1022 + 3 * MATRIX_COLUMNS + 2] = numbers[number][11];
	*&matrix[1022 + 4 * MATRIX_COLUMNS + 0] = numbers[number][12];
	*&matrix[1022 + 4 * MATRIX_COLUMNS + 1] = numbers[number][13];
	*&matrix[1022 + 4 * MATRIX_COLUMNS + 2] = numbers[number][14];
	REP(0, 6, 0, NOP)
	/////////////////////////////////

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP);
}

void NullDraw2() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles /////////
	number = snake.apple_qtd >> 8;
	*&matrix[1018 + 0 * MATRIX_COLUMNS + 0] = numbers[number][0];
	*&matrix[1018 + 0 * MATRIX_COLUMNS + 1] = numbers[number][1];
	*&matrix[1018 + 0 * MATRIX_COLUMNS + 2] = numbers[number][2];
	*&matrix[1018 + 1 * MATRIX_COLUMNS + 0] = numbers[number][3];
	*&matrix[1018 + 1 * MATRIX_COLUMNS + 1] = numbers[number][4];
	*&matrix[1018 + 1 * MATRIX_COLUMNS + 2] = numbers[number][5];
	*&matrix[1018 + 2 * MATRIX_COLUMNS + 0] = numbers[number][6];
	*&matrix[1018 + 2 * MATRIX_COLUMNS + 1] = numbers[number][7];
	*&matrix[1018 + 2 * MATRIX_COLUMNS + 2] = numbers[number][8];
	*&matrix[1018 + 3 * MATRIX_COLUMNS + 0] = numbers[number][9];
	*&matrix[1018 + 3 * MATRIX_COLUMNS + 1] = numbers[number][10];
	*&matrix[1018 + 3 * MATRIX_COLUMNS + 2] = numbers[number][11];
	*&matrix[1018 + 4 * MATRIX_COLUMNS + 0] = numbers[number][12];
	*&matrix[1018 + 4 * MATRIX_COLUMNS + 1] = numbers[number][13];
	*&matrix[1018 + 4 * MATRIX_COLUMNS + 2] = numbers[number][14];
	REP(0, 6, 2, NOP)
	/////////////////////////////////

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP);
}

void NullDraw3() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles
	start = start | PORTB;
	REP(1, 5, 6, NOP)

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP);
}

void snakeInit() {
	copy(matrix_default, matrix, MATRIX_LINES * MATRIX_COLUMNS);

	snake.apple_pos = &matrix[5 * MATRIX_COLUMNS + 19];
	*snake.apple_pos = 5;
	snake.apple_qtd = 0;
	snake.ipos = &matrix[20 * MATRIX_COLUMNS + 19];
	snake.fpos = &matrix[21 * MATRIX_COLUMNS + 19];
	*snake.ipos = 0b10010001;
	*snake.fpos = 0b10010001;
	snake.idir = 0b1001;
	snake.idirx = 0;
	snake.idiry = -1;
	snake.fdir = 0b1001;
	snake.fdirx = 0;
	snake.fdiry = -1;

	start = 0;
}

void SNAKE_NullDraw_less_2_final_cycle() {
	// 88 / 5 = 17.6 cycles /////////////////////////
	REP(0, 1, 5, NOP)
	/////////////////////////////////////////////////

	// 800 / 5 = 160 cycles /////////////////////////
	if (start != 0) {

		if (current_vertical_line >= update_frame) {

			// 46 cycles ////////////////////////
			if (PORTBbits.RB0 && snake.idirx != 1) {
				snake.idir = 0b0110;
				snake.idirx = -1;
				snake.idiry = 0;
				*snake.ipos = (*snake.ipos & 0xf) | 0b01100000;
				REP(0,2,7, NOP)
			} else if (PORTBbits.RB1 && snake.idiry != 1) {
				snake.idir = 0b1001;
				snake.idirx = 0;
				snake.idiry = -1;
				*snake.ipos = (*snake.ipos & 0xf) | 0b10010000;
				REP(0,2,0, NOP)
			} else if (PORTBbits.RB2 && snake.idirx != -1) {
				snake.idir = 0b1110;
				snake.idirx = 1;
				snake.idiry = 0;
				*snake.ipos = (*snake.ipos & 0xf) | 0b11100000;
				REP(0,1,3, NOP)
			} else if (PORTBbits.RB3 && snake.idiry != -1) {
				snake.idir = 0b1011;
				snake.idirx = 0;
				snake.idiry = 1;
				*snake.ipos = (*snake.ipos & 0xf) | 0b10110000;
				REP(0,0,6, NOP)
			} else {
				snake.idir = (*snake.ipos) >> 4;
				snake.idirx = (snake.idir >> 2) - 2;
				snake.idiry = (snake.idir & 0x3) - 2;
			}
			////////////////////////////////////

			// 18 cycles ///////////////////////
			snake.fdir = (*snake.fpos) >> 4;
			snake.fdirx = (snake.fdir >> 2) - 2;
			snake.fdiry = (snake.fdir & 0x3) - 2;
			////////////////////////////////////

			// 2 cycles ////////////////////////
			current_vertical_line = 0;
			////////////////////////////////////

			// 10 cycles ///////////////////////
			snake.ipos = snake.ipos + snake.idiry * MATRIX_COLUMNS + snake.idirx;
			////////////////////////////////////

			// 5 cycles ///////////////////////
			if ((*snake.ipos & 0x7) == 1) {

				snakeInit();
				return;

			}
			////////////////////////////////////

			// 5 cycles ///////////////////////
			if (*snake.ipos == 7) {

				snakeInit();
				return;

			}
			////////////////////////////////////

			// 18 cycles ///////////////////////
			if (*snake.ipos == 0) {

				*snake.fpos = 0;

				snake.fpos = snake.fpos + snake.fdiry * MATRIX_COLUMNS + snake.fdirx;

			} else {

				REP(0,0,3, NOP)

				REP(0,1,0, NOP)

			}
			////////////////////////////////////
			
			// 6 cycles ////////////////////////
			*snake.ipos = (snake.idir << 4) | 1;
			////////////////////////////////////

			REP(0, 4, 0, NOP)
		} else {
			if (*snake.apple_pos != 5) {
				int index = rand() % (MATRIX_SIZE - 200);
				while (matrix[index] != 0)
				{
					index = rand() % (MATRIX_SIZE - 200);
				}
				snake.apple_pos = &matrix[index];
				*snake.apple_pos = 5;
				snake.apple_qtd++;
			}
			REP(1, 4, 5, NOP)
		}

	} else {

		REP(1,5,5, NOP)

	}
	/////////////////////////////////////////////////

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 3, NOP)
}

int main()
{
	config();
	snakeInit();

	while(1) {
		//4 = 0.1056 ms
		vsync_on;
		HSYNC_NOPS NullDraw0();
		HSYNC_NOPS NullDraw1();
		HSYNC_NOPS NullDraw2();
		HSYNC_NOPS NullDraw3();
		vsync_off;

		//23 = 0.6072 ms
		REP(0, 2, 3, HSYNC_NOPS NullDraw();)

		//600 = 15.84 ms ////////////////////
		REP(0, 2, 0, HSYNC_NOPS Draw_0();)
		REP(0, 2, 0, HSYNC_NOPS Draw_1();)
		REP(0, 2, 0, HSYNC_NOPS Draw_2();)
		REP(0, 2, 0, HSYNC_NOPS Draw_3();)
		REP(0, 2, 0, HSYNC_NOPS Draw_4();)
		REP(0, 2, 0, HSYNC_NOPS Draw_5();)
		REP(0, 2, 0, HSYNC_NOPS Draw_6();)
		REP(0, 2, 0, HSYNC_NOPS Draw_7();)
		REP(0, 2, 0, HSYNC_NOPS Draw_8();)
		REP(0, 2, 0, HSYNC_NOPS Draw_9();)
		REP(0, 2, 0, HSYNC_NOPS Draw_10();)
		REP(0, 2, 0, HSYNC_NOPS Draw_11();)
		REP(0, 2, 0, HSYNC_NOPS Draw_12();)
		REP(0, 2, 0, HSYNC_NOPS Draw_13();)
		REP(0, 2, 0, HSYNC_NOPS Draw_14();)
		REP(0, 2, 0, HSYNC_NOPS Draw_15();)
		REP(0, 2, 0, HSYNC_NOPS Draw_16();)
		REP(0, 2, 0, HSYNC_NOPS Draw_17();)
		REP(0, 2, 0, HSYNC_NOPS Draw_18();)
		REP(0, 2, 0, HSYNC_NOPS Draw_19();)
		REP(0, 2, 0, HSYNC_NOPS Draw_20();)
		REP(0, 2, 0, HSYNC_NOPS Draw_21();)
		REP(0, 2, 0, HSYNC_NOPS Draw_22();)
		REP(0, 2, 0, HSYNC_NOPS Draw_23();)
		REP(0, 2, 0, HSYNC_NOPS Draw_24();)
		REP(0, 2, 0, HSYNC_NOPS Draw_25();)
		REP(0, 2, 0, HSYNC_NOPS Draw_26();)
		REP(0, 2, 0, HSYNC_NOPS Draw_27();)
		REP(0, 2, 0, HSYNC_NOPS Draw_28();)
		REP(0, 2, 0, HSYNC_NOPS Draw_29();)
		/////////////////////////////////////

		//1 = 0.0264 ms
		HSYNC_NOPS SNAKE_NullDraw_less_2_final_cycle();
	}
}