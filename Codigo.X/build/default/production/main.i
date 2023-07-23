# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2







# 1 "./event.h" 1
# 10 "./event.h"
enum{
    EV_UP,
    EV_DOWN,
    EV_LEFT,
    EV_RIGHT,
    EV_ENTER,
    EV_NOEVENT
};
void eventInit(void);
unsigned int eventRead(void);
# 8 "main.c" 2

# 1 "./var.h" 1
# 11 "./var.h"
void varInit(void);

char getState(void);
void setState(char newState);
int getTime(void);
void setTime(int newTime);
int getAlarmLevel1a(void);
void setAlarmLevel1a(int newAlarmLevel1a);
int getAlarmLevel2a(void);
void setAlarmLevel2a(int newAlarmLevel2a);
char getLanguage(void);
int getAlarmLevel1b(void);
void setAlarmLevel1b(int newAlarmLevel1b);
int getAlarmLevel2b(void);
void setAlarmLevel2b(int newAlarmLevel2b);
void setLanguage(char newLanguage);
# 9 "main.c" 2

# 1 "./stateMachine.h" 1
# 14 "./stateMachine.h"
enum {
    STATE_ALARME_TEMP_MAX,
    STATE_ALARME_PRESS_MAX,
    STATE_ALARME_TEMP_MIN,
    STATE_ALARME_PRESS_MIN,
    STATE_TEMPO,
    STATE_IDIOMA,
    STATE_FIM
};


void smInit(void);
void smLoop(void);
# 10 "main.c" 2

# 1 "./output.h" 1
# 10 "./output.h"
void outputInit(void);
void outputPrint(int numTela, int idioma);
# 11 "main.c" 2

# 1 "./timer.h" 1
# 23 "./timer.h"
 char timerEnded(void);
 void timerWait(void);

 void timerReset(unsigned int tempo);
 void timerInit(void);
# 12 "main.c" 2


void main(void){

    timerInit();
    varInit();
    eventInit();
    outputInit();
    smInit();
    for (;;) {
        timerReset(getTime());
        smLoop();
        timerWait();
    }
}
