// -----------------------------------------------------------------------
//   Copyright (C) Rodrigo Almeida 2010
// -----------------------------------------------------------------------
//   Arquivo: lcd.c
//            Biblioteca de manipulação do LCD
//   Autor:   Rodrigo Maximiano Antunes de Almeida
//            rodrigomax at unifei.edu.br
//   Licença: GNU GPL 2
// -----------------------------------------------------------------------
//   This program is free software; you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation; version 2 of the License.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
// -----------------------------------------------------------------------


#include "lcd.h"
#include "pic18f4520.h"

#define RS 1
#define EN 0

void lcdInit(void) {
    // configurações de direção dos terminais
    BitClr(TRISE, RS); //RS
    BitClr(TRISE, EN); //EN
    //BitClr(TRISC,RW);	//RW

    BitClr(TRISD, 0);
    BitClr(TRISD, 1);
    BitClr(TRISD, 2);
    BitClr(TRISD, 3); //dados
    ADCON1 = 0b00001110; //apenas

    // garante inicialização do LCD (+-10ms)
    delay_ms(15);
    //precisa enviar 4x pra garantir 4 bits
    lcdCommand4(0x30);
    delay_ms(2);
    
    lcdCommand4(0x30);
    delay_ms(2);
    
    lcdCommand4(0x30);
    delay_ms(2);
    
    lcdCommand4(0x20);
    delay_ms(2);

    
    lcdCommand(0x28);
    lcdCommand(0x01); //limpar display
    lcdCommand(0x06); //modo incremental
    lcdCommand(0x0F); //display e cursor on, com blink
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

//Pulso no Enable
void pulse() {
    BitSet(PORTE, EN); 
    BitClr(PORTE, EN);
}

void lcdCommand4(unsigned char cmd) {
    BitClr(PORTE, RS); 
    if (BitTst(cmd, 4)) {
        BitSet(PORTD, 3);
    } else {
        BitClr(PORTD, 3);
    }
    if (BitTst(cmd, 5)) {
        BitSet(PORTD, 2);
    } else {
        BitClr(PORTD, 2);
    }
    if (BitTst(cmd, 6)) {
        BitSet(PORTD, 1);
    } else {
        BitClr(PORTD, 1);
    }
    if (BitTst(cmd, 7)) {
        BitSet(PORTD, 0);
    } else {
        BitClr(PORTD, 0);
    }
    pulse();
}

void lcdData4(unsigned char cmd) {
    BitSet(PORTE, RS); 
    if (BitTst(cmd, 4)) {
        BitSet(PORTD, 3);
    } else {
        BitClr(PORTD, 3);
    }
    if (BitTst(cmd, 5)) {
        BitSet(PORTD, 2);
    } else {
        BitClr(PORTD, 2);
    }
    if (BitTst(cmd, 6)) {
        BitSet(PORTD, 1);
    } else {
        BitClr(PORTD, 1);
    }
    if (BitTst(cmd, 7)) {
        BitSet(PORTD, 0);
    } else {
        BitClr(PORTD, 0);
    }
    pulse();
}

//Envia comandos para o LCD

void lcdCommand(unsigned char cmd) {

    lcdCommand4(cmd);

    lcdCommand4(cmd << 4);
    if ((cmd == 0x02) || (cmd == 0x01)) {
        delay_ms(2);
    } else {
        delay_50us(1);
    }
}

//Envia dados para o LCD

void lcdData(unsigned char valor) {
    lcdData4(valor);
    lcdData4(valor << 4);
    delay_50us(1);
}

//Printa um número inteiro para o LCD

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

//Printa uma string para o LCD

void lcdString(char msg[]) {
    int i=0;
    while (msg[i]!=0) {
        lcdData(msg[i]);
        i++;
    }
}
