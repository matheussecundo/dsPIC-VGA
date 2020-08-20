
unsigned long int tmr2_temp, tmr3_temp;

void Timer2_start()
{
    T2CONbits.TON = 1;
}

unsigned int Timer2_stop()
{
    T2CONbits.TON = 0;
    return TMR2;
}

unsigned int Timer2_getRegister()
{
    return TMR2;
}

unsigned long int Timer2_getRegister_32bitsMode()
{
    tmr2_temp = TMR2;
    tmr3_temp = TMR3;
    return (tmr3_temp << 16) | tmr2_temp;
}

void Timer2_setRegister(unsigned int offset)
{
    TMR2 = offset;
}

void Timer2_setRegister_32bitsMode(unsigned long int offset)
{
    tmr3_temp = offset >> 16;
    tmr2_temp = offset & 0xffff;
    TMR3HLD = tmr3_temp;
    TMR2 = tmr2_temp;
}

void Timer2_setPeriodRegister(unsigned int offset)
{
    PR2 = offset;
}

void Timer2_setPeriodRegister_32bitsMode(unsigned long int offset)
{
    PR3 = offset >> 16;
    PR2 = offset & 0xffff;
}

void Timer2_setPrescale(unsigned int prescale)
{
    T2CONbits.TCKPS = prescale;
}

void Timer2_enableT32()
{
    T2CONbits.T32 = 1;
}

void Timer2_disableT32()
{
    T2CONbits.T32 = 0;
}

void Timer2_enableInterrupt()
{
    IFS0bits.T2IF = 0; // Clear flag
    IEC0bits.T2IE = 1; // Enable Timer2 interrupt
}

void Timer2_disableInterrupt()
{
    IFS0bits.T2IF = 0;
    IEC0bits.T2IE = 0;
}

void Timer2_enableInterrupt_32bitsMode()
{
    IFS0bits.T3IF = 0; // Clear flag
    IEC0bits.T3IE = 1; // Enable Timer2 interrupt
}

void Timer2_disableInterrupt_32bitsMode()
{
    IFS0bits.T3IF = 0; // Clear flag
    IEC0bits.T3IE = 0; // Enable Timer2 interrupt
}

void Timer2_clearInterruptFlag()
{
    IFS0bits.T2IF = 0; // Clear flag
}

void Timer2_clearInterruptFlag_32bitsMode()
{
    IFS0bits.T3IF = 0; // Clear flag
}

void Timer2_enableExternalClock()
{
    T2CONbits.TCS = 1;
}

void Timer2_disableExternalClock()
{
    T2CONbits.TCS = 0;
}

void Timer2_enableTSIDL()
{
    T2CONbits.TSIDL = 1;
}

void Timer2_disableTSIDL()
{
    T2CONbits.TSIDL = 0;
}

void Timer2_enableTGATE()
{
    T2CONbits.TGATE = 1;
}

void Timer2_disableTGATE()
{
    T2CONbits.TGATE = 0;
}

void Timer2_configFrequecyInterruption(unsigned int frequency)
{
    unsigned int PRESCALE, PRX_AUX;
    unsigned char PRESCALE_OPTIONS[4];
    PRESCALE_OPTIONS[0] = 1;
    PRESCALE_OPTIONS[1] = 8;
    PRESCALE_OPTIONS[2] = 64;
    PRESCALE_OPTIONS[3] = 256;
    if (frequency == 0) {
        T2CONbits.TON = 0;
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
    PR2 = PRX_AUX;
    T2CONbits.TCKPS = PRESCALE;
}