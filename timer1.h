
void Timer1_start()
{
    T1CONbits.TON = 1;
}

unsigned int Timer1_stop()
{
    T1CONbits.TON = 0;
    return TMR1;
}

unsigned int Timer1_getRegister()
{
    return TMR1;
}

void Timer1_setRegister(unsigned int offset)
{
    TMR1 = offset;
}

void Timer1_setPeriodRegister(unsigned int offset)
{
    PR1 = offset;
}

void Timer1_setPrescale(unsigned int prescale)
{
    T1CONbits.TCKPS = prescale;
}

void Timer1_enableInterrupt()
{
    IFS0bits.T1IF = 0; // Clear flag
    IEC0bits.T1IE = 1; // Enable Timer1 interrupt
}

void Timer1_disableInterrupt()
{
    IFS0bits.T1IF = 0;
    IEC0bits.T1IE = 0;
}

void Timer1_clearInterruptFlag()
{
    IFS0bits.T1IF = 0; // Clear flag
}

void Timer1_enableExternalClock()
{
    T1CONbits.TCS = 1;
}

void Timer1_disableExternalClock()
{
    T1CONbits.TCS = 0;
}

void Timer1_enableTSIDL()
{
    T1CONbits.TSIDL = 1;
}

void Timer1_disableTSIDL()
{
    T1CONbits.TSIDL = 0;
}

void Timer1_enableTGATE()
{
    T1CONbits.TGATE = 1;
}

void Timer1_disableTGATE()
{
    T1CONbits.TGATE = 0;
}

void Timer1_enableExternalClockSync()
{
    T1CONbits.TSYNC = 1;
}

void Timer1_disableExternalClockSync()
{
    T1CONbits.TSYNC = 0;
}

void Timer1_configFrequecyInterruption(unsigned int frequency)
{
    unsigned int PRESCALE, PRX_AUX;
    unsigned char PRESCALE_OPTIONS[4];
    PRESCALE_OPTIONS[0] = 1;
    PRESCALE_OPTIONS[1] = 8;
    PRESCALE_OPTIONS[2] = 64;
    PRESCALE_OPTIONS[3] = 256;
    if (frequency == 0) {
        T1CONbits.TON = 0;
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
    PR1 = PRX_AUX;
    T1CONbits.TCKPS = PRESCALE;
}