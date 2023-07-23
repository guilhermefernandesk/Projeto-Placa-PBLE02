/*
 * File:   main.c
 * Author: Jo�o Luiz de Miranda Cilli
 *
 * Created on 27 de Mar�o de 2023, 14:01
 */

#include"event.h"
#include"var.h"
#include"stateMachine.h"
#include"output.h"
#include"timer.h"

void main(void){
    //Inicializa��es
    timerInit();
    varInit();
    eventInit();
    outputInit();
    smInit();
    for (;;) {
        timerReset(getTime());
        smLoop();//m�quina de estados 
        timerWait();
    }
}

