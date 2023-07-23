#include "output.h"
#include "lcd.h"
#include "stateMachine.h"
#include "var.h"
#include "serial.h"


#define NUM_IDIOMAS 2

//msgs com 16 caracteres
//1 msg por estado (apenas linha de cima)
static char * msgs[STATE_FIM][NUM_IDIOMAS] = {
    
    {"Max alarme 1 ", "Max alarm 1  "},
    {"Max alarme 2 ", "Max alarm 2  "}, 
    {"Min alarme 1 ", "Min alarm 1  "},
    {"Min alarme 2 ", "Min alarm 2  "},    
    {"Alterar tempo  ",   "Change time     "},
    {"Alterar idioma ",   "Change language "}
};

void outputInit(void) {
    //Inicializações
    lcdInit();
    serialInit();
}

//Feedback para o usuário

void outputPrint(int numTela, int idioma) {

    if (numTela == STATE_TEMPO) {
        
        //Feedback pelo LCD
        
        lcdCommand(0x01);
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getTime());
        lcdString("                    ");//para apagar os textos depois do numero
        
       //Feedback pelo Serial
        
        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSTIMEX00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getTime());
        serialSend('\r');//para apagar os textos depois do numero
        
    }
    if (numTela == STATE_ALARME_TEMP_MAX) {
        
        //Feedback pelo LCD
        
        lcdCommand(0x01);
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel1a());
        lcdString(" adc=");
        lcdInt(adcRead(1));
        lcdString("                    ");//para apagar os textos depois do numero
        
        //Feedback pelo Serial
        
        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSMAX1X00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getAlarmLevel1a());
        serialString(" adc=");
        serialInt(adcRead(1));
        serialSend('\r');//para apagar os textos depois do numero
    }
    if (numTela == STATE_ALARME_PRESS_MAX){ 
        
        //Feedback pelo LCD
        
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel2a());
        lcdString(" adc=");
        lcdInt(adcRead(3));
        lcdString("                    ");//para apagar os textos depois do numero
        
        //Feedback pelo Serial
        
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
        
        //Feedback pelo LCD
        
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel1b());
        lcdString(" adc=");
        lcdInt(adcRead(1));
        lcdString("                    ");//para apagar os textos depois do numero
        
        //Feedback pelo Serial
        
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
        
        //Feedback pelo LCD
        
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        lcdCommand(0xC0);
        lcdInt(getAlarmLevel2b());
        lcdString(" adc=");
        lcdInt(adcRead(3));
        lcdString("                    ");//para apagar os textos depois do numero
        
        //Feedback pelo Serial
        
        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("Protocolo: PSMIN2X00\r");
        serialString(msgs[numTela][idioma]);
        serialString("   ");
        serialInt(getAlarmLevel2b());
        serialString(" adc=");
        serialInt(adcRead(3));
        serialSend('\r');//para apagar os textos depois do numero
       
    }
    if (numTela == STATE_IDIOMA) {
        
        //Feedback pelo LCD
        
        lcdCommand(0x01);
        lcdCommand(0x80);
        lcdString(msgs[numTela][idioma]);
        
        //Feedback pelo Serial
        
        for(int i=0;i<32;i++){
            serialSend('\b');
        }
        serialString("   ");
        serialString(msgs[numTela][idioma]);
       
        //Verificação do Idioma
        
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

