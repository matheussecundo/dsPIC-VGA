
void Timer3_start()
{
    T3CONbits.TON = 1;
}

unsigned int Timer3_stop()
{
    T3CONbits.TON = 0;
    return TMR3;
}

unsigned int Timer3_getRegister()
{
    return TMR3;
}

void Timer3_setRegister(unsigned int offset)
{
    TMR3 = offset;
}

void Timer3_setPeriodRegister(unsigned int offset)
{
    PR3 = offset;
}

void Timer3_setPrescale(unsigned int prescale)
{
    T3CONbits.TCKPS = prescale;
}

void Timer3_enableInterrupt()
{
    IFS0bits.T3IF = 0; // Clear flag
    IEC0bits.T3IE = 1; // Enable Timer3 interrupt
}

void Timer3_disableInterrupt()
{
    IFS0bits.T3IF = 0;
    IEC0bits.T3IE = 0;
}

void Timer3_clearInterruptFlag()
{
    IFS0bits.T3IF = 0; // Clear flag
}

void Timer3_enableExternalClock()
{
    T3CONbits.TCS = 1;
}

void Timer3_disableExternalClock()
{
    T3CONbits.TCS = 0;
}

void Timer3_enableTSIDL()
{
    T3CONbits.TSIDL = 1;
}

void Timer3_disableTSIDL()
{
    T3CONbits.TSIDL = 0;
}

void Timer3_enableTGATE()
{
    T3CONbits.TGATE = 1;
}

void Timer3_disableTGATE()
{
    T3CONbits.TGATE = 0;
}

void Timer3_configFrequecyInterruption(unsigned int frequency)
{
    unsigned int PRESCALE, PRX_AUX;
    unsigned char PRESCALE_OPTIONS[4];
    PRESCALE_OPTIONS[0] = 1;
    PRESCALE_OPTIONS[1] = 8;
    PRESCALE_OPTIONS[2] = 64;
    PRESCALE_OPTIONS[3] = 256;
    if (frequency == 0) {
        T3CONbits.TON = 0;
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
    PR3 = PRX_AUX;
    T3CONbits.TCKPS = PRESCALE;
}