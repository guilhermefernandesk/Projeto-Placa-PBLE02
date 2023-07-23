# 1 "button.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "button.c" 2
# 1 "./button.h" 1




 void butInit(void);
    char butRead(char num);
# 1 "button.c" 2

# 1 "./pic18f4520.h" 1
# 2 "button.c" 2

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
# 3 "button.c" 2

# 1 "./config.h" 1
# 31 "./config.h"
#pragma config MCLRE=ON
#pragma config FOSC=HS
#pragma config WDT=OFF
#pragma config LVP=OFF
#pragma config ICPRT=ON
#pragma config CCP2MX = OFF
# 4 "button.c" 2


void butInit(void) {

    (((*(volatile __near unsigned char*)0xF94)) |= (1<<(0)));
    (((*(volatile __near unsigned char*)0xF94)) |= (1<<(1)));
    (((*(volatile __near unsigned char*)0xF94)) |= (1<<(2)));
    (((*(volatile __near unsigned char*)0xF95)) |= (1<<(4)));
    (((*(volatile __near unsigned char*)0xF95)) |= (1<<(5)));
}

char butRead(char num) {



    if (num < 3) {
        if ((((*(volatile __near unsigned char*)0xF82)) & (1<<(num)))) {
            delay_ms(75);
            return 1;
        } else {
            delay_ms(75);
            return 0;
        }
    } else {
        if ((((*(volatile __near unsigned char*)0xF83)) & (1<<((num + 1))))) {
            delay_ms(75);
            return 1;
        } else {
            delay_ms(75);
            return 0;
        }
    }
}
