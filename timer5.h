
void Timer5_start()
{
    T5CONbits.TON = 1;
}

unsigned int Timer5_stop()
{
    T5CONbits.TON = 0;
    return TMR5;
}

unsigned int Timer5_getRegister()
{
    return TMR5;
}

void Timer5_setRegister(unsigned int offset)
{
    TMR5 = offset;
}

void Timer5_setPeriodRegister(unsigned int offset)
{
    PR5 = offset;
}

void Timer5_setPrescale(unsigned int prescale)
{
    T5CONbits.TCKPS = prescale;
}

void Timer5_enableInterrupt()
{
    IFS1bits.T5IF = 0; // Clear flag
    IEC1bits.T5IE = 1; // Enable Timer5 interrupt
}

void Timer5_disableInterrupt()
{
    IFS1bits.T5IF = 0;
    IEC1bits.T5IE = 0;
}

void Timer5_clearInterruptFlag()
{
    IFS1bits.T5IF = 0; // Clear flag
}

void Timer5_enableExternalClock()
{
    T5CONbits.TCS = 1;
}

void Timer5_disableExternalClock()
{
    T5CONbits.TCS = 0;
}

void Timer5_enableTSIDL()
{
    T5CONbits.TSIDL = 1;
}

void Timer5_disableTSIDL()
{
    T5CONbits.TSIDL = 0;
}

void Timer5_enableTGATE()
{
    T5CONbits.TGATE = 1;
}

void Timer5_disableTGATE()
{
    T5CONbits.TGATE = 0;
}

void Timer5_configFrequecyInterruption(unsigned int frequency)
{
    unsigned int PRESCALE, PRX_AUX;
    unsigned char PRESCALE_OPTIONS[4];
    PRESCALE_OPTIONS[0] = 1;
    PRESCALE_OPTIONS[1] = 8;
    PRESCALE_OPTIONS[2] = 64;
    PRESCALE_OPTIONS[3] = 256;
    if (frequency == 0) {
        T5CONbits.TON = 0;
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
    PR5 = PRX_AUX;
    T5CONbits.TCKPS = PRESCALE;
}