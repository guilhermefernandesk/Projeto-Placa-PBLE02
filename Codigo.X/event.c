#include "button.h"
#include "event.h"
#include "serial.h"
#include "var.h"

static unsigned int key_ant;

//Inicializações
void eventInit(void) {
    butInit();
    serialInit();
    key_ant = 0;
}

unsigned char a;
unsigned char pos = 0;
char buffer[15];

//Leitura dos comandos e protocolos do usuário

unsigned int eventRead(void) {
    int key = 1;
    int ev = EV_NOEVENT;
    unsigned char ser;
    
    //Leitura dos comandos por botão
    
    if (key != key_ant) {
        if (butRead(0)) {
            ev = EV_RIGHT;
            key_ant = key;
        }

        if (butRead(1)) {
            ev = EV_LEFT;
            key_ant = key;
        }

        if (butRead(2)) {
            ev = EV_ENTER;
            key_ant = key;
        }
    }
    key_ant = 0;

    
    //Leitura dos comandos seriais
    
    int temp = 0;
    ser = serialRead();

    if (ser == 'P') {
        pos = 0;
    }

    if ((ser != 0)) {

        buffer[pos] = ser;
        pos++;
        if (pos >= 15) {
            pos = 0;
        }
    }
    
    //Leitura dos protocolos seriais do tipo PSCMNDX00
    
    if (pos == 9) {
        pos = 0;
        temp = (((buffer[7] - 48)* 10)+
                ((buffer[8] - 48)* 1));
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') &&
                (buffer[2] == 'M') &&
                (buffer[3] == 'A') &&
                (buffer[4] == 'X') &&
                (buffer[5] == '1') &&
                (buffer[6] == 'X')) {
            setAlarmLevel1a(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') && 
                (buffer[2] == 'M') && 
                (buffer[3] == 'A') &&
                (buffer[4] == 'X') && 
                (buffer[5] == '2') && 
                (buffer[6] == 'X')) {
            setAlarmLevel2a(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') && 
                (buffer[2] == 'M') && 
                (buffer[3] == 'I') &&
                (buffer[4] == 'N') && 
                (buffer[5] == '1') && 
                (buffer[6] == 'X')) {
            setAlarmLevel1b(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') && 
                (buffer[2] == 'M') && 
                (buffer[3] == 'I') &&
                (buffer[4] == 'N') && 
                (buffer[5] == '2') && 
                (buffer[6] == 'X')) {
            setAlarmLevel2b(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') && 
                (buffer[2] == 'T') && 
                (buffer[3] == 'I') &&
                (buffer[4] == 'M') && 
                (buffer[5] == 'E') && 
                (buffer[6] == 'X')) {
            setTime(temp);
        }
    }

    //Leitura dos comandos seriais de 1 caractere
    
    if (ser == 'd') {
        ev = EV_RIGHT;
    }
    if (ser == 'a') {
        ev = EV_LEFT;
    }

    if (ser == 'e') {
        ev = EV_ENTER;
    }
    return ev;
}
