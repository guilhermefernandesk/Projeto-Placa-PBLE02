# 1 "stateMachine.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "stateMachine.c" 2
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
# 1 "stateMachine.c" 2

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
# 2 "stateMachine.c" 2

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
# 3 "stateMachine.c" 2

# 1 "./output.h" 1
# 10 "./output.h"
void outputInit(void);
void outputPrint(int numTela, int idioma);
# 4 "stateMachine.c" 2

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
# 5 "stateMachine.c" 2

# 1 "./button.h" 1




 void butInit(void);
    char butRead(char num);
# 6 "stateMachine.c" 2

# 1 "./adc.h" 1
# 22 "./adc.h"
 void adcInit(void);
 int adcRead(unsigned int a);
# 7 "stateMachine.c" 2

# 1 "./led.h" 1




 void ledInit(void);
    void ledState( char num, char state);
    void ledAll(char s);
    void ledTst(void);
# 8 "stateMachine.c" 2



void smInit(void) {

    setState(STATE_TEMPO);
    adcInit();
    ledInit();
}

void smLoop(void) {
    unsigned char evento;



    evento = eventRead();



    if(adcRead(1)>getAlarmLevel1a()){
        ledState(0,1);
    }else{
        ledState(0,0);
    }

    if(adcRead(3)>getAlarmLevel2a()){
        ledState(2,1);
    }else{
        ledState(2,0);
    }

    if(adcRead(1)<getAlarmLevel1b()){
        ledState(1,1);
    }else{
        ledState(1,0);
    }

    if(adcRead(3)<getAlarmLevel2b()){
        ledState(3,1);
    }else{
        ledState(3,0);
    }



    switch (getState()) {
        case STATE_ALARME_TEMP_MAX:

            if (evento == EV_RIGHT) {
                setAlarmLevel1a(getAlarmLevel1a() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel1a(getAlarmLevel1a() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME_TEMP_MIN);
            }
            break;
        case STATE_ALARME_PRESS_MAX:

            if (evento == EV_RIGHT) {
                setAlarmLevel2a(getAlarmLevel2a() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel2a(getAlarmLevel2a() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME_PRESS_MIN);
            }
            break;
        case STATE_ALARME_TEMP_MIN:

            if (evento == EV_RIGHT) {
                setAlarmLevel1b(getAlarmLevel1b() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel1b(getAlarmLevel1b() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME_PRESS_MAX);
            }
            break;
        case STATE_ALARME_PRESS_MIN:

            if (evento == EV_RIGHT) {
                setAlarmLevel2b(getAlarmLevel2b() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel2b(getAlarmLevel2b() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_TEMPO);
            }
            break;
        case STATE_TEMPO:


            if (evento == EV_RIGHT) {
                setTime(getTime() + 1);
            }
            if (evento == EV_LEFT) {
                setTime(getTime() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_IDIOMA);
            }
            break;

        case STATE_IDIOMA:


            if (evento == EV_RIGHT) {
                setLanguage(getLanguage() + 1);
            }
            if (evento == EV_LEFT) {
                setLanguage(getLanguage() - 1);
            }


            if (evento == EV_ENTER) {
                setState(STATE_ALARME_TEMP_MAX);
            }
            break;

    }

    outputPrint(getState(), getLanguage());
}
