EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3850 1150 3850 1100
Wire Wire Line
	3850 1100 3900 1100
Wire Wire Line
	3950 1100 3950 1150
Wire Wire Line
	3900 1100 3900 900 
Connection ~ 3900 1100
Wire Wire Line
	3900 1100 3950 1100
$Comp
L power:+5V #PWR0152
U 1 1 60AD3E0C
P 3900 900
F 0 "#PWR0152" H 3900 750 50  0001 C CNN
F 1 "+5V" H 3915 1073 50  0000 C CNN
F 2 "" H 3900 900 50  0001 C CNN
F 3 "" H 3900 900 50  0001 C CNN
	1    3900 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0153
U 1 1 60AD454D
P 4400 850
F 0 "#PWR0153" H 4400 700 50  0001 C CNN
F 1 "+5V" H 4415 1023 50  0000 C CNN
F 2 "" H 4400 850 50  0001 C CNN
F 3 "" H 4400 850 50  0001 C CNN
	1    4400 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 850  4400 850 
Wire Wire Line
	4750 850  4800 850 
$Comp
L power:GNDREF #PWR0154
U 1 1 60AD65E9
P 4800 850
F 0 "#PWR0154" H 4800 600 50  0001 C CNN
F 1 "GNDREF" V 4805 722 50  0000 R CNN
F 2 "" H 4800 850 50  0001 C CNN
F 3 "" H 4800 850 50  0001 C CNN
	1    4800 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 4000 3850 3950
Wire Wire Line
	3950 4000 3950 3950
Wire Wire Line
	2700 2250 2750 2250
Wire Wire Line
	2750 2050 2700 2050
Text GLabel 2700 2050 0    50   Input ~ 0
CLK0
Text GLabel 2700 2250 0    50   Input ~ 0
CLK1
Wire Wire Line
	2750 2450 2700 2450
Wire Wire Line
	2750 2550 2700 2550
Text HLabel 2700 2450 0    50   BiDi ~ 0
SDA
Text HLabel 2700 2550 0    50   Output ~ 0
SCL
Wire Wire Line
	5150 3650 5200 3650
Text GLabel 5200 3650 2    50   Input ~ 0
MCLR
Wire Wire Line
	2750 3050 2700 3050
Wire Wire Line
	2750 3150 2700 3150
$Comp
L PBLE~Library:ATS20A X_PIC1
U 1 1 60AE0380
P 1250 950
F 0 "X_PIC1" H 1250 1215 50  0000 C CNN
F 1 "ATS20A" H 1250 1124 50  0000 C CNN
F 2 "Biblioteca PCB:ATS20A" H 1250 800 50  0001 C CNN
F 3 "" H 1250 800 50  0001 C CNN
	1    1250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  950  900  950 
Wire Wire Line
	900  950  900  900 
Connection ~ 900  950 
Wire Wire Line
	1550 950  1600 950 
Wire Wire Line
	1600 950  1600 900 
Wire Wire Line
	1600 950  1600 1000
Connection ~ 1600 950 
$Comp
L Device:C C_X2
U 1 1 60AE2524
P 1600 1150
F 0 "C_X2" H 1715 1196 50  0000 L CNN
F 1 "39pF" H 1715 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1638 1000 50  0001 C CNN
F 3 "~" H 1600 1150 50  0001 C CNN
	1    1600 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_X2'1
U 1 1 60AE2A76
P 1600 1500
F 0 "C_X2'1" H 1715 1546 50  0000 L CNN
F 1 "39pF" H 1715 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1638 1350 50  0001 C CNN
F 3 "~" H 1600 1500 50  0001 C CNN
	1    1600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1350 1600 1300
Wire Wire Line
	1600 1650 1600 1700
Wire Wire Line
	1600 1700 1250 1700
$Comp
L Device:C C_X1
U 1 1 60AE3DBC
P 900 1300
F 0 "C_X1" H 1015 1346 50  0000 L CNN
F 1 "39pF" H 1015 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 938 1150 50  0001 C CNN
F 3 "~" H 900 1300 50  0001 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  950  900  1150
Wire Wire Line
	900  1450 900  1700
