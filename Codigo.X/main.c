/*
 * File:   main.c
 * Author: João Luiz de Miranda Cilli
 *
 * Created on 27 de Março de 2023, 14:01
 */

#include"event.h"
#include"var.h"
#include"stateMachine.h"
#include"output.h"
#include"timer.h"

void main(void){
    //Inicializações
    timerInit();
    varInit();
    eventInit();
    outputInit();
    smInit();
    for (;;) {
        timerReset(getTime());
        smLoop();//máquina de estados 
        timerWait();
    }
}

