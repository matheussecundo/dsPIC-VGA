
/***********LCD MODULE CONNECTIONS**********/

sbit LCD_RS at LATE0_bit;
sbit LCD_EN at LATE1_bit;
sbit LCD_D4 at LATE2_bit;
sbit LCD_D5 at LATE3_bit;
sbit LCD_D6 at LATE4_bit;
sbit LCD_D7 at LATE5_bit;

sbit LCD_RS_Direction at TRISE0_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D4_Direction at TRISE2_bit;
sbit LCD_D5_Direction at TRISE3_bit;
sbit LCD_D6_Direction at TRISE4_bit;
sbit LCD_D7_Direction at TRISE5_bit;

/***********************LCD FUNCTIONS********************************************/

#define LCD_INIT() Lcd_Init()
#define LCD_OUT(str, line, column) Lcd_Out(line, column, str)
#define LCD_CHR(chr, line, column) Lcd_Chr(line, column, chr)
#define LCD_CLEAR() Lcd_Cmd(_LCD_CLEAR)
#define LCD_CURSOR_ON() Lcd_Cmd(_LCD_CURSOR_ON)
#define LCD_CURSOR_OFF() Lcd_Cmd(_LCD_CURSOR_OFF)
#define LCD_SHIFT_LEFT() Lcd_Cmd(_LCD_SHIFT_LEFT)
#define LCD_SHIFT_RIGHT() Lcd_Cmd(_LCD_SHIFT_RIGHT)