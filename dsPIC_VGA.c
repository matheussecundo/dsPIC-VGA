#define FCY 10000000

// VGA Signal 640 x 480 @ 60 Hz Industry standard timing
// #define V_REFRESH 31469 // 31.469 KHz
// #define T1_PERIOD (FCY / V_REFRESH)					// pour 31.77 us (31.469 kHz de balayage Vertical) à 29.4912 MHz, T1Period = 937=FCY/31469 Hz
// #define VGA_VERTICAL_LINES 525 //standart VGA quantity lines

#define VGA_R LATDbits.LATD0
#define VGA_HSync LATEbits.LATE1
#define VGA_VSync LATEbits.LATE2

#define hsync_off VGA_HSync = 1
#define hsync_on VGA_HSync = 0
#define vsync_off VGA_VSync = 1
#define vsync_on VGA_VSync = 0

unsigned int current_vertical_line = 0;// current line for render

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

#define REP(HUNDREDS,TENS,ONES,X) \
  REP##HUNDREDS(REP10(REP10(X))) \
  REP##TENS(REP10(X)) \
  REP##ONES(X)

void setup_ports(void)
{
	ADPCFG = 0xFFFF;
	PORTB=0;
	PORTC=0;
	PORTD=0;
	PORTE=0;

	TRISE = 0;
	TRISD = 0;
}

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

// void Timer1Int() iv IVT_ADDR_T1INTERRUPT
// {
//     IFS0bits.T1IF = 0;
	
// }

void Hsync() {
	REP(1, 9, 8, NOP) // 200 cycles

	REP(0, 1, 0, NOP) // 10 cycles
	
	hsync_on; REP(0, 3, 0, NOP) hsync_off;// 32 cycles
	
	REP(0, 1, 9, NOP) } // 22 cycles


void Hsync_final() {
	REP(1, 9, 8, NOP)

	REP(0, 1, 0, NOP)
	
	hsync_on; REP(0, 3, 0, NOP) hsync_off;
	
	REP(0, 1, 7, NOP) }


void Hsync_with_vsync_on() {
	REP(1, 9, 8, NOP)

	REP(0, 1, 0, NOP)
	
	hsync_on; REP(0, 3, 0, NOP) hsync_off;
	
	REP(0, 1, 8, NOP) vsync_on;}

void Hsync_with_vsync_off() {
	REP(1, 9, 8, NOP)

	REP(0, 1, 0, NOP)
	
	hsync_on; REP(0, 3, 0, NOP) hsync_off;
	
	REP(0, 1, 8, NOP) vsync_off; }

int main()
{
	setup_ports();
	hsync_off;
	vsync_off;
	VGA_R = 1;
	// initTimer1();
	while(1) {
		REP(6, 0, 0, Hsync();) // 15.84 ms

		Hsync_with_vsync_on(); // 0.0264 ms

		Hsync(); Hsync(); Hsync(); Hsync_with_vsync_off(); // 0.1056 ms
		
		REP(0, 2, 2, Hsync();) Hsync_final(); } //0.6072 ms
}