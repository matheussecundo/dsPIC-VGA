#define FCY 10000000
// 8 MHz x 1 PLL  / 4 = 2 MIPS
// 8 MHz x 4 PLL  / 4 = 8 MIPS
// 8 MHz x 8 PLL  / 4 = 16 MIPS
// 8 MHz x 16 PLL / 4 = 32 MIPS

#define VGA_VERTICAL_LINES 600

#define VGA_COLOR LATD
#define VGA_R LATDbits.LATD0
#define VGA_G LATDbits.LATD1
#define VGA_B LATDbits.LATD2
#define VGA_HSync LATEbits.LATE1
#define VGA_VSync LATEbits.LATE2

#define clear_color VGA_COLOR = 0
#define hsync_off VGA_HSync = 1
#define hsync_on VGA_HSync = 0
#define vsync_off VGA_VSync = 1
#define vsync_on VGA_VSync = 0

unsigned int current_vertical_line = 0; // current line for render

#define NOP asm {nop;}

#define REP0(X)
#define REP1(X) X
#define REP2(X) REP1(X) X
#define REP3(X) REP2(X) X
#define REP4(X) REP3(X) X
#define REP5(X) REP4(X) X
#define REP6(X) REP5(X) X
#define REP7(X) REP6(X) X
#define REP8(X) REP7(X) X
#define REP9(X) REP8(X) X
#define REP10(X) REP9(X) X
#define REP(HUNDREDS,TENS,ONES,X) REP##HUNDREDS(REP10(REP10(X))) REP##TENS(REP10(X)) REP##ONES(X)

char matrix[37][32] =
{
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7},
	{7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7}
};

void config()
{
	ADPCFG = 0xFFFF;
	PORTB=0;
	PORTC=0;
	PORTD=0;
	PORTE=0;

	TRISE = 0;
	TRISD = 0;
	TRISB = 0;
}

void Draw() {
	// 88 / 5 = 17.6 cycles ///////////////////////////////////////////////
	REP(0, 1, 5, NOP)
	///////////////////////////////////////////////////////////////////////

	// 800 / 5 = 160 cycles

	VGA_COLOR = current_vertical_line;
	VGA_COLOR = 2;
	VGA_COLOR = 1;
	VGA_COLOR = 2;
	VGA_COLOR = 1;
	VGA_COLOR = 2;
	VGA_COLOR = 1;
	VGA_COLOR = 2;
	VGA_COLOR = 1;
	VGA_COLOR = 2;

	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;
	VGA_COLOR = 1;

	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;
	VGA_COLOR = 2;

	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;
	VGA_COLOR = 3;

	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	VGA_COLOR = 4;
	
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;
	VGA_COLOR = 5;

	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;
	VGA_COLOR = 6;

	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;
	VGA_COLOR = 7;

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0;
	current_vertical_line++; // 4 cycles
	REP(0, 0, 1, NOP)
}

void NullDraw() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles
	REP(1, 6, 0, NOP)

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP);
}

void NullDraw_less_2_final_cycle() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles
	REP(1, 6, 0, NOP)

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; current_vertical_line = 0; REP(0, 0, 1, NOP)
}

void HSync_nops() {
	REP(0, 1, 9, NOP)
}

#define HSYNC_NOPS hsync_on; HSync_nops(); hsync_off;

int main()
{
	config();

	while(1) {
		// 0.1056 ms
		vsync_on;
		HSYNC_NOPS NullDraw();
		HSYNC_NOPS NullDraw();
		HSYNC_NOPS NullDraw();
		HSYNC_NOPS NullDraw();
		vsync_off;

		//0.6072 ms
		REP(0, 2, 3, HSYNC_NOPS NullDraw();)

		// 15.84 ms
		REP(6, 0, 0, HSYNC_NOPS Draw();)

		// 0.0264 ms
		HSYNC_NOPS NullDraw_less_2_final_cycle();
	}
}