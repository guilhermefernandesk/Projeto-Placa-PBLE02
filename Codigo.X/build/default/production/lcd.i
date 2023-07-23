# 1 "lcd.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "lcd.c" 2
# 21 "lcd.c"
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
# 21 "lcd.c" 2

# 1 "./pic18f4520.h" 1
# 22 "lcd.c" 2





void lcdInit(void) {

    (((*(volatile __near unsigned char*)0xF96)) = ((*(volatile __near unsigned char*)0xF96)) & (~(1<<(1))));
    (((*(volatile __near unsigned char*)0xF96)) = ((*(volatile __near unsigned char*)0xF96)) & (~(1<<(0))));


    (((*(volatile __near unsigned char*)0xF95)) = ((*(volatile __near unsigned char*)0xF95)) & (~(1<<(0))));
    (((*(volatile __near unsigned char*)0xF95)) = ((*(volatile __near unsigned char*)0xF95)) & (~(1<<(1))));
    (((*(volatile __near unsigned char*)0xF95)) = ((*(volatile __near unsigned char*)0xF95)) & (~(1<<(2))));
    (((*(volatile __near unsigned char*)0xF95)) = ((*(volatile __near unsigned char*)0xF95)) & (~(1<<(3))));
    (*(volatile __near unsigned char*)0xFC1) = 0b00001110;


    delay_ms(15);

    lcdCommand4(0x30);
    delay_ms(2);

    lcdCommand4(0x30);
    delay_ms(2);

    lcdCommand4(0x30);
    delay_ms(2);

    lcdCommand4(0x20);
    delay_ms(2);


    lcdCommand(0x28);
    lcdCommand(0x01);
    lcdCommand(0x06);
    lcdCommand(0x0F);
}

void delay_ms(unsigned long ms) {
    volatile unsigned int l = 0;
    for (unsigned long i = 0; i < ms; i++)
        delay_50us(20);
}

void delay_50us(unsigned long us) {
    volatile unsigned int l = 0;
    for (unsigned long i = 0; i < us; i++)
        for (l = 0; l < 19; l++);
}


void pulse() {
    (((*(volatile __near unsigned char*)0xF84)) |= (1<<(0)));
    (((*(volatile __near unsigned char*)0xF84)) = ((*(volatile __near unsigned char*)0xF84)) & (~(1<<(0))));
}

void lcdCommand4(unsigned char cmd) {
    (((*(volatile __near unsigned char*)0xF84)) = ((*(volatile __near unsigned char*)0xF84)) & (~(1<<(1))));
    if (((cmd) & (1<<(4)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(3)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(3))));
    }
    if (((cmd) & (1<<(5)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(2)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(2))));
    }
    if (((cmd) & (1<<(6)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(1)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(1))));
    }
    if (((cmd) & (1<<(7)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(0)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(0))));
    }
    pulse();
}

void lcdData4(unsigned char cmd) {
    (((*(volatile __near unsigned char*)0xF84)) |= (1<<(1)));
    if (((cmd) & (1<<(4)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(3)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(3))));
    }
    if (((cmd) & (1<<(5)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(2)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(2))));
    }
    if (((cmd) & (1<<(6)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(1)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(1))));
    }
    if (((cmd) & (1<<(7)))) {
        (((*(volatile __near unsigned char*)0xF83)) |= (1<<(0)));
    } else {
        (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(0))));
    }
    pulse();
}



void lcdCommand(unsigned char cmd) {

    lcdCommand4(cmd);

    lcdCommand4(cmd << 4);
    if ((cmd == 0x02) || (cmd == 0x01)) {
        delay_ms(2);
    } else {
        delay_50us(1);
    }
}



void lcdData(unsigned char valor) {
    lcdData4(valor);
    lcdData4(valor << 4);
    delay_50us(1);
}



void lcdInt(int val) {
    if (val < 0) {
        val = val * (-1);
        lcdData('-');
    }
    lcdData((val / 10000) % 10 + 48);
    lcdData((val / 1000) % 10 + 48);
    lcdData((val / 100) % 10 + 48);
    lcdData((val / 10) % 10 + 48);
    lcdData((val / 1) % 10 + 48);

}



void lcdString(char msg[]) {
    int i=0;
    while (msg[i]!=0) {
        lcdData(msg[i]);
        i++;
    }
}
