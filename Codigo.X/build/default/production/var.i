# 1 "var.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "var.c" 2
# 1 "./var.h" 1
# 11 "./var.h"
void varInit(void);

char getState(void);
void setState(char newState);
int getTime(void);
void setTime(int newTime);
int getAlarmLevel1a(void);
void setAlarmLevel1a(int newAlarmLevel1a);
int getAlarmLevel2a(void);
void setAlarmLevel2a(int newAlarmLevel2a);
char getLanguage(void);
int getAlarmLevel1b(void);
void setAlarmLevel1b(int newAlarmLevel1b);
int getAlarmLevel2b(void);
void setAlarmLevel2b(int newAlarmLevel2b);
void setLanguage(char newLanguage);
# 1 "var.c" 2

# 1 "./rtc.h" 1
# 14 "./rtc.h"
 void dsInit(void);
 void dsStartClock(void);
 void dsStopClock(void);
 int dec2bcd(int value);
 int bcd2dec(int value);
 void dsWriteData(unsigned char value, int address);
 int dsReadData(int address);
# 2 "var.c" 2




static char state;
static char language;
static int time;

void varInit(void) {

    state = 0;
    time = 99;
    dsInit();
}




char getState(void) {
    return state;
}

void setState(char newState) {
    state = newState;
}

int getTime(void) {
    return time;
}

void setTime(int newTime) {
    time = newTime;
}




int getAlarmLevel1a(void) {
    char tmp = dsReadData(0x24);
    if (tmp > 99) {
        dsWriteData(99, 0x24);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x24);
    }
    return (int) (dsReadData(0x24));
}

void setAlarmLevel1a(int newAlarmLevel1a) {
    if ((newAlarmLevel1a <= 99)&&(newAlarmLevel1a >= 0)) {
        dsWriteData(newAlarmLevel1a, 0x24);
    }
}

int getAlarmLevel2a(void) {
    char tmp = dsReadData(0x23);
    if (tmp > 99) {
        dsWriteData(99, 0x23);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x23);
    }
    return (int) (dsReadData(0x23));
}

void setAlarmLevel2a(int newAlarmLevel2a) {

    if ((newAlarmLevel2a <= 99)&&(newAlarmLevel2a >= 0)) {
        dsWriteData(newAlarmLevel2a, 0x23);
    }
}

int getAlarmLevel1b(void) {
    char tmp = dsReadData(0x22);
    if (tmp > 99) {
        dsWriteData(99, 0x22);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x22);
    }
    return (int) (dsReadData(0x22));
}

void setAlarmLevel1b(int newAlarmLevel1b) {
    if ((newAlarmLevel1b <= 99)&&(newAlarmLevel1b >= 0)) {
        dsWriteData(newAlarmLevel1b, 0x22);
    }
}

int getAlarmLevel2b(void) {
     char tmp = dsReadData(0x21);
    if (tmp > 99) {
        dsWriteData(99, 0x21);
    }
    if (tmp <= 0) {
        dsWriteData(0, 0x21);
    }
    return (int) (dsReadData(0x21));
}

void setAlarmLevel2b(int newAlarmLevel2b) {
    if ((newAlarmLevel2b <= 99) && (newAlarmLevel2b >= 0)) {
        dsWriteData(newAlarmLevel2b, 0x21);
    }
}

char getLanguage(void) {
    language = dsReadData(0x20)%2;
    return language;
}

void setLanguage(char newLanguage) {
    dsWriteData(newLanguage%2,0x20);
}
