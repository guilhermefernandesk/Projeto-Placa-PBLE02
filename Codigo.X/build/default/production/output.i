# 1 "output.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "output.c" 2
# 1 "./output.h" 1
# 10 "./output.h"
void outputInit(void);
void outputPrint(int numTela, int idioma);
# 1 "output.c" 2

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
# 2 "output.c" 2

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
# 3 "output.c" 2

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
# 4 "output.c" 2

# 1 "./serial.h" 1
# 23 "./serial.h"
 void serialSend(unsigned char c);
 unsigned char serialRead(void);
 void serialInit(void);
    void serialString(const char *str);
    void serialInt(int val);
# 5 "output.c" 2







static char * msgs[STATE_FIM][2] = {

    {"Max alarme 1 ", "Max alarm 1  "},
    {"Max alarme 2 ", "Max alarm 2  "},
    {"Min alarme 1 ", "Min alarm 1  "},
    {"Min alarme 2 ", "Min alarm 2  "},
    {"Alterar tempo  ", "Change time     "},
    {"Alterar idioma ", "Change language "}
};

void outputInit(void) {

    lcdInit();
    serialInit();
}



void outputPrint(int numTela, int idioma) {

    if (numTela == STATE_TEMPO) {



        lcdCommand(0x01);
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getTime());
        lcdString("                    ");



        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSTIMEX00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getTime());
        serialSend('\r');

    }
    if (numTela == STATE_ALARME_TEMP_MAX) {



        lcdCommand(0x01);
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel1a());
        lcdString(" adc=");
        lcdInt(adcRead(1));
        lcdString("                    ");



        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSMAX1X00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getAlarmLevel1a());
        serialString(" adc=");
        serialInt(adcRead(1));
        serialSend('\r');
    }
    if (numTela == STATE_ALARME_PRESS_MAX){



        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel2a());
        lcdString(" adc=");
        lcdInt(adcRead(3));
        lcdString("                    ");



        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSMAX2X00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getAlarmLevel2a());
        serialString(" adc=");
        serialInt(adcRead(3));
        serialSend('\r');

    }
    if(numTela == STATE_ALARME_TEMP_MIN){



        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel1b());
        lcdString(" adc=");
        lcdInt(adcRead(1));
        lcdString("                    ");



        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSMIN1X00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getAlarmLevel1b());
        serialString(" adc=");
        serialInt(adcRead(1));
        serialSend('\r');

    }
    if (numTela == STATE_ALARME_PRESS_MIN) {



        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel2b());
        lcdString(" adc=");
        lcdInt(adcRead(3));
        lcdString("                    ");



        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSMIN2X00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getAlarmLevel2b());
        serialString(" adc=");
        serialInt(adcRead(3));
        serialSend('\r');

    }
    if (numTela == STATE_IDIOMA) {



        lcdCommand(0x01);
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);



        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("   ");
        serialString(msgs[numTela][idioma]);



        lcdCommand(0xC0);
        if (getLanguage() == 0) {
            lcdString("Portugues       ");
            serialString("Portugues       ");

        }
        if (getLanguage() == 1) {
            lcdString("English         ");
            lcdString("English         ");
        }
         serialSend('\r');

    }

}