Wire Wire Line
	1250 1700 1250 1750
Connection ~ 1250 1700
Wire Wire Line
	1250 1700 900  1700
$Comp
L power:GNDREF #PWR0156
U 1 1 60AE5DED
P 1250 1750
F 0 "#PWR0156" H 1250 1500 50  0001 C CNN
F 1 "GNDREF" H 1255 1577 50  0000 C CNN
F 2 "" H 1250 1750 50  0001 C CNN
F 3 "" H 1250 1750 50  0001 C CNN
	1    1250 1750
	1    0    0    -1  
$EndComp
Text GLabel 900  900  1    50   Input ~ 0
CLK0
Text GLabel 1600 900  1    50   Input ~ 0
CLK1
$Comp
L power:+5V #PWR0157
U 1 1 60AE6C44
P 1100 2600
F 0 "#PWR0157" H 1100 2450 50  0001 C CNN
F 1 "+5V" H 1115 2773 50  0000 C CNN
F 2 "" H 1100 2600 50  0001 C CNN
F 3 "" H 1100 2600 50  0001 C CNN
	1    1100 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R RI2C1
U 1 1 60AE7182
P 950 2850
F 0 "RI2C1" H 1020 2896 50  0000 L CNN
F 1 "4k7" H 1020 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 880 2850 50  0001 C CNN
F 3 "~" H 950 2850 50  0001 C CNN
	1    950  2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R RI2C'1
U 1 1 60AE7B4A
P 1250 2850
F 0 "RI2C'1" H 1320 2896 50  0000 L CNN
F 1 "4k7" H 1320 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 2850 50  0001 C CNN
F 3 "~" H 1250 2850 50  0001 C CNN
	1    1250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2700 950  2650
Wire Wire Line
	1250 2650 1250 2700
Wire Wire Line
	950  2650 1100 2650
Wire Wire Line
	1100 2650 1100 2600
Connection ~ 1100 2650
Wire Wire Line
	1100 2650 1250 2650
Wire Wire Line
	950  3000 950  3050
Wire Wire Line
	1250 3000 1250 3050
$Comp
L PBLE~Library:1825910-6 SW_RESET1
U 1 1 60AEE6C1
P 1400 3700
F 0 "SW_RESET1" H 1400 4065 50  0000 C CNN
F 1 "1825910-6" H 1400 3974 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 1400 3700 50  0001 L BNN
F 3 "" H 1400 3700 50  0001 L BNN
F 4 "Single Pole - Single Throw" H 1400 3700 50  0001 L BNN "Configuration_Pole-Throw"
F 5 "Compliant" H 1400 3700 50  0001 L BNN "EU_RoHS_Compliance"
F 6 "1825910-6" H 1400 3700 50  0001 L BNN "Comment"
F 7 "50 mA" H 1400 3700 50  0001 L BNN "Contact_Current_Rating"
	1    1400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3600 950  3600
$Comp
L power:GNDREF #PWR0158
U 1 1 60AF1970
P 950 3600
F 0 "#PWR0158" H 950 3350 50  0001 C CNN
F 1 "GNDREF" V 955 3472 50  0000 R CNN
F 2 "" H 950 3600 50  0001 C CNN
F 3 "" H 950 3600 50  0001 C CNN
	1    950  3600
	0    1    1    0   
$EndComp
NoConn ~ 1000 3800
NoConn ~ 1800 3800
Wire Wire Line
	1900 3600 1900 3550
Connection ~ 1900 3600
Wire Wire Line
	1900 3600 1950 3600
$Comp
L Device:R R_RST1
U 1 1 60AF5893
P 1900 3400
F 0 "R_RST1" H 1970 3446 50  0000 L CNN
F 1 "4k7" H 1970 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1830 3400 50  0001 C CNN
F 3 "~" H 1900 3400 50  0001 C CNN
	1    1900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3250 1900 3200
$Comp
L power:+5V #PWR0159
U 1 1 60AF6A55
P 1900 3200
F 0 "#PWR0159" H 1900 3050 50  0001 C CNN
F 1 "+5V" H 1915 3373 50  0000 C CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
Text GLabel 1950 3600 2    50   Output ~ 0
MCLR
Wire Wire Line
	1725 4850 1675 4850
