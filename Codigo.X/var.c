#include "var.h"
#include "rtc.h"

//Variáveis a serem armazenadas

static char state;
static char language;
static int time;

void varInit(void) {
    //Inicializações
    state = 0;
    time = 99;
    dsInit();
}

/*Funções para mudar ou retornar os valores das variáveis
  que não ficam armazenadas na memória*/

char getState(void) {
    return state;
}

void setState(char newState) {
    state = newState;
}

int getTime(void) {
    return time;
}

void setTime(int newTime) {
    time = newTime;
}

/*Funções para mudar ou retornar os valores das variáveis
  que ficam armazenadas na memória*/

int getAlarmLevel1a(void) {
    char tmp = dsReadData(0x24);
    if (tmp > 99) {
        dsWriteData(99, 0x24);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x24);
    }
    return (int) (dsReadData(0x24));
}

void setAlarmLevel1a(int newAlarmLevel1a) {
    if ((newAlarmLevel1a <= 99)&&(newAlarmLevel1a >= 0)) {
        dsWriteData(newAlarmLevel1a, 0x24);
    }
}

int getAlarmLevel2a(void) {
    char tmp = dsReadData(0x23);
    if (tmp > 99) {
        dsWriteData(99, 0x23);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x23);
    }
    return (int) (dsReadData(0x23));
}

void setAlarmLevel2a(int newAlarmLevel2a) {

    if ((newAlarmLevel2a <= 99)&&(newAlarmLevel2a >= 0))  {
        dsWriteData(newAlarmLevel2a, 0x23);
    }
}

int getAlarmLevel1b(void) {
    char tmp = dsReadData(0x22);
    if (tmp > 99) {
        dsWriteData(99, 0x22);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x22);
    }
    return (int) (dsReadData(0x22));
}

void setAlarmLevel1b(int newAlarmLevel1b) {
    if ((newAlarmLevel1b <= 99)&&(newAlarmLevel1b >= 0)) {
        dsWriteData(newAlarmLevel1b, 0x22);
    }
}  

int getAlarmLevel2b(void) {
     char tmp = dsReadData(0x21);
    if (tmp > 99) {
        dsWriteData(99, 0x21);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x21);
    }
    return (int) (dsReadData(0x21));
}

void setAlarmLevel2b(int newAlarmLevel2b) {
    if ((newAlarmLevel2b <= 99) && (newAlarmLevel2b >= 0)) {
        dsWriteData(newAlarmLevel2b, 0x21);
    }
}

char getLanguage(void) {
    language = dsReadData(0x20)%2;
    return language;
}

void setLanguage(char newLanguage) {
    dsWriteData(newLanguage%2,0x20);
}