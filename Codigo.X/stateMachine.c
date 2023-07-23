#include "var.h"
#include "stateMachine.h"
#include "event.h"
#include "output.h"
#include "lcd.h"
#include "button.h"
#include "adc.h"
#include "led.h"


void smInit(void) {
    //Estado Inicial
    setState(STATE_TEMPO);
    adcInit();
    ledInit();
}

void smLoop(void) {
    unsigned char evento;

    //Máquina de estados
    
    evento = eventRead();
    
    //Verifica se valores estão maiores ou menos que os máximos e mínimos permitidos
    
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
        
    //Execução dos Eventos
      
    switch (getState()) {
        case STATE_ALARME_TEMP_MAX:
            //execução de atividade
            if (evento == EV_RIGHT) {
                setAlarmLevel1a(getAlarmLevel1a() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel1a(getAlarmLevel1a() - 1);
            }

            //gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME_TEMP_MIN);
            }
            break;
        case STATE_ALARME_PRESS_MAX:
            //Execução de atividade
            if (evento == EV_RIGHT) {
                setAlarmLevel2a(getAlarmLevel2a() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel2a(getAlarmLevel2a() - 1);
            }

            //Gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME_PRESS_MIN);
            }
            break;
        case STATE_ALARME_TEMP_MIN:
            //Execução de atividade
            if (evento == EV_RIGHT) {
                setAlarmLevel1b(getAlarmLevel1b() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel1b(getAlarmLevel1b() - 1);
            }

            //Gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME_PRESS_MAX);
            }
            break;
        case STATE_ALARME_PRESS_MIN:
            //Execução de atividade
            if (evento == EV_RIGHT) {
                setAlarmLevel2b(getAlarmLevel2b() + 1);
            }
            if (evento == EV_LEFT) {
                setAlarmLevel2b(getAlarmLevel2b() - 1);
            }

            //Gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_TEMPO);
            }
            break;
        case STATE_TEMPO:

            //Execução de atividade
            if (evento == EV_RIGHT) {
                setTime(getTime() + 1);
            }
            if (evento == EV_LEFT) {
                setTime(getTime() - 1);
            }

            //Gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_IDIOMA);
            }
            break;

        case STATE_IDIOMA:

            //Execução de atividade
            if (evento == EV_RIGHT) {
                setLanguage(getLanguage() + 1);
            }
            if (evento == EV_LEFT) {
                setLanguage(getLanguage() - 1);
            }

            //Gestão da maquina de estado
            if (evento == EV_ENTER) {
                setState(STATE_ALARME_TEMP_MAX);
            }
            break;

    }
    //Feedback para o usuário
    outputPrint(getState(), getLanguage());
}