Wire Wire Line
	1725 4950 1675 4950
Wire Wire Line
	1725 5050 1675 5050
Wire Wire Line
	1725 5150 1675 5150
Wire Wire Line
	1725 5250 1675 5250
Text GLabel 1675 4850 0    50   Input ~ 0
MCLR
$Comp
L power:+5V #PWR0160
U 1 1 60B8ED98
P 1675 4950
F 0 "#PWR0160" H 1675 4800 50  0001 C CNN
F 1 "+5V" V 1690 5078 50  0000 L CNN
F 2 "" H 1675 4950 50  0001 C CNN
F 3 "" H 1675 4950 50  0001 C CNN
	1    1675 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0161
U 1 1 60B8FA09
P 1675 5050
F 0 "#PWR0161" H 1675 4800 50  0001 C CNN
F 1 "GNDREF" V 1680 4922 50  0000 R CNN
F 2 "" H 1675 5050 50  0001 C CNN
F 3 "" H 1675 5050 50  0001 C CNN
	1    1675 5050
	0    1    1    0   
$EndComp
Text GLabel 1675 5150 0    50   Output ~ 0
PGD
Text GLabel 1675 5250 0    50   Input ~ 0
PGC
$Comp
L power:+5V #PWR0162
U 1 1 60B0932C
P 4600 4475
F 0 "#PWR0162" H 4600 4325 50  0001 C CNN
F 1 "+5V" H 4615 4648 50  0000 C CNN
F 2 "" H 4600 4475 50  0001 C CNN
F 3 "" H 4600 4475 50  0001 C CNN
	1    4600 4475
	1    0    0    -1  
$EndComp
Text HLabel 5625 4700 2    50   BiDi ~ 0
DATA+
Text HLabel 5625 4900 2    50   BiDi ~ 0
DATA-
NoConn ~ 1725 5350
Wire Wire Line
	6900 4975 6900 5200
Wire Wire Line
	6900 5500 6900 5550
$Comp
L power:GNDREF #PWR0163
U 1 1 60B01E77
P 6900 5550
F 0 "#PWR0163" H 6900 5300 50  0001 C CNN
F 1 "GNDREF" H 6905 5377 50  0000 C CNN
F 2 "" H 6900 5550 50  0001 C CNN
F 3 "" H 6900 5550 50  0001 C CNN
	1    6900 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4975 6875 4975
Text GLabel 6875 4975 0    50   Input ~ 0
USB.O1
Wire Wire Line
	5600 5700 5625 5700
Wire Wire Line
	5600 5900 5625 5900
Text GLabel 5625 5700 2    50   Input ~ 0
USB.O1
Text GLabel 5625 5900 2    50   Input ~ 0
USB.O2
$Comp
L Device:C C_USB_O1
U 1 1 60AF94EF
P 6900 5350
F 0 "C_USB_O1" H 7015 5396 50  0000 L CNN
F 1 "22pF" H 7015 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6938 5200 50  0001 C CNN
F 3 "~" H 6900 5350 50  0001 C CNN
	1    6900 5350
	1    0    0    -1  
$EndComp
Text GLabel 7525 4975 2    50   Input ~ 0
USB.O2
Wire Wire Line
	7500 5400 7500 5350
$Comp
L Device:C C_USB_O2'1
U 1 1 60AFAC09
P 7500 5550
F 0 "C_USB_O2'1" H 7615 5596 50  0000 L CNN
F 1 "39pF" H 7615 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7538 5400 50  0001 C CNN
F 3 "~" H 7500 5550 50  0001 C CNN
	1    7500 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_USB_O2
U 1 1 60AFA1EF
P 7500 5200
F 0 "C_USB_O2" H 7615 5246 50  0000 L CNN
F 1 "39pF" H 7615 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7538 5050 50  0001 C CNN
F 3 "~" H 7500 5200 50  0001 C CNN
	1    7500 5200
	1    0    0    -1  
