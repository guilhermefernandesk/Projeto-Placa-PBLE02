EESchema Schematic File Version 5
EELAYER 36 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Wire Wire Line
	1800 1200 2600 1200
Wire Wire Line
	2600 1000 1800 1000
Wire Wire Line
	2600 1100 1800 1100
Wire Wire Line
	3900 750  4850 750 
Wire Wire Line
	3900 950  4850 950 
Wire Wire Line
	3900 1150 4850 1150
Wire Wire Line
	3900 1400 4850 1400
Wire Wire Line
	3900 1500 4850 1500
Wire Wire Line
	3900 1900 4850 1900
Wire Wire Line
	3900 2000 4850 2000
Wire Wire Line
	3900 2100 4850 2100
Wire Wire Line
	3900 2300 4850 2300
Wire Wire Line
	3900 2400 4850 2400
Wire Wire Line
	3900 2700 4850 2700
Wire Wire Line
	3900 2900 4850 2900
Wire Wire Line
	3900 3100 4850 3100
Wire Wire Line
	3900 3300 4850 3300
Wire Wire Line
	3900 3400 4850 3400
Wire Wire Line
	3900 3600 4850 3600
Wire Wire Line
	3900 3800 4850 3800
Wire Wire Line
	3900 3900 4850 3900
Wire Wire Line
	3900 4000 4850 4000
Wire Wire Line
	3900 4200 4850 4200
Wire Wire Line
	4850 850  3900 850 
Wire Wire Line
	4850 1050 3900 1050
Wire Wire Line
	4850 1250 3900 1250
Wire Wire Line
	4850 1600 3900 1600
Wire Wire Line
	4850 1800 3900 1800
Wire Wire Line
	4850 2200 3900 2200
Wire Wire Line
	4850 2800 3900 2800
Wire Wire Line
	4850 3000 3900 3000
Wire Wire Line
	4850 3200 3900 3200
Wire Wire Line
	4850 3500 3900 3500
Wire Wire Line
	4850 3700 3900 3700
Wire Wire Line
	4850 4100 3900 4100
Wire Wire Line
	4850 4300 3900 4300
$Sheet
S 1250 800  550  550 
U 60ABFECB
F0 "Alimentação" 50
F1 "Alimentação.sch" 50
F2 "D+" B R 1800 1100 50 
F3 "D-" B R 1800 1200 50 
F4 "MCP_RST" O R 1800 1000 50 
$EndSheet
$Sheet
S 4850 2650 550  1750
U 60AF819E
F0 "Interação com o usuário" 50
F1 "Interação com o usuário.sch" 50
F2 "L1" I L 4850 3200 50 
F3 "L2" I L 4850 3300 50 
F4 "L3" I L 4850 3400 50 
F5 "L4" I L 4850 3500 50 
F6 "L5" I L 4850 3600 50 
F7 "LCD.E" I L 4850 3800 50 
F8 "LCD.RS" I L 4850 3900 50 
F9 "LCD.DB4" I L 4850 4000 50 
F10 "LCD.DB5" I L 4850 4100 50 
F11 "LCD.DB6" I L 4850 4200 50 
F12 "LCD.DB7" I L 4850 4300 50 
F13 "B1" O L 4850 2700 50 
F14 "B2" O L 4850 2800 50 
F15 "B3" O L 4850 2900 50 
F16 "B4" O L 4850 3000 50 
F17 "B5" O L 4850 3100 50 
F18 "POT.OUT" O L 4850 3700 50 
$EndSheet
$Sheet
S 2600 700  1300 3700
U 60AD1C83
F0 "Operação" 50
F1 "Operação.sch" 50
F2 "DATA+" B L 2600 1100 50 
F3 "DATA-" B L 2600 1200 50 
F4 "RA5" B R 3900 1600 50 
F5 "RA3" B R 3900 1400 50 
F6 "RA4" B R 3900 1500 50 
F7 "ICPORTS" B R 3900 1800 50 
F8 "ICRST" B R 3900 1900 50 
F9 "RE2" B R 3900 2200 50 
F10 "RE1" B R 3900 2100 50 
F11 "RE0" B R 3900 2000 50 
F12 "RD7" B R 3900 2300 50 
F13 "VUSB'" B R 3900 2400 50 
F14 "MFP" I R 3900 750 50 
F15 "AN1" I R 3900 1050 50 
F16 "AN2" I R 3900 1150 50 
F17 "PWM" O R 3900 1250 50 
F18 "B1" I R 3900 2700 50 
F19 "B2" I R 3900 2800 50 
F20 "B3" I R 3900 2900 50 
F21 "B4" I R 3900 3000 50 
F22 "B5" I R 3900 3100 50 
F23 "LED2" O R 3900 3300 50 
F24 "LED1" O R 3900 3200 50 
F25 "LED3" O R 3900 3400 50 
F26 "LED4" O R 3900 3500 50 
F27 "LED5" O R 3900 3600 50 
F28 "LCD.D5" O R 3900 4100 50 
F29 "LCD.D6" O R 3900 4200 50 
F30 "LCD.D7" O R 3900 4300 50 
F31 "POT" I R 3900 3700 50 
F32 "LCD.D4" O R 3900 4000 50 
F33 "LCD.E" O R 3900 3800 50 
F34 "LCD.RS" O R 3900 3900 50 
F35 "SDA" B R 3900 850 50 
F36 "SCL" O R 3900 950 50 
F37 "MCP_RST" I L 2600 1000 50 
$EndSheet
$Sheet
S 4850 700  550  1750
U 60B55606
F0 "Periféricos e expansão" 50
F1 "Periféricos e expansão.sch" 50
F2 "SCL" I L 4850 950 50 
F3 "A_OUT" O L 4850 1050 50 
F4 "B_OUT" O L 4850 1150 50 
F5 "PWM" I L 4850 1250 50 
F6 "MFP" O L 4850 750 50 
F7 "SDA" B L 4850 850 50 
F8 "RA3" B L 4850 1400 50 
F9 "RA4" B L 4850 1500 50 
F10 "RA5" B L 4850 1600 50 
F11 "ICPORTS" B L 4850 1800 50 
F12 "ICRST" B L 4850 1900 50 
F13 "RE0" B L 4850 2000 50 
F14 "RE1" B L 4850 2100 50 
F15 "RE2" B L 4850 2200 50 
F16 "RD7" B L 4850 2300 50 
F17 "VUSB'" B L 4850 2400 50 
$EndSheet
$EndSCHEMATC