# 1 "led.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "led.c" 2


# 1 "./led.h" 1




 void ledInit(void);
    void ledState( char num, char state);
    void ledAll(char s);
    void ledTst(void);
# 3 "led.c" 2

# 1 "./pic18f4520.h" 1
# 4 "led.c" 2

# 1 "./config.h" 1
# 31 "./config.h"
#pragma config MCLRE=ON
#pragma config FOSC=HS
#pragma config WDT=OFF
#pragma config LVP=OFF
#pragma config ICPRT=ON
#pragma config CCP2MX = OFF
# 5 "led.c" 2


void ledInit(void)
{

  (((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(4))));
  (((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(5))));
  (((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(6))));
  (((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(7))));

  (*(volatile __near unsigned char*)0xFC1) = 0b00001110;
}
void ledState(char num, char state)
{

    if(state==1){
        if(num==4)
            (((*(volatile __near unsigned char*)0xF83)) = ((*(volatile __near unsigned char*)0xF83)) & (~(1<<(6))));
        else{
            if(num==0)
                (((*(volatile __near unsigned char*)0xF81)) = ((*(volatile __near unsigned char*)0xF81)) & (~(1<<(4))));
            else
                (((*(volatile __near unsigned char*)0xF81)) = ((*(volatile __near unsigned char*)0xF81)) & (~(1<<((num+4)))));
         }
    }

    if(state==0){
        if(num==4)
            (((*(volatile __near unsigned char*)0xF83)) |= (1<<(6)));
         else{
            if(num==0)
                (((*(volatile __near unsigned char*)0xF81)) |= (1<<(4)));
            else
                (((*(volatile __near unsigned char*)0xF81)) |= (1<<((num+4))));
         }
    }
}
void ledAll(char s)
{

    ledState(0,s);
    ledState(1,s);
    ledState(2,s);
    ledState(3,s);
    ledState(4,s);
}

void ledTst(void)
{

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