$EndComp
$Comp
L PBLE~Library:ATS12A X_USB1
U 1 1 60AF1E7B
P 7200 4975
F 0 "X_USB1" H 7200 5220 50  0000 C CNN
F 1 "ATS12A" H 7200 5129 50  0000 C CNN
F 2 "Biblioteca PCB:ATS12A" H 7110 5080 50  0001 C CNN
F 3 "" H 7110 5080 50  0001 C CNN
	1    7200 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7390 4975 7500 4975
Wire Wire Line
	7500 4975 7500 5050
Connection ~ 7500 4975
Wire Wire Line
	7500 4975 7525 4975
Wire Wire Line
	6900 4975 7010 4975
Connection ~ 6900 4975
$Comp
L Interface_USB:MCP2200-I-SO U_USB_SERIAL_CONVERSOR1
U 1 1 60B03651
P 4700 5300
F 0 "U_USB_SERIAL_CONVERSOR1" H 4700 4411 50  0000 C CNN
F 1 "MCP2200-I-SO" H 4700 4320 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4700 4150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/200022228D.pdf" H 4700 4300 50  0001 C CNN
	1    4700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4475 4600 4500
Wire Wire Line
	5600 4700 5625 4700
Wire Wire Line
	5625 4900 5600 4900
Wire Wire Line
	3800 4700 3750 4700
Wire Wire Line
	3800 4800 3750 4800
NoConn ~ 3800 5000
NoConn ~ 3800 5100
NoConn ~ 3800 5200
NoConn ~ 3800 5300
NoConn ~ 3800 5400
NoConn ~ 3800 5500
NoConn ~ 3800 5600
NoConn ~ 3800 5700
NoConn ~ 3800 5800
NoConn ~ 3800 5900
Text GLabel 3750 4800 0    50   Input ~ 0
USB.RX
Wire Wire Line
	5150 2050 5200 2050
Wire Wire Line
	5150 1950 5200 1950
Text GLabel 5200 1950 2    50   Output ~ 0
USB.RX
Text GLabel 5200 2050 2    50   Input ~ 0
USB.TX
Wire Wire Line
	2750 1750 2700 1750
Wire Wire Line
	2750 1850 2700 1850
Wire Wire Line
	2750 1950 2700 1950
Wire Wire Line
	2750 2650 2700 2650
Wire Wire Line
	2750 2750 2700 2750
Wire Wire Line
	2750 2850 2700 2850
Wire Wire Line
	2750 2950 2700 2950
Wire Wire Line
	2750 3350 2700 3350
Wire Wire Line
	2750 3450 2700 3450
Wire Wire Line
	2750 3550 2700 3550
Wire Wire Line
	2750 3650 2700 3650
Wire Wire Line
	5150 3550 5200 3550
Wire Wire Line
	5150 3450 5200 3450
Wire Wire Line
	5150 3350 5200 3350
Wire Wire Line
	5150 3150 5200 3150
Wire Wire Line
	5150 3050 5200 3050
Wire Wire Line
	5150 2450 5200 2450
Wire Wire Line
	5150 2550 5200 2550
Wire Wire Line
	5150 2650 5200 2650
Wire Wire Line
	5150 2750 5200 2750
Wire Wire Line
	5150 1750 5200 1750
Wire Wire Line
	5150 1850 5200 1850
Wire Wire Line
	5150 2250 5200 2250
Wire Wire Line
	5150 2950 5200 2950
Wire Wire Line
	5150 2850 5200 2850
Wire Wire Line
	5150 1650 5200 1650
Wire Wire Line
	5150 1550 5200 1550
Wire Wire Line
	5150 1450 5200 1450
