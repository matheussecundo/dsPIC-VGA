#define FCY 10000000
// 8 MHz x 1 PLL  / 4 = 2 MIPS
// 8 MHz x 4 PLL  / 4 = 8 MIPS
// 8 MHz x 8 PLL  / 4 = 16 MIPS
// 8 MHz x 16 PLL / 4 = 32 MIPS
// VGA Signal 640 x 480 @ 60 Hz Industry standard timing
// #define V_REFRESH 31469 // 31.469 KHz
// #define T1_PERIOD (FCY / V_REFRESH)					// pour 31.77 us (31.469 kHz de balayage Vertical) à 29.4912 MHz, T1Period = 937=FCY/31469 Hz
// #define VGA_VERTICAL_LINES 525 //standart VGA quantity lines

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

unsigned int current_vertical_line = 0;// current line for render
unsigned int color = 0;

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

char matrix[32 * 32] =
{
	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,
	7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
};

char count = 0;

// void initTimer1()
// {
// 	T1CON = 0;
// 	TMR1  = 0;
//  	IFS0bits.T1IF = 0;
// 	IPC0bits.T1IP = 4; // Priority
//  	IEC0bits.T1IE = 1;
// 	PR1 = T1_PERIOD;

// 	T1CONbits.TON = 1;
// }

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

	// initTimer1();
}

// void Timer1Int() iv IVT_ADDR_T1INTERRUPT
// {
//     IFS0bits.T1IF = 0;
	
// }

void Draw() {
	// 88 / 5 = 17.6 cycles
	REP(0, 1, 5, NOP)

	// 800 / 5 = 160 cycles
	// REP(0, 8, 0, VGA_COLOR = 7;)

	REP(0, 2, 0, VGA_COLOR = 0;)

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

	// VGA_COLOR = matrix[count]; // 8 cycles
	// VGA_COLOR = matrix[count]; // 4 cycles
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];
	// VGA_COLOR = matrix[count];

	// 40 / 5 = 8 cycles
	VGA_COLOR = 0; REP(0, 0, 5, NOP)
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
	VGA_COLOR = 0; REP(0, 0, 3, NOP)
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