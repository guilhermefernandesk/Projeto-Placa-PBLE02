# 1 "stdio.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "stdio.c" 2
# 1 "./lcd.h" 1
# 22 "./lcd.h"
    void delay_ms(unsigned long ms);
    void delay_50us(unsigned long us);
 void lcdCommand(unsigned char cmd);
    void lcdCommand4(unsigned char cmd);
    void lcdData4(unsigned char cmd);
 void lcdData(unsigned char valor);
 void lcdInit(void);
    void lcdString(char msg[]);
    void lcdInt(int val);
# 1 "stdio.c" 2


void printf(char txt[16]) {
    int i;
    for (i = 0; i < 16; i++) {
        lcdData(txt[i]);
    }
}