Text HLabel 2700 1550 0    50   Input ~ 0
AN1
Text HLabel 2700 1450 0    50   Input ~ 0
AN2
Text HLabel 2700 1750 0    50   BiDi ~ 0
RA3
Text HLabel 2700 1850 0    50   BiDi ~ 0
RA4
Text HLabel 2700 1950 0    50   BiDi ~ 0
RA5
Text HLabel 2700 2650 0    50   Input ~ 0
MFP
Text HLabel 2700 2750 0    50   Output ~ 0
PWM
Text HLabel 2700 3550 0    50   BiDi ~ 0
ICPORTS
Text HLabel 2700 3650 0    50   BiDi ~ 0
ICRST
Text HLabel 5200 3550 2    50   BiDi ~ 0
RE2
Text HLabel 5200 3450 2    50   BiDi ~ 0
RE1
Text HLabel 5200 3350 2    50   BiDi ~ 0
RE0
Text HLabel 5200 2650 2    50   Output ~ 0
LCD.D5
Text HLabel 5200 2550 2    50   Output ~ 0
LCD.D6
Text HLabel 5200 2450 2    50   Output ~ 0
LCD.D7
Text HLabel 5200 3050 2    50   Output ~ 0
LED5
Text HLabel 5200 3150 2    50   BiDi ~ 0
RD7
Text HLabel 5200 2250 2    50   BiDi ~ 0
VUSB'
Text HLabel 5200 1450 2    50   Input ~ 0
B1
Text HLabel 5200 1550 2    50   Input ~ 0
B2
Text HLabel 5200 1650 2    50   Input ~ 0
B3
Text HLabel 5200 2850 2    50   Input ~ 0
B4
Text HLabel 5200 2950 2    50   Input ~ 0
B5
Text HLabel 2700 1650 0    50   Input ~ 0
POT
$Comp
L MCU_Microchip_PIC18:PIC18F4550-IPT U_PIC18F4450
U 1 1 60AD9AF6
P 3950 2550
F 0 "U_PIC18F4450" H 3950 4131 50  0000 C CNN
F 1 "PIC18F4550-IPT" H 3950 4040 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 3950 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/39760d.pdf" H 3950 2300 50  0001 C CNN
	1    3950 2550
	1    0    0    -1  
$EndComp
Text HLabel 5200 2750 2    50   Output ~ 0
LCD.D4
Text HLabel 5200 1750 2    50   Output ~ 0
LCD.E
Text HLabel 5200 1850 2    50   Output ~ 0
LCD.RS
Text GLabel 2700 3350 0    50   Output ~ 0
PGC
Text GLabel 2700 3450 0    50   Input ~ 0
PGD
Text HLabel 2700 2850 0    50   Output ~ 0
LED1
Text HLabel 2700 2950 0    50   Output ~ 0
LED2
Text HLabel 2700 3050 0    50   Output ~ 0
LED3
Text HLabel 2700 3150 0    50   Output ~ 0
LED4
Text HLabel 950  3050 3    50   Output ~ 0
SDA
Text HLabel 1250 3050 3    50   Output ~ 0
SCL
Text GLabel 3750 4900 0    50   Output ~ 0
USB.TX
Wire Wire Line
	3750 4900 3800 4900
$Comp
L power:GNDREF #PWR0164
U 1 1 60BC4853
P 7500 5750
F 0 "#PWR0164" H 7500 5500 50  0001 C CNN
F 1 "GNDREF" H 7505 5577 50  0000 C CNN
F 2 "" H 7500 5750 50  0001 C CNN
F 3 "" H 7500 5750 50  0001 C CNN
	1    7500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5750 7500 5700
Wire Wire Line
	4700 6100 4700 6350
$Comp
L power:GNDREF #PWR0165
U 1 1 60BD1F93
P 4700 6350
F 0 "#PWR0165" H 4700 6100 50  0001 C CNN
F 1 "GNDREF" H 4705 6177 50  0000 C CNN
F 2 "" H 4700 6350 50  0001 C CNN
F 3 "" H 4700 6350 50  0001 C CNN
	1    4700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4000 3900 4000
Wire Wire Line
	3900 4000 3900 4050
Connection ~ 3900 4000
Wire Wire Line
	3900 4000 3950 4000
$Comp
L power:GNDREF #PWR0155
U 1 1 60BDE1A7
P 3900 4050
F 0 "#PWR0155" H 3900 3800 50  0001 C CNN
F 1 "GNDREF" H 3905 3877 50  0000 C CNN
F 2 "" H 3900 4050 50  0001 C CNN
F 3 "" H 3900 4050 50  0001 C CNN
	1    3900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4150 4800 4500
