#include"button.h"
#include"pic18f4520.h"
#include "lcd.h"
#include"config.h"

void butInit(void) {
    //Define como entradas
    BitSet(TRISC, 0);
    BitSet(TRISC, 1);
    BitSet(TRISC, 2);
    BitSet(TRISD, 4);
    BitSet(TRISD, 5);
}

char butRead(char num) {
    
    //Realiza a leitura dos botões
    
    if (num < 3) {
        if (BitTst(PORTC, num)) {
            delay_ms(75);
            return 1;
        } else {
            delay_ms(75);
            return 0;
        }
    } else {
        if (BitTst(PORTD, (num + 1))) {
            delay_ms(75);
            return 1;
        } else {
            delay_ms(75);
            return 0;
        }
    }
}
