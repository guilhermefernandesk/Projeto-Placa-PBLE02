//Autor : Joao Luiz

#include "led.h"
#include "pic18f4520.h"
#include "config.h"

void ledInit(void)
{
  //DEFINIR PORTAS COMO SAIDAS
  BitClr(TRISB,4);//0
  BitClr(TRISB,5);//1
  BitClr(TRISB,6);//2
  BitClr(TRISB,7);//3
  //BitClr(TRISD,6); //4 (Comentado por Bug de Hardware)
  ADCON1 = 0b00001110;
}
void ledState(char num, char state)
{
    //LIGAR
    if(state==1){
        if(num==4)
            BitClr(PORTD,6);
        else{
            if(num==0)
                BitClr(PORTB,4);
            else
                BitClr(PORTB,(num+4));
         }   
    }
    //DESLIGAR
    if(state==0){
        if(num==4)
            BitSet(PORTD,6);
         else{
            if(num==0)
                BitSet(PORTB,4);
            else
                BitSet(PORTB,(num+4));
         }       
    } 
}
void ledAll(char s)
{
  //LIGAR OU DESLIGAR TODOS OS LEDS
    ledState(0,s);
    ledState(1,s);
    ledState(2,s);
    ledState(3,s);
    ledState(4,s);
}

void ledTst(void)
{
    //Liga e desligas todos os leds sequencialmente
    ledState(0,1);
    for(long int i=0;i<50000;i++);
    ledState(1,1);
    for(long int i=0;i<50000;i++);
    ledState(2,1);
    for(long int i=0;i<50000;i++);
    ledState(3,1);
    for(long int i=0;i<50000;i++);
    ledState(4,1);
    for(long int i=0;i<50000;i++);
    ledState(0,0);
    for(long int i=0;i<50000;i++);
    ledState(1,0);
    for(long int i=0;i<50000;i++);
    ledState(2,0);
    for(long int i=0;i<50000;i++);
    ledState(3,0);
    for(long int i=0;i<50000;i++);
    ledState(4,0);
    for(long int i=0;i<50000;i++);
}