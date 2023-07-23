#include "i2c.h"
#include "rtc.h"

//endereço do dispositivo, deslocado por causa do bit de RW
#define RTC_CTRL_ID (0x6f<<1)
#define I2C_WRITE 0
#define I2C_READ  1

void dsInit(void) {
	i2cInit();
}
//Converte decimal em bcd
int dec2bcd(int value) {
	return ((value / 10 * 16) + (value % 10));
}

//Converte bcd em decimal
int bcd2dec(int value) {
	return ((value / 16 * 10) + (value % 16));
}



//Inicia o Clock
void dsStartClock(void) {
	int seconds;
	seconds = dsReadData(SEC);
	dsWriteData(0x7f & seconds,SEC);
	return;
}

//Escreve dados em um determinado endereço da memória
void dsWriteData(unsigned char value, int address) {
	i2cWriteByte(1,0, RTC_CTRL_ID|I2C_WRITE);
	i2cWriteByte(0,0,address);
	i2cWriteByte(0,1,value);
    for(float i = 0; i<100;i++);
}

//Le dados em um determinado endereço da memória
int dsReadData(int address) {
	int result;
	i2cWriteByte(1,0,RTC_CTRL_ID | I2C_WRITE);
	i2cWriteByte(0,0,address);
	i2cWriteByte(1,0, RTC_CTRL_ID | I2C_READ);
	result = i2cReadByte(1,1 );
	return result;
}