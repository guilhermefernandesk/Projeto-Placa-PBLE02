EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Timer:MCP7940N-xSN U_RTC5
U 1 1 60B558A0
P 2200 1500
F 0 "U_RTC5" H 2200 1011 50  0000 C CNN
F 1 "MCP7940N-xSN" H 2200 920 50  0000 C CNN
F 2 "Biblioteca PCB:MCP7940N" H 2200 1500 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005010F.pdf" H 2200 1500 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1600 1400 1650
$Comp
L Device:R R_RTC_MFP5
U 1 1 60B56ABC
P 1400 1800
F 0 "R_RTC_MFP5" H 1470 1846 50  0000 L CNN
F 1 "10k" H 1470 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1330 1800 50  0001 C CNN
F 3 "~" H 1400 1800 50  0001 C CNN
	1    1400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1950 1400 2000
$Comp
L power:+5V #PWR0101
U 1 1 60B58033
P 1400 2000
F 0 "#PWR0101" H 1400 1850 50  0001 C CNN
F 1 "+5V" H 1415 2173 50  0000 C CNN
F 2 "" H 1400 2000 50  0001 C CNN
F 3 "" H 1400 2000 50  0001 C CNN
	1    1400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1600 1800 1600
Wire Wire Line
	1400 1600 1350 1600
Connection ~ 1400 1600
Text HLabel 1350 1600 0    50   Output ~ 0
MFP
Text HLabel 1750 1400 0    50   BiDi ~ 0
SDA
Text HLabel 1750 1300 0    50   Input ~ 0
SCL
Wire Wire Line
	1750 1300 1800 1300
Wire Wire Line
	1800 1400 1750 1400
Wire Wire Line
	2600 1400 2650 1400
Wire Wire Line
	2600 1600 2650 1600
Text GLabel 2650 1400 2    50   BiDi ~ 0
X1
Text GLabel 2650 1600 2    50   BiDi ~ 0
X2
Wire Wire Line
	2200 1100 2200 1050
$Comp
L power:+5V #PWR0103
U 1 1 60B5DBFA
P 2200 1050
F 0 "#PWR0103" H 2200 900 50  0001 C CNN
F 1 "+5V" H 2215 1223 50  0000 C CNN
F 2 "" H 2200 1050 50  0001 C CNN
F 3 "" H 2200 1050 50  0001 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60B5E3CE
P 1700 900
F 0 "#PWR0104" H 1700 750 50  0001 C CNN
F 1 "+5V" V 1715 1028 50  0000 L CNN
F 2 "" H 1700 900 50  0001 C CNN
F 3 "" H 1700 900 50  0001 C CNN
	1    1700 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 900  1700 900 
Wire Wire Line
	1350 900  1300 900 
$Comp
L power:GNDREF #PWR0105
U 1 1 60B5FF5B
P 1300 900
F 0 "#PWR0105" H 1300 650 50  0001 C CNN
F 1 "GNDREF" V 1305 772 50  0000 R CNN
F 2 "" H 1300 900 50  0001 C CNN
F 3 "" H 1300 900 50  0001 C CNN
	1    1300 900 
	0    1    1    0   
$EndComp
$Comp
L PBLE~Library:AB38T-32.768KHZ X_RTC5
U 1 1 60B62B6A
P 3400 1350
F 0 "X_RTC5" H 3400 1592 50  0000 C CNN
F 1 "AB38T-32.768KHZ" H 3400 1501 50  0000 C CNN
F 2 "Biblioteca PCB:AB38T" H 3400 1350 50  0001 L BNN
F 3 "" H 3400 1350 50  0001 L BNN
F 4 "12.29.14" H 3400 1350 50  0001 L BNN "PARTREV"
F 5 "Abracon Corparation" H 3400 1350 50  0001 L BNN "MANUFACTURER"
F 6 "IPC-7251" H 3400 1350 50  0001 L BNN "STANDARD"
	1    3400 1350
	1    0    0    -1  
$EndComp
Text GLabel 3050 1350 0    50   BiDi ~ 0
X1
Wire Wire Line
	3100 1350 3100 1400
Connection ~ 3100 1350
Wire Wire Line
	3100 1350 3050 1350
Wire Wire Line
	3700 1350 3700 1400
Connection ~ 3700 1350
Wire Wire Line
	3700 1350 3750 1350
$Comp
L Device:C C_RTC_X1
U 1 1 60B65193
P 3100 1550
F 0 "C_RTC_X1" H 3215 1596 50  0000 L CNN
F 1 "22pF" H 3215 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3138 1400 50  0001 C CNN
F 3 "~" H 3100 1550 50  0001 C CNN
	1    3100 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_RTC_X2
U 1 1 60B65BE4
P 3700 1550
F 0 "C_RTC_X2" H 3815 1596 50  0000 L CNN
F 1 "22pF" H 3815 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3738 1400 50  0001 C CNN
F 3 "~" H 3700 1550 50  0001 C CNN
	1    3700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1700 3100 1750
Wire Wire Line
	3700 1700 3700 1750
$Comp
L power:GNDREF #PWR0107
U 1 1 60B66C4A
P 3100 1750
F 0 "#PWR0107" H 3100 1500 50  0001 C CNN
F 1 "GNDREF" H 3105 1577 50  0000 C CNN
F 2 "" H 3100 1750 50  0001 C CNN
F 3 "" H 3100 1750 50  0001 C CNN
	1    3100 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0108
U 1 1 60B67ADC
P 3700 1750
F 0 "#PWR0108" H 3700 1500 50  0001 C CNN
F 1 "GNDREF" H 3705 1577 50  0000 C CNN
F 2 "" H 3700 1750 50  0001 C CNN
F 3 "" H 3700 1750 50  0001 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
Text GLabel 3750 1350 2    50   BiDi ~ 0
X2
Wire Wire Line
	3100 1350 3200 1350
Wire Wire Line
	3600 1350 3700 1350
Wire Wire Line
	1575 2625 1525 2625
Wire Wire Line
	1575 2725 1525 2725
Wire Wire Line
	1575 2875 1525 2875
Wire Wire Line
	1575 2975 1525 2975
Text GLabel 1525 2625 0    50   Output ~ 0
AN1
Text GLabel 1525 2725 0    50   Output ~ 0
AN1'
Text GLabel 1525 2875 0    50   Output ~ 0
AN2
Text GLabel 1525 2975 0    50   Output ~ 0
AN2'
Wire Wire Line
	2300 5150 2350 5150
Text HLabel 2350 5150 2    50   Output ~ 0
A_OUT
$Comp
L Device:R R9
U 1 1 60B787F1
P 2150 5150
F 0 "R9" V 1943 5150 50  0000 C CNN
F 1 "2k4" V 2034 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 5150 50  0001 C CNN
F 3 "~" H 2150 5150 50  0001 C CNN
	1    2150 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 60B792F9
P 1750 5150
F 0 "R5" V 1543 5150 50  0000 C CNN
F 1 "10k" V 1634 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 5150 50  0001 C CNN
F 3 "~" H 1750 5150 50  0001 C CNN
	1    1750 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 5150 1950 5150
Wire Wire Line
	1950 5150 1950 5200
Connection ~ 1950 5150
Wire Wire Line
	1950 5150 2000 5150
Wire Wire Line
	1600 5150 1550 5150
Text GLabel 1550 5150 0    50   Input ~ 0
AN1
Text GLabel 1950 5200 3    50   Output ~ 0
A_IN-
$Comp
L Device:R R10
U 1 1 60B7EBAD
P 2150 5550
F 0 "R10" V 1943 5550 50  0000 C CNN
F 1 "2k4" V 2034 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 5550 50  0001 C CNN
F 3 "~" H 2150 5550 50  0001 C CNN
	1    2150 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60B7EBB3
P 1750 5550
F 0 "R6" V 1543 5550 50  0000 C CNN
F 1 "10k" V 1634 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 5550 50  0001 C CNN
F 3 "~" H 1750 5550 50  0001 C CNN
	1    1750 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 5550 1950 5550
Wire Wire Line
	1950 5550 1950 5600
Connection ~ 1950 5550
Wire Wire Line
	1950 5550 2000 5550
Wire Wire Line
	1600 5550 1550 5550
Text GLabel 1550 5550 0    50   Input ~ 0
AN1'
Text GLabel 1950 5600 3    50   Output ~ 0
A_IN+
Wire Wire Line
	2300 6150 2350 6150
Text HLabel 2350 6150 2    50   Output ~ 0
B_OUT
$Comp
L Device:R R11
U 1 1 60B85069
P 2150 6150
F 0 "R11" V 1943 6150 50  0000 C CNN
F 1 "2k4" V 2034 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 6150 50  0001 C CNN
F 3 "~" H 2150 6150 50  0001 C CNN
	1    2150 6150
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 60B8506F
P 1750 6150
F 0 "R7" V 1543 6150 50  0000 C CNN
F 1 "10k" V 1634 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 6150 50  0001 C CNN
F 3 "~" H 1750 6150 50  0001 C CNN
	1    1750 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 6150 1950 6150
Wire Wire Line
	1950 6150 1950 6200
Connection ~ 1950 6150
Wire Wire Line
	1950 6150 2000 6150
Wire Wire Line
	1600 6150 1550 6150
Text GLabel 1550 6150 0    50   Input ~ 0
AN2
Text GLabel 1950 6200 3    50   Output ~ 0
B_IN-
$Comp
L Device:R R12
U 1 1 60B8507C
P 2150 6550
F 0 "R12" V 1943 6550 50  0000 C CNN
F 1 "2k4" V 2034 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 6550 50  0001 C CNN
F 3 "~" H 2150 6550 50  0001 C CNN
	1    2150 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60B85082
P 1750 6550
F 0 "R8" V 1543 6550 50  0000 C CNN
F 1 "10k" V 1634 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 6550 50  0001 C CNN
F 3 "~" H 1750 6550 50  0001 C CNN
	1    1750 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 6550 1950 6550
Wire Wire Line
	1950 6550 1950 6600
Connection ~ 1950 6550
Wire Wire Line
	1950 6550 2000 6550
Wire Wire Line
	1600 6550 1550 6550
Text GLabel 1550 6550 0    50   Input ~ 0
AN2'
Text GLabel 1950 6600 3    50   Output ~ 0
B_IN+
$Comp
L power:GNDREF #PWR0112
U 1 1 60B85090
P 2450 6550
F 0 "#PWR0112" H 2450 6300 50  0001 C CNN
F 1 "GNDREF" V 2455 6422 50  0000 R CNN
F 2 "" H 2450 6550 50  0001 C CNN
F 3 "" H 2450 6550 50  0001 C CNN
	1    2450 6550
	0    -1   -1   0   
$EndComp
$Comp
L PBLE~Library:LM324DG U_AMP5
U 1 1 60ADF5D5
P 4250 4450
F 0 "U_AMP5" H 4250 5120 50  0000 C CNN
F 1 "LM324DG" H 4250 5029 50  0000 C CNN
F 2 "Biblioteca PCB:LM324DG" H 4250 4450 50  0001 L BNN
F 3 "" H 4250 4450 50  0001 L BNN
	1    4250 4450
	1    0    0    -1  
$EndComp
Text GLabel 3550 4100 0    50   Input ~ 0
A_IN-
Text GLabel 3550 4200 0    50   Input ~ 0
A_IN+
Text GLabel 3550 4300 0    50   Input ~ 0
B_IN-
Text GLabel 3550 4400 0    50   Input ~ 0
B_IN+
$Comp
L power:+5V #PWR0113
U 1 1 60AE50BA
P 4950 4050
F 0 "#PWR0113" H 4950 3900 50  0001 C CNN
F 1 "+5V" V 4965 4178 50  0000 L CNN
F 2 "" H 4950 4050 50  0001 C CNN
F 3 "" H 4950 4050 50  0001 C CNN
	1    4950 4050
	0    1    1    0   
$EndComp
Text HLabel 4950 4250 2    50   Output ~ 0
A_OUT
Text HLabel 4950 4350 2    50   Output ~ 0
B_OUT
$Comp
L Device:R R_PWM1
U 1 1 60AE6F0E
P 3950 6650
F 0 "R_PWM1" V 3743 6650 50  0000 C CNN
F 1 "20k" V 3834 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3880 6650 50  0001 C CNN
F 3 "~" H 3950 6650 50  0001 C CNN
	1    3950 6650
	0    1    1    0   
$EndComp
Text HLabel 3800 6650 0    50   Input ~ 0
PWM
Text GLabel 3550 4600 0    50   Input ~ 0
C_IN+
NoConn ~ 4950 4550
NoConn ~ 3550 4700
NoConn ~ 3550 4800
Text GLabel 4950 4450 2    50   Output ~ 0
PWM_OUT
Text GLabel 3550 4500 0    50   Input ~ 0
PWM_OUT
$Comp
L Device:C C_PWM1
U 1 1 60C197BC
P 4350 6300
F 0 "C_PWM1" H 4235 6254 50  0000 R CNN
F 1 "20p" H 4235 6345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4388 6150 50  0001 C CNN
F 3 "~" H 4350 6300 50  0001 C CNN
	1    4350 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 6650 4550 6650
Wire Wire Line
	4100 6650 4350 6650
Connection ~ 4350 6650
$Comp
L power:GNDREF #PWR0116
U 1 1 60B17C23
P 4550 3600
F 0 "#PWR0116" H 4550 3350 50  0001 C CNN
F 1 "GNDREF" V 4555 3472 50  0000 R CNN
F 2 "" H 4550 3600 50  0001 C CNN
F 3 "" H 4550 3600 50  0001 C CNN
	1    4550 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 60B184D0
P 3950 3600
F 0 "#PWR0117" H 3950 3450 50  0001 C CNN
F 1 "+5V" V 3965 3728 50  0000 L CNN
F 2 "" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0001 C CNN
	1    3950 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 3600 4050 3600
Wire Wire Line
	4350 3600 4550 3600
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 60B262AE
P 4450 5300
F 0 "J2" H 4530 5292 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 4530 5201 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 4450 5300 50  0001 C CNN
F 3 "~" H 4450 5300 50  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5300 4200 5300
Wire Wire Line
	4250 5400 4200 5400
Text GLabel 4200 5300 0    50   Input ~ 0
PWM_OUT
$Comp
L power:GNDREF #PWR0171
U 1 1 60B29CEF
P 4200 5450
F 0 "#PWR0171" H 4200 5200 50  0001 C CNN
F 1 "GNDREF" H 4205 5277 50  0000 C CNN
F 2 "" H 4200 5450 50  0001 C CNN
F 3 "" H 4200 5450 50  0001 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5450 4200 5400
$Comp
L Connector:Conn_01x12_Male J_EXP6
U 1 1 60B7A2E0
P 5750 4300
F 0 "J_EXP6" H 5858 4981 50  0000 C CNN
F 1 "Conn_01x12_Male" H 5858 4890 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x12_P1.00mm_Vertical" H 5750 4300 50  0001 C CNN
F 3 "~" H 5750 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3800 6000 3800
Wire Wire Line
	5950 3900 6000 3900
$Comp
L power:GNDREF #PWR0172
U 1 1 60B7E591
P 6000 3800
F 0 "#PWR0172" H 6000 3550 50  0001 C CNN
F 1 "GNDREF" V 6005 3672 50  0000 R CNN
F 2 "" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0001 C CNN
	1    6000 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0173
U 1 1 60B7E597
P 6000 3900
F 0 "#PWR0173" H 6000 3750 50  0001 C CNN
F 1 "+5V" V 6015 4028 50  0000 L CNN
F 2 "" H 6000 3900 50  0001 C CNN
F 3 "" H 6000 3900 50  0001 C CNN
	1    6000 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 4000 6000 4000
Wire Wire Line
	5950 4100 6000 4100
Wire Wire Line
	5950 4200 6000 4200
Wire Wire Line
	5950 4300 6000 4300
Wire Wire Line
	5950 4400 6000 4400
Wire Wire Line
	5950 4500 6000 4500
Wire Wire Line
	5950 4600 6000 4600
Wire Wire Line
	5950 4700 6000 4700
Wire Wire Line
	5950 4800 6000 4800
Wire Wire Line
	5950 4900 6000 4900
Text HLabel 6000 4000 2    50   BiDi ~ 0
RA3
Text HLabel 6000 4100 2    50   BiDi ~ 0
RA4
Text HLabel 6000 4200 2    50   BiDi ~ 0
RA5
Text HLabel 6000 4300 2    50   BiDi ~ 0
ICPORTS
Text HLabel 6000 4400 2    50   BiDi ~ 0
ICRST
Text HLabel 6000 4500 2    50   BiDi ~ 0
RE0
Text HLabel 6000 4600 2    50   BiDi ~ 0
RE1
Text HLabel 6000 4700 2    50   BiDi ~ 0
RE2
Text HLabel 6000 4800 2    50   BiDi ~ 0
RD7
Text HLabel 6000 4900 2    50   BiDi ~ 0
VUSB'
Wire Wire Line
	2200 1900 2200 2150
$Comp
L power:GNDREF #PWR0106
U 1 1 60BB2DE3
P 2200 2150
F 0 "#PWR0106" H 2200 1900 50  0001 C CNN
F 1 "GNDREF" H 2205 1977 50  0000 C CNN
F 2 "" H 2200 2150 50  0001 C CNN
F 3 "" H 2200 2150 50  0001 C CNN
	1    2200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1100 2300 1050
Wire Wire Line
	2300 1050 2350 1050
$Comp
L power:GNDREF #PWR0102
U 1 1 60BD5E60
P 2350 1050
F 0 "#PWR0102" H 2350 800 50  0001 C CNN
F 1 "GNDREF" V 2355 922 50  0000 R CNN
F 2 "" H 2350 1050 50  0001 C CNN
F 3 "" H 2350 1050 50  0001 C CNN
	1    2350 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 5550 2350 5550
$Comp
L power:GNDREF #PWR0111
U 1 1 60BE25E7
P 2350 5550
F 0 "#PWR0111" H 2350 5300 50  0001 C CNN
F 1 "GNDREF" V 2355 5422 50  0000 R CNN
F 2 "" H 2350 5550 50  0001 C CNN
F 3 "" H 2350 5550 50  0001 C CNN
	1    2350 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 4750 5000 4750
$Comp
L power:GNDREF #PWR0114
U 1 1 60BEE1CF
P 5000 4750
F 0 "#PWR0114" H 5000 4500 50  0001 C CNN
F 1 "GNDREF" V 5005 4622 50  0000 R CNN
F 2 "" H 5000 4750 50  0001 C CNN
F 3 "" H 5000 4750 50  0001 C CNN
	1    5000 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 6550 2450 6550
$Comp
L Device:R R_PWM2
U 1 1 60AFAEB1
P 4700 6650
F 0 "R_PWM2" V 4493 6650 50  0000 C CNN
F 1 "20k" V 4584 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4630 6650 50  0001 C CNN
F 3 "~" H 4700 6650 50  0001 C CNN
	1    4700 6650
	0    1    1    0   
$EndComp
Text GLabel 5150 6650 2    50   Input ~ 0
C_IN+
Wire Wire Line
	4850 6650 5000 6650
Wire Wire Line
	4350 6450 4350 6650
$Comp
L Device:C C_PWM2
U 1 1 60B048F8
P 5000 7000
F 0 "C_PWM2" H 4885 6954 50  0000 R CNN
F 1 "39p" H 4885 7045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5038 6850 50  0001 C CNN
F 3 "~" H 5000 7000 50  0001 C CNN
	1    5000 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 6850 5000 6650
Connection ~ 5000 6650
Wire Wire Line
	5000 6650 5150 6650
$Comp
L power:GNDREF #PWR0115
U 1 1 60B06F18
P 5000 7300
F 0 "#PWR0115" H 5000 7050 50  0001 C CNN
F 1 "GNDREF" H 5005 7127 50  0000 C CNN
F 2 "" H 5000 7300 50  0001 C CNN
F 3 "" H 5000 7300 50  0001 C CNN
	1    5000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7300 5000 7150
Text GLabel 4350 6050 0    50   Input ~ 0
PWM_OUT
Wire Wire Line
	4350 6050 4350 6150
$Comp
L Device:CP C5
U 1 1 60D2DDAD
P 4200 3600
F 0 "C5" V 4455 3600 50  0000 C CNN
F 1 "10u" V 4364 3600 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P_Pad1.30x1.05mm_HandSolder" H 4238 3450 50  0001 C CNN
F 3 "~" H 4200 3600 50  0001 C CNN
	1    4200 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 60D55EBA
P 1500 900
AR Path="/60AF819E/60D55EBA" Ref="C?"  Part="1" 
AR Path="/60B55606/60D55EBA" Ref="C4"  Part="1" 
F 0 "C4" H 1618 946 50  0000 L CNN
F 1 "10u" H 1618 855 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-2012-15_AVX-P_Pad1.30x1.05mm_HandSolder" H 1538 750 50  0001 C CNN
F 3 "~" H 1500 900 50  0001 C CNN
	1    1500 900 
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 60E38EF9
P 1775 2625
F 0 "J5" H 1855 2617 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1855 2526 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 1775 2625 50  0001 C CNN
F 3 "~" H 1775 2625 50  0001 C CNN
	1    1775 2625
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 60E398B8
P 1775 2875
F 0 "J6" H 1855 2867 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1855 2776 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 1775 2875 50  0001 C CNN
F 3 "~" H 1775 2875 50  0001 C CNN
	1    1775 2875
	1    0    0    -1  
$EndComp
$EndSCHEMATC
