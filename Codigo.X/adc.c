// -----------------------------------------------------------------------
//   Copyright (C) Rodrigo Almeida 2010
// -----------------------------------------------------------------------
//   Arquivo: adc.c
//            Biblioteca do conversor AD para o PIC18F4520
//   Autor:   Rodrigo Maximiano Antunes de Almeida
//            rodrigomax at unifei.edu.br
//   Licença: GNU GPL 2
// -----------------------------------------------------------------------
//   This program is free software; you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation; version 2 of the License.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
// -----------------------------------------------------------------------

#include "adc.h"
#include "pic18f4520.h"


 void adcInit(void)
{
	BitSet(TRISA,0); //seta o bit 0 como entrada
    BitSet(TRISA,1); //seta o bit 1 como entrada
    BitSet(TRISA,2); //seta o bit 2 como entrada
    ADCON0 = 0b00000001; 
	ADCON1 = 0b00001100;
	ADCON2 = 0b10101010; 
}
 
int adcRead(unsigned int a)
{
    unsigned int ADvalor;
    
    //Seleção da entrada a ser lida
    
    if(a==1)
    {
        ADCON0=0b00000001;
    }
    if(a==2)
    {
        ADCON0=0b00000101;
    }
    if(a==3)
    {
        ADCON0=0b00001001;
    }
    
	ADCON0 |= 0b00000110;	 //inicia conversao

	while(BitTst(ADCON0,1)); // espera terminar a conversão;

	ADvalor = ADRESH ; // le o resultado
	ADvalor <<= 8;
	ADvalor += ADRESL;
	return ADvalor;
}

 

