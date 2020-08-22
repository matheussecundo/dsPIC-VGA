#define BIT(x) 1 << x
#define COUNT(value, start, end) value = value < end ? value + 1 : start

//*********************************************************

// #define SW0 buttonRL(&PORTB, 0)
// char buttonRL(unsigned short *port, unsigned char bit_num)
// {
//     unsigned int oldstate = 0;
//     while (1)
//     {
//         if (Button(port, bit_num, 1, 1)){
//             oldstate = 1;
//         } else if (oldstate && Button(port, bit_num, 1, 0)) {
//             oldstate = 0;
//             return 1;
//         } else {
//             return 0;
//         }
//     }
// }

void rotateL(unsigned char *start, unsigned char *end)
{
    unsigned char aux;
    aux = *start;
    while (start < end)
    {
        *start = *(start + 1);
        start++;
    }
    *end = aux;
}

void rotateR(unsigned char *start, unsigned char *end)
{
    unsigned char aux;
    aux = *end;
    while (start < end)
    {
        *end = *(end - 1);
        end--;
    }
    *start = aux;
}

void fill(unsigned char *data0, unsigned int size, unsigned char value)
{
    unsigned int i;
    for (i = 0; i < size; i++) data0[i] = value;
}

void copy(unsigned char *data0, unsigned char *destination, unsigned int size)
{
    unsigned int i;
    for (i = 0; i < size; i++) destination[i] = data0[i];
}

char compare(unsigned char *data0, unsigned char *data1, unsigned int size)
{
    unsigned int i;
    for (i = 0; i < size; i++)
    {
        if (data0[i] != data1[i]) {
            if (data0[i] < data1[i]) {
                return -1;
            } else {
                return 1;
            }
        }
    }
    return 0;
}

void toupper_str(unsigned char *str)
{
    while (*str)
    {
        *str = toupper(*str);
        str++;
    }
}