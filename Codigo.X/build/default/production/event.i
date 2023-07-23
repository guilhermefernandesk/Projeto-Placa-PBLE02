# 1 "event.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.05/packs/Microchip/PIC18Fxxxx_DFP/1.3.36/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "event.c" 2
# 1 "./button.h" 1




 void butInit(void);
    char butRead(char num);
# 1 "event.c" 2

# 1 "./event.h" 1
# 10 "./event.h"
enum{
    EV_UP,
    EV_DOWN,
    EV_LEFT,
    EV_RIGHT,
    EV_ENTER,
    EV_NOEVENT
};
void eventInit(void);
unsigned int eventRead(void);
# 2 "event.c" 2

# 1 "./serial.h" 1
# 23 "./serial.h"
 void serialSend(unsigned char c);
 unsigned char serialRead(void);
 void serialInit(void);
    void serialString(const char *str);
    void serialInt(int val);
# 3 "event.c" 2

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
# 4 "event.c" 2


static unsigned int key_ant;


void eventInit(void) {
    butInit();
    serialInit();
    key_ant = 0;
}

unsigned char a;
unsigned char pos = 0;
char buffer[15];



unsigned int eventRead(void) {
    int key = 1;
    int ev = EV_NOEVENT;
    unsigned char ser;



    if (key != key_ant) {
        if (butRead(0)) {
            ev = EV_RIGHT;
            key_ant = key;
        }

        if (butRead(1)) {
            ev = EV_LEFT;
            key_ant = key;
        }

        if (butRead(2)) {
            ev = EV_ENTER;
            key_ant = key;
        }
    }
    key_ant = 0;




    int temp = 0;
    ser = serialRead();

    if (ser == 'P') {
        pos = 0;
    }

    if ((ser != 0)) {

        buffer[pos] = ser;
        pos++;
        if (pos >= 15) {
            pos = 0;
        }
    }



    if (pos == 9) {
        pos = 0;
        temp = (((buffer[7] - 48)* 10)+
                ((buffer[8] - 48)* 1));
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') &&
                (buffer[2] == 'M') &&
                (buffer[3] == 'A') &&
                (buffer[4] == 'X') &&
                (buffer[5] == '1') &&
                (buffer[6] == 'X')) {
            setAlarmLevel1a(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') &&
                (buffer[2] == 'M') &&
                (buffer[3] == 'A') &&
                (buffer[4] == 'X') &&
                (buffer[5] == '2') &&
                (buffer[6] == 'X')) {
            setAlarmLevel2a(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') &&
                (buffer[2] == 'M') &&
                (buffer[3] == 'I') &&
                (buffer[4] == 'N') &&
                (buffer[5] == '1') &&
                (buffer[6] == 'X')) {
            setAlarmLevel1b(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') &&
                (buffer[2] == 'M') &&
                (buffer[3] == 'I') &&
                (buffer[4] == 'N') &&
                (buffer[5] == '2') &&
                (buffer[6] == 'X')) {
            setAlarmLevel2b(temp);
        }
        if ((buffer[0] == 'P') &&
                (buffer[1] == 'S') &&
                (buffer[2] == 'T') &&
                (buffer[3] == 'I') &&
                (buffer[4] == 'M') &&
                (buffer[5] == 'E') &&
                (buffer[6] == 'X')) {
            setTime(temp);
        }
    }



    if (ser == 'd') {
        ev = EV_RIGHT;
    }
    if (ser == 'a') {
        ev = EV_LEFT;
    }

    if (ser == 'e') {
        ev = EV_ENTER;
    }
    return ev;
}
