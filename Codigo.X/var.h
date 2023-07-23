/* 
 * File:   alarme.h
 * Author: Avell
 *
 * Created on 14 de Junho de 2017, 16:10
 */

#ifndef VAR_H
#define	VAR_H

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
#endif	/* VAR_H */