$Comp
L power:GNDREF #PWR0166
U 1 1 60D3B045
P 5500 4150
F 0 "#PWR0166" H 5500 3900 50  0001 C CNN
F 1 "GNDREF" H 5505 3977 50  0000 C CNN
F 2 "" H 5500 4150 50  0001 C CNN
F 3 "" H 5500 4150 50  0001 C CNN
	1    5500 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5275 4150 5500 4150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60D63A30
P 4800 4150
F 0 "#FLG0102" H 4800 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 4323 50  0000 C CNN
F 2 "" H 4800 4150 50  0001 C CNN
F 3 "~" H 4800 4150 50  0001 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
Connection ~ 4800 4150
$Comp
L Device:CP C8
U 1 1 60D37A67
P 5125 4150
F 0 "C8" V 5380 4150 50  0000 C CNN
F 1 "10u" V 5289 4150 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P_Pad1.30x1.05mm_HandSolder" H 5163 4000 50  0001 C CNN
F 3 "~" H 5125 4150 50  0001 C CNN
	1    5125 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 60D4F1CD
P 4600 850
AR Path="/60AF819E/60D4F1CD" Ref="C?"  Part="1" 
AR Path="/60AD1C83/60D4F1CD" Ref="C7"  Part="1" 
F 0 "C7" H 4718 896 50  0000 L CNN
F 1 "10u" H 4718 805 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P_Pad1.30x1.05mm_HandSolder" H 4638 700 50  0001 C CNN
F 3 "~" H 4600 850 50  0001 C CNN
	1    4600 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4150 4975 4150
Text HLabel 3750 4700 0    50   Input ~ 0
MCP_RST
Wire Wire Line
	2700 1650 2750 1650
Wire Wire Line
	2750 1550 2700 1550
Wire Wire Line
	2700 1450 2750 1450
Wire Wire Line
	1800 3600 1900 3600
$Comp
L Device:C C15
U 1 1 60EE453B
P 1900 3900
F 0 "C15" H 2015 3946 50  0000 L CNN
F 1 "10u" H 2015 3855 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P_Pad1.30x1.05mm_HandSolder" H 1938 3750 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3750 1900 3600
Wire Wire Line
	1900 4050 1900 4100
$Comp
L power:GNDREF #PWR07
U 1 1 60EEDC94
P 1900 4100
F 0 "#PWR07" H 1900 3850 50  0001 C CNN
F 1 "GNDREF" H 1905 3927 50  0000 C CNN
F 2 "" H 1900 4100 50  0001 C CNN
F 3 "" H 1900 4100 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 60E8E624
P 4100 4400
F 0 "C6" V 3845 4400 50  0000 C CNN
F 1 "10u" V 3936 4400 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P_Pad1.30x1.05mm_HandSolder" H 4138 4250 50  0001 C CNN
F 3 "~" H 4100 4400 50  0001 C CNN
	1    4100 4400
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 60E8F67D
P 3900 4400
F 0 "#PWR08" H 3900 4150 50  0001 C CNN
F 1 "GNDREF" V 3905 4272 50  0000 R CNN
F 2 "" H 3900 4400 50  0001 C CNN
F 3 "" H 3900 4400 50  0001 C CNN
	1    3900 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4400 3950 4400
$Comp
L power:+5V #PWR09
U 1 1 60E988B1
P 4300 4400
F 0 "#PWR09" H 4300 4250 50  0001 C CNN
F 1 "+5V" V 4315 4528 50  0000 L CNN
F 2 "" H 4300 4400 50  0001 C CNN
F 3 "" H 4300 4400 50  0001 C CNN
	1    4300 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4400 4250 4400
$Comp
L Connector_Generic:Conn_01x06 J_ICSP1
U 1 1 61121A04
P 1925 5050
F 0 "J_ICSP1" H 2005 5042 50  0000 L CNN
F 1 "Conn_01x06" H 2005 4951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 1925 5050 50  0001 C CNN
F 3 "~" H 1925 5050 50  0001 C CNN
	1    1925 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
