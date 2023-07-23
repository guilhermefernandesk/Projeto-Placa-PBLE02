# 1 "pwm.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "pwm.c" 2
# 20 "pwm.c"
# 1 "./pwm.h" 1
# 23 "./pwm.h"
 void pwmSet(unsigned char porcento);

 void pwmFrequency(unsigned long int freq);
 void pwmInit(void);
# 20 "pwm.c" 2

# 1 "./pic18f4520.h" 1
# 21 "pwm.c" 2


void pwmInit(void)
{
 (((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(3))));

 (*(volatile __near unsigned char*)0xFCA) |= 0b00000011;
 (((*(volatile __near unsigned char*)0xFCA)) |= (1<<(2)));

 (*(volatile __near unsigned char*)0xFBA) |= 0b00001100;
}

void pwmSet(unsigned char porcento)
{
 unsigned int val = ((unsigned int)porcento) *((*(volatile __near unsigned char*)0xFCB)+1);
 val /= 25;

 val &= 0x03ff;

 (*(volatile __near unsigned char*)0xFBB) = val >> 2;

 (*(volatile __near unsigned char*)0xFBA) |= (val & 0x0003) << 4;
}

void pwmFrequency(unsigned long int freq)
{
 (*(volatile __near unsigned char*)0xFCB) = (125000/(freq)) - 1;
}
