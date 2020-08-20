
unsigned long int tmr4_temp, tmr5_temp;

void Timer4_start()
{
    T4CONbits.TON = 1;
}

unsigned int Timer4_stop()
{
    T4CONbits.TON = 0;
    return TMR4;
}

unsigned int Timer4_getRegister()
{
    return TMR4;
}

unsigned long int Timer4_getRegister_32bitsMode()
{
    tmr4_temp = TMR4;
    tmr5_temp = TMR5;
    return (tmr5_temp << 16) | tmr4_temp;
}

void Timer4_setRegister(unsigned int offset)
{
    TMR4 = offset;
}

void Timer4_setRegister_32bitsMode(unsigned long int offset)
{
    tmr5_temp = offset >> 16;
    tmr4_temp = offset & 0xffff;
    TMR5HLD = tmr5_temp;
    TMR4 = tmr4_temp;
}

void Timer4_setPeriodRegister(unsigned int offset)
{
    PR4 = offset;
}

void Timer4_setPeriodRegister_32bitsMode(unsigned long int offset)
{
    PR5 = offset >> 16;
    PR4 = offset & 0xffff;
}

void Timer4_setPrescale(unsigned int prescale)
{
    T4CONbits.TCKPS = prescale;
}

void Timer4_enableT32()
{
    T4CONbits.T32 = 1;
}

void Timer4_disableT32()
{
    T4CONbits.T32 = 0;
}

void Timer4_enableInterrupt()
{
    IFS1bits.T4IF = 0; // Clear flag
    IEC1bits.T4IE = 1; // Enable Timer4 interrupt
}

void Timer4_disableInterrupt()
{
    IFS1bits.T4IF = 0;
    IEC1bits.T4IE = 0;
}

void Timer4_enableInterrupt_32bitsMode()
{
    IFS1bits.T5IF = 0; // Clear flag
    IEC1bits.T5IE = 1; // Enable Timer4 interrupt
}

void Timer4_disableInterrupt_32bitsMode()
{
    IFS1bits.T5IF = 0; // Clear flag
    IEC1bits.T5IE = 0; // Enable Timer4 interrupt
}

void Timer4_clearInterruptFlag()
{
    IFS1bits.T4IF = 0; // Clear flag
}

void Timer4_clearInterruptFlag_32bitsMode()
{
    IFS1bits.T5IF = 0; // Clear flag
}

void Timer4_enableExternalClock()
{
    T4CONbits.TCS = 1;
}

void Timer4_disableExternalClock()
{
    T4CONbits.TCS = 0;
}

void Timer4_enableTSIDL()
{
    T4CONbits.TSIDL = 1;
}

void Timer4_disableTSIDL()
{
    T4CONbits.TSIDL = 0;
}

void Timer4_enableTGATE()
{
    T4CONbits.TGATE = 1;
}

void Timer4_disableTGATE()
{
    T4CONbits.TGATE = 0;
}

void Timer4_configFrequecyInterruption(unsigned int frequency)
{
    unsigned int PRESCALE, PRX_AUX;
    unsigned char PRESCALE_OPTIONS[4];
    PRESCALE_OPTIONS[0] = 1;
    PRESCALE_OPTIONS[1] = 8;
    PRESCALE_OPTIONS[2] = 64;
    PRESCALE_OPTIONS[3] = 256;
    if (frequency == 0) {
        T4CONbits.TON = 0;
        return;
    }
    for (PRESCALE = 3; PRESCALE >= 0; PRESCALE--)
    {
        unsigned int TIMER_FREQUENCY;
        TIMER_FREQUENCY = INSTRUCTION_FREQUENCY / (PRESCALE_OPTIONS[PRESCALE]);
        PRX_AUX = TIMER_FREQUENCY / frequency;
        if (PRX_AUX <= 0xFFFF) {
            break;
        }
    }
    PR4 = PRX_AUX;
    T4CONbits.TCKPS = PRESCALE;
}