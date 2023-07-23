# 1 "i2c.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "i2c.c" 2
# 1 "./i2c.h" 1




 void i2cInit(void);
 unsigned char i2cWriteByte(unsigned char send_start, unsigned char send_stop, unsigned char byte);
 unsigned char i2cReadByte(unsigned char nack, unsigned char send_stop);
# 1 "i2c.c" 2

# 1 "./pic18f4520.h" 1
# 2 "i2c.c" 2
# 14 "i2c.c"
void i2cInit(void) {
 ((((*(volatile __near unsigned char*)0xF93)) |= (1<<(0))));
 ((((*(volatile __near unsigned char*)0xF93)) |= (1<<(1))));
}



void I2C_delay(void) {
 volatile int v;
 int i;
}

unsigned char read_SCL(void)
{
 ((((*(volatile __near unsigned char*)0xF93)) |= (1<<(1))));
 return !!((((*(volatile __near unsigned char*)0xF81)) & (1<<(1))));
}
unsigned char read_SDA(void)
{
 ((((*(volatile __near unsigned char*)0xF93)) |= (1<<(0))));
 return !!((((*(volatile __near unsigned char*)0xF81)) & (1<<(0))));
}
void clear_SCL(void)
{
 ((((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(1)))));
 ((((*(volatile __near unsigned char*)0xF81)) = ((*(volatile __near unsigned char*)0xF81)) & (~(1<<(1)))));
}

void clear_SDA(void)
{
 ((((*(volatile __near unsigned char*)0xF93)) = ((*(volatile __near unsigned char*)0xF93)) & (~(1<<(0)))));
 ((((*(volatile __near unsigned char*)0xF81)) = ((*(volatile __near unsigned char*)0xF81)) & (~(1<<(0)))));
}

unsigned char started = 0;
void i2c_start(void) {

 if (started) {
  read_SDA();
  I2C_delay();
  while (read_SCL() == 0);

  I2C_delay();
 }
 if (read_SDA() == 0) {

 }

 clear_SDA();
 I2C_delay();
 clear_SCL();
 started = 1;
}

void i2c_stop(void) {

 clear_SDA();
 I2C_delay();
 while (read_SCL() == 0);
 I2C_delay();
 if (read_SDA() == 0) {

 }
 I2C_delay();
 started = 0;
}

void i2c_write_bit(unsigned char bit) {
 if (bit) {
  read_SDA();
 } else {
  clear_SDA();
 }
 I2C_delay();
 while (read_SCL() == 0);
 if (bit && read_SDA() == 0) {

 }
 I2C_delay();
 clear_SCL();
 I2C_delay();
}

unsigned char i2c_read_bit(void) {
 unsigned char bit;
 read_SDA();
 I2C_delay();
 while (read_SCL() == 0);
 bit = read_SDA();
 I2C_delay();
 clear_SCL();
 I2C_delay();
 return bit;
}


unsigned char i2cWriteByte(unsigned char send_start, unsigned char send_stop, unsigned char byte) {
 unsigned char bit;
 unsigned char nack;
 if (send_start) {
  i2c_start();
 }
 for (bit = 0; bit < 8; bit++) {
  i2c_write_bit((byte & 0x80) != 0);
  byte <<= 1;
 }
 nack = i2c_read_bit();
 if (send_stop) {
  i2c_stop();
 }
 return nack;
}


unsigned char i2cReadByte(unsigned char nack, unsigned char send_stop) {
 unsigned char byte = 0;
 unsigned bit;
 for (bit = 0; bit < 8; bit++) {
  byte = (byte << 1) | i2c_read_bit();
 }
 i2c_write_bit(nack);
 if (send_stop) {
  i2c_stop();
 }
 return byte;
}
