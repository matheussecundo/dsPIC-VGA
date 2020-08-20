
unsigned char UART1_INPUT_BUFFER[256];
unsigned char *UART1_SERIAL_INPUT = UART1_INPUT_BUFFER;
char UART1_RECEIVING = 0;
unsigned char UART1_OUTPUT_BUFFER[256];
unsigned char *UART1_SERIAL_OUTPUT = UART1_OUTPUT_BUFFER;
char UART1_SENDING = 0;

void UART1_INIT(int n) // UART1_INIT(103);
{
     U1MODE = 0;      // verificar modo de opera??o
     U1MODEbits.ALTIO = 1;
     U1BRG = n;
     U1STA = 0;
     U1MODEbits.UARTEN = 1;
     U1STAbits.UTXEN = 1;

     IEC0bits.U1RXIE = 1;
     IEC0bits.U1TXIE = 1;
}

void (*UART1_RECEIVE_CALLBACK)(unsigned char *) = 0;

void UART1_SERIAL_INPUT_IT() iv IVT_ADDR_U1RXINTERRUPT
{
    unsigned char aux = U1RXREG;
    if (aux == '\n' || aux == 0xD) {
		UART1_SERIAL_INPUT = UART1_INPUT_BUFFER;
		UART1_RECEIVING = 0;
		if (UART1_RECEIVE_CALLBACK) {
			UART1_RECEIVE_CALLBACK(UART1_SERIAL_INPUT);
		}
    } else {
		*UART1_SERIAL_INPUT = aux;
		UART1_SERIAL_INPUT++;
		*UART1_SERIAL_INPUT = 0;
		UART1_RECEIVING = 1;
    }
    IFS0bits.U1RXIF = 0;
}

void UART1_SEND(unsigned char *output)
{
	while (UART1_SENDING);
    while (*output)
    {
        *UART1_SERIAL_OUTPUT = *output;
        UART1_SERIAL_OUTPUT++;
        output++;
    }
    *UART1_SERIAL_OUTPUT = 0;
    UART1_SERIAL_OUTPUT = UART1_OUTPUT_BUFFER;
    UART1_SENDING = 1;
    U1TXREG = *UART1_SERIAL_OUTPUT;
}

void UART1_SERIAL_OUTPUT_IT() iv IVT_ADDR_U1TXINTERRUPT
{
    if (*UART1_SERIAL_OUTPUT == 0) {
        UART1_SERIAL_OUTPUT = UART1_OUTPUT_BUFFER;
        UART1_SENDING = 0;
    } else {
        UART1_SERIAL_OUTPUT++;
        U1TXREG = *UART1_SERIAL_OUTPUT;
        UART1_SENDING = 1;
    }
    IFS0bits.U1TXIF = 0;
}