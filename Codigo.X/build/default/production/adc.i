# 1 "adc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "adc.c" 2
# 20 "adc.c"
# 1 "./adc.h" 1
# 22 "./adc.h"
 void adcInit(void);
 int adcRead(unsigned int a);
# 20 "adc.c" 2

# 1 "./pic18f4520.h" 1
# 21 "adc.c" 2



 void adcInit(void)
{
 (((*(volatile __near unsigned char*)0xF92)) |= (1<<(0)));
    (((*(volatile __near unsigned char*)0xF92)) |= (1<<(1)));
    (((*(volatile __near unsigned char*)0xF92)) |= (1<<(2)));
    (*(volatile __near unsigned char*)0xFC2) = 0b00000001;
 (*(volatile __near unsigned char*)0xFC1) = 0b00001100;
 (*(volatile __near unsigned char*)0xFC0) = 0b10101010;
}

int adcRead(unsigned int a)
{
    unsigned int ADvalor;



    if(a==1)
    {
        (*(volatile __near unsigned char*)0xFC2)=0b00000001;
    }
    if(a==2)
    {
        (*(volatile __near unsigned char*)0xFC2)=0b00000101;
    }
    if(a==3)
    {
        (*(volatile __near unsigned char*)0xFC2)=0b00001001;
    }

 (*(volatile __near unsigned char*)0xFC2) |= 0b00000110;

 while((((*(volatile __near unsigned char*)0xFC2)) & (1<<(1))));

 ADvalor = (*(volatile __near unsigned char*)0xFC4) ;
 ADvalor <<= 8;
 ADvalor += (*(volatile __near unsigned char*)0xFC3);
 return ADvalor;
}
