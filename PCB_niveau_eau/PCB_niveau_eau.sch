EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L _Julien_librairie:ARDUINO_NANO SH1
U 1 1 5EFB95B4
P 5050 1800
F 0 "SH1" H 5050 2937 60  0000 C CNN
F 1 "ARDUINO_NANO" H 5050 2831 60  0000 C CNN
F 2 "Nicolas:ARDUINO_NANO_2_CONTOUR" H 4125 1200 60  0001 C CNN
F 3 "" H 4125 1200 60  0000 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5EFBB284
P 6025 4625
F 0 "J2" H 6150 5000 50  0000 C CNN
F 1 "Conn_lcd_i2c" H 6150 4900 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 6025 4625 50  0001 C CNN
F 3 "~" H 6025 4625 50  0001 C CNN
	1    6025 4625
	1    0    0    -1  
$EndComp
Text Notes 1850 900  0    79   ~ 16
Alimentation
Wire Notes Line
	650  725  3800 725 
Wire Notes Line
	3800 2975 650  2975
$Comp
L power:GND #PWR0109
U 1 1 5F115755
P 2000 5300
F 0 "#PWR0109" H 2000 5050 50  0001 C CNN
F 1 "GND" H 2005 5127 50  0000 C CNN
F 2 "" H 2000 5300 50  0001 C CNN
F 3 "" H 2000 5300 50  0001 C CNN
	1    2000 5300
	1    0    0    -1  
$EndComp
Text GLabel 1800 4900 0    50   Input ~ 0
A1
Wire Wire Line
	1800 4900 2000 4900
Wire Wire Line
	2000 5000 2000 4900
Connection ~ 2000 4900
Wire Wire Line
	2000 4900 2125 4900
Text GLabel 5700 1575 2    50   Input ~ 0
A1
Text GLabel 5700 1450 2    50   Input ~ 0
A0
Text GLabel 5700 1700 2    50   Input ~ 0
A2
Text GLabel 5700 1825 2    50   Input ~ 0
A3
Text GLabel 5700 1950 2    50   Input ~ 0
A4
Text GLabel 5700 2075 2    50   Input ~ 0
A5
Text GLabel 5700 2200 2    50   Input ~ 0
A6
Text GLabel 5700 2325 2    50   Input ~ 0
A7
Text GLabel 4400 1450 0    50   Input ~ 0
2
Text GLabel 4400 1575 0    50   Input ~ 0
3
Text GLabel 4400 1700 0    50   Input ~ 0
4
Text GLabel 4400 1825 0    50   Input ~ 0
5
Text GLabel 4400 1950 0    50   Input ~ 0
6
Text GLabel 4400 2075 0    50   Input ~ 0
7
Text GLabel 6225 4825 2    50   Input ~ 0
A4
Text GLabel 6225 4725 2    50   Input ~ 0
A5
$Comp
L power:GND #PWR0110
U 1 1 5F11FC24
P 6225 4525
F 0 "#PWR0110" H 6225 4275 50  0001 C CNN
F 1 "GND" H 6230 4352 50  0000 C CNN
F 2 "" H 6225 4525 50  0001 C CNN
F 3 "" H 6225 4525 50  0001 C CNN
	1    6225 4525
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F11FFB6
P 5800 1075
F 0 "#PWR0111" H 5800 825 50  0001 C CNN
F 1 "GND" H 5805 902 50  0000 C CNN
F 2 "" H 5800 1075 50  0001 C CNN
F 3 "" H 5800 1075 50  0001 C CNN
	1    5800 1075
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F120DFC
P 4300 1325
F 0 "#PWR0112" H 4300 1075 50  0001 C CNN
F 1 "GND" H 4305 1152 50  0000 C CNN
F 2 "" H 4300 1325 50  0001 C CNN
F 3 "" H 4300 1325 50  0001 C CNN
	1    4300 1325
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 1075 5800 1075
Wire Wire Line
	4300 1325 4400 1325
$Comp
L power:+5V #PWR0113
U 1 1 5F122917
P 5800 1325
F 0 "#PWR0113" H 5800 1175 50  0001 C CNN
F 1 "+5V" H 5815 1498 50  0000 C CNN
F 2 "" H 5800 1325 50  0001 C CNN
F 3 "" H 5800 1325 50  0001 C CNN
	1    5800 1325
	0    1    1    0   
$EndComp
NoConn ~ 4400 1200
NoConn ~ 5700 1200
NoConn ~ 5700 2450
Wire Wire Line
	5700 1325 5800 1325
$Comp
L power:+5V #PWR0115
U 1 1 5F126694
P 6400 4625
F 0 "#PWR0115" H 6400 4475 50  0001 C CNN
F 1 "+5V" H 6415 4798 50  0000 C CNN
F 2 "" H 6400 4625 50  0001 C CNN
F 3 "" H 6400 4625 50  0001 C CNN
	1    6400 4625
	0    1    1    0   
$EndComp
Wire Wire Line
	6225 4625 6400 4625
$Comp
L Device:R R4
U 1 1 5EFBC5AE
P 2000 5150
F 0 "R4" H 2070 5196 50  0000 L CNN
F 1 "R" H 2070 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1930 5150 50  0001 C CNN
F 3 "~" H 2000 5150 50  0001 C CNN
	1    2000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F12FD2D
P 2000 6225
F 0 "#PWR0116" H 2000 5975 50  0001 C CNN
F 1 "GND" H 2005 6052 50  0000 C CNN
F 2 "" H 2000 6225 50  0001 C CNN
F 3 "" H 2000 6225 50  0001 C CNN
	1    2000 6225
	1    0    0    -1  
$EndComp
Text GLabel 1800 5825 0    50   Input ~ 0
A3
Wire Wire Line
	1800 5825 2000 5825
Wire Wire Line
	2000 5925 2000 5825
Connection ~ 2000 5825
Wire Wire Line
	2000 5825 2125 5825
$Comp
L Device:R R5
U 1 1 5F12FD40
P 2000 6075
F 0 "R5" H 2070 6121 50  0000 L CNN
F 1 "R" H 2070 6030 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1930 6075 50  0001 C CNN
F 3 "~" H 2000 6075 50  0001 C CNN
	1    2000 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5825 1225 5825
Wire Wire Line
	1100 5925 1100 5825
Connection ~ 1100 5825
Wire Wire Line
	900  5825 1100 5825
Text GLabel 900  5825 0    50   Input ~ 0
A2
$Comp
L power:GND #PWR0117
U 1 1 5F12FD53
P 1100 6225
F 0 "#PWR0117" H 1100 5975 50  0001 C CNN
F 1 "GND" H 1105 6052 50  0000 C CNN
F 2 "" H 1100 6225 50  0001 C CNN
F 3 "" H 1100 6225 50  0001 C CNN
	1    1100 6225
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F12FD5F
P 1100 6075
F 0 "R2" H 1170 6121 50  0000 L CNN
F 1 "R" H 1170 6030 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1030 6075 50  0001 C CNN
F 3 "~" H 1100 6075 50  0001 C CNN
	1    1100 6075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F134D48
P 2025 7150
F 0 "#PWR0118" H 2025 6900 50  0001 C CNN
F 1 "GND" H 2030 6977 50  0000 C CNN
F 2 "" H 2025 7150 50  0001 C CNN
F 3 "" H 2025 7150 50  0001 C CNN
	1    2025 7150
	1    0    0    -1  
$EndComp
Text GLabel 1825 6750 0    50   Input ~ 0
A7
Wire Wire Line
	1825 6750 2025 6750
Wire Wire Line
	2025 6850 2025 6750
Connection ~ 2025 6750
Wire Wire Line
	2025 6750 2150 6750
$Comp
L Device:R R6
U 1 1 5F134D5B
P 2025 7000
F 0 "R6" H 2095 7046 50  0000 L CNN
F 1 "R" H 2095 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1955 7000 50  0001 C CNN
F 3 "~" H 2025 7000 50  0001 C CNN
	1    2025 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 6750 1250 6750
Wire Wire Line
	1125 6850 1125 6750
Connection ~ 1125 6750
Wire Wire Line
	925  6750 1125 6750
Text GLabel 925  6750 0    50   Input ~ 0
A6
$Comp
L power:GND #PWR0119
U 1 1 5F134D6E
P 1125 7150
F 0 "#PWR0119" H 1125 6900 50  0001 C CNN
F 1 "GND" H 1130 6977 50  0000 C CNN
F 2 "" H 1125 7150 50  0001 C CNN
F 3 "" H 1125 7150 50  0001 C CNN
	1    1125 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F134D7A
P 1125 7000
F 0 "R3" H 1195 7046 50  0000 L CNN
F 1 "R" H 1195 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1055 7000 50  0001 C CNN
F 3 "~" H 1125 7000 50  0001 C CNN
	1    1125 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5F14B831
P 4975 4625
F 0 "J6" H 5100 5000 50  0000 C CNN
F 1 "Conn_capteur_ultra_son" H 5100 4900 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 4975 4625 50  0001 C CNN
F 3 "~" H 4975 4625 50  0001 C CNN
	1    4975 4625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F14B839
P 5175 4525
F 0 "#PWR0120" H 5175 4275 50  0001 C CNN
F 1 "GND" H 5180 4352 50  0000 C CNN
F 2 "" H 5175 4525 50  0001 C CNN
F 3 "" H 5175 4525 50  0001 C CNN
	1    5175 4525
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5F14B83F
P 5175 4825
F 0 "#PWR0121" H 5175 4675 50  0001 C CNN
F 1 "+5V" H 5190 4998 50  0000 C CNN
F 2 "" H 5175 4825 50  0001 C CNN
F 3 "" H 5175 4825 50  0001 C CNN
	1    5175 4825
	0    1    1    0   
$EndComp
Text GLabel 5200 5250 2    50   Input ~ 0
2
Text GLabel 5200 5350 2    50   Input ~ 0
3
Text GLabel 8150 1850 0    50   Input ~ 0
7
$Comp
L Device:R R1
U 1 1 5F129912
P 1100 5150
F 0 "R1" H 1170 5196 50  0000 L CNN
F 1 "R" H 1170 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1030 5150 50  0001 C CNN
F 3 "~" H 1100 5150 50  0001 C CNN
	1    1100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5F12991E
P 1100 5300
F 0 "#PWR0128" H 1100 5050 50  0001 C CNN
F 1 "GND" H 1105 5127 50  0000 C CNN
F 2 "" H 1100 5300 50  0001 C CNN
F 3 "" H 1100 5300 50  0001 C CNN
	1    1100 5300
	1    0    0    -1  
$EndComp
Text GLabel 900  4900 0    50   Input ~ 0
A0
Wire Wire Line
	900  4900 1100 4900
Connection ~ 1100 4900
Wire Wire Line
	1100 5000 1100 4900
Wire Wire Line
	1100 4900 1225 4900
$Comp
L power:+5V #PWR0129
U 1 1 5F1157D5
P 2725 4950
F 0 "#PWR0129" H 2725 4800 50  0001 C CNN
F 1 "+5V" H 2740 5123 50  0000 C CNN
F 2 "" H 2725 4950 50  0001 C CNN
F 3 "" H 2725 4950 50  0001 C CNN
	1    2725 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 4950 2850 4950
Text GLabel 2850 5050 0    50   Input ~ 0
f1
Text GLabel 2850 5150 0    50   Input ~ 0
f2
Text GLabel 2850 5400 0    50   Input ~ 0
f3
Text GLabel 2850 5500 0    50   Input ~ 0
f4
Text GLabel 2850 5725 0    50   Input ~ 0
f5
Text GLabel 2850 5825 0    50   Input ~ 0
f6
Text GLabel 1225 4900 2    50   Input ~ 0
f1
Text GLabel 2125 4900 2    50   Input ~ 0
f2
Text GLabel 1225 5825 2    50   Input ~ 0
f3
Text GLabel 2125 5825 2    50   Input ~ 0
f4
Text GLabel 1250 6750 2    50   Input ~ 0
f5
Text GLabel 2150 6750 2    50   Input ~ 0
f6
NoConn ~ 5700 2575
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5F1A0F76
P 3050 5050
F 0 "J1" H 3130 5092 50  0000 L CNN
F 1 "conn pin eau" H 3130 5001 50  0000 L CNN
F 2 "Nicolas:Bornier_3p_5mm_chinois" H 3050 5050 50  0001 C CNN
F 3 "~" H 3050 5050 50  0001 C CNN
	1    3050 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5F1A2D79
P 3050 5400
F 0 "J7" H 3130 5392 50  0000 L CNN
F 1 "conn pin eau" H 3130 5301 50  0000 L CNN
F 2 "Nicolas:Bornier_2p_5mm_chinois" H 3050 5400 50  0001 C CNN
F 3 "~" H 3050 5400 50  0001 C CNN
	1    3050 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 5F1A3FA2
P 3050 5725
F 0 "J8" H 3130 5717 50  0000 L CNN
F 1 "conn pin eau" H 3130 5626 50  0000 L CNN
F 2 "Nicolas:Bornier_2p_5mm_chinois" H 3050 5725 50  0001 C CNN
F 3 "~" H 3050 5725 50  0001 C CNN
	1    3050 5725
	1    0    0    -1  
$EndComp
Wire Notes Line
	625  4100 4250 4100
Wire Notes Line
	4250 4100 4250 7575
Wire Notes Line
	4250 7575 625  7575
Wire Notes Line
	625  7575 625  4100
Text Notes 1625 4450 0    79   ~ 16
Pin analogique du niveau d'eau
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5F3D98D3
P 9925 1200
F 0 "J9" H 10033 1481 50  0000 C CNN
F 1 "Bornier_Relais_1" H 10033 1390 50  0000 C CNN
F 2 "Nicolas:Bornier_3p_5mm_chinois" H 9925 1200 50  0001 C CNN
F 3 "~" H 9925 1200 50  0001 C CNN
	1    9925 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5F406122
P 5000 5450
F 0 "J3" H 5108 5831 50  0000 C CNN
F 1 "Conn_rotary_encoder" H 5108 5740 50  0000 C CNN
F 2 "Nicolas:PinHeader_1x05_P2.54mm_Vertical_PCB" H 5000 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5F407CF0
P 5200 5650
F 0 "#PWR06" H 5200 5400 50  0001 C CNN
F 1 "GND" H 5205 5477 50  0000 C CNN
F 2 "" H 5200 5650 50  0001 C CNN
F 3 "" H 5200 5650 50  0001 C CNN
	1    5200 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5F40974D
P 5200 5550
F 0 "#PWR05" H 5200 5400 50  0001 C CNN
F 1 "+5V" H 5215 5723 50  0000 C CNN
F 2 "" H 5200 5550 50  0001 C CNN
F 3 "" H 5200 5550 50  0001 C CNN
	1    5200 5550
	0    1    1    0   
$EndComp
Text GLabel 5200 5450 2    50   Input ~ 0
4
Text GLabel 5175 4625 2    50   Input ~ 0
5
Text GLabel 5175 4725 2    50   Input ~ 0
6
Wire Notes Line
	650  725  650  2775
Wire Notes Line
	3800 750  3800 2800
$Comp
L Device:Transformer_1P_1S T1
U 1 1 5FAAD2DD
P 2275 1450
F 0 "T1" H 2275 1831 50  0000 C CNN
F 1 "Transformer_1P_1S" H 2275 1740 50  0000 C CNN
F 2 "Nicolas:Transformer_Breve_TEZ-35x42" H 2275 1450 50  0001 C CNN
F 3 "~" H 2275 1450 50  0001 C CNN
	1    2275 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5FAF1BA3
P 1575 2350
F 0 "#PWR0101" H 1575 2200 50  0001 C CNN
F 1 "+12V" V 1590 2478 50  0000 L CNN
F 2 "" H 1575 2350 50  0001 C CNN
F 3 "" H 1575 2350 50  0001 C CNN
	1    1575 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FAF1BA9
P 975 2350
F 0 "#PWR0102" H 975 2100 50  0001 C CNN
F 1 "GND" H 980 2177 50  0000 C CNN
F 2 "" H 975 2350 50  0001 C CNN
F 3 "" H 975 2350 50  0001 C CNN
	1    975  2350
	0    1    1    0   
$EndComp
$Comp
L power:LINE #PWR0103
U 1 1 5FABE097
P 1875 1250
F 0 "#PWR0103" H 1875 1100 50  0001 C CNN
F 1 "LINE" V 1893 1378 50  0000 L CNN
F 2 "" H 1875 1250 50  0001 C CNN
F 3 "" H 1875 1250 50  0001 C CNN
	1    1875 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:NEUT #PWR0104
U 1 1 5FABF28A
P 1875 1650
F 0 "#PWR0104" H 1875 1500 50  0001 C CNN
F 1 "NEUT" V 1893 1778 50  0000 L CNN
F 2 "" H 1875 1650 50  0001 C CNN
F 3 "" H 1875 1650 50  0001 C CNN
	1    1875 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:AC #PWR0105
U 1 1 5FAC4C45
P 2675 1250
F 0 "#PWR0105" H 2675 1150 50  0001 C CNN
F 1 "AC" H 2675 1525 50  0000 C CNN
F 2 "" H 2675 1250 50  0001 C CNN
F 3 "" H 2675 1250 50  0001 C CNN
	1    2675 1250
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 5FAC5AE6
P 2675 1650
F 0 "#PWR0106" H 2675 1400 50  0001 C CNN
F 1 "GNDA" H 2680 1477 50  0000 C CNN
F 2 "" H 2675 1650 50  0001 C CNN
F 3 "" H 2675 1650 50  0001 C CNN
	1    2675 1650
	0    -1   -1   0   
$EndComp
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 5FAC9532
P 1125 2200
F 0 "D1" H 1125 2417 50  0000 C CNN
F 1 "DIODE" H 1125 2326 50  0000 C CNN
F 2 "Nicolas:R_L6.3mm_D2.5mm_P10.16mm_Horizontal_PCB" H 1125 2200 50  0001 C CNN
F 3 "~" H 1125 2200 50  0001 C CNN
F 4 "Y" H 1125 2200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1125 2200 50  0001 L CNN "Spice_Primitive"
	1    1125 2200
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D3
U 1 1 5FACA6E8
P 1425 2200
F 0 "D3" H 1425 2417 50  0000 C CNN
F 1 "DIODE" H 1425 2326 50  0000 C CNN
F 2 "Nicolas:R_L6.3mm_D2.5mm_P10.16mm_Horizontal_PCB" H 1425 2200 50  0001 C CNN
F 3 "~" H 1425 2200 50  0001 C CNN
F 4 "Y" H 1425 2200 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1425 2200 50  0001 L CNN "Spice_Primitive"
	1    1425 2200
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D2
U 1 1 5FACB3F0
P 1125 2525
F 0 "D2" H 1125 2742 50  0000 C CNN
F 1 "DIODE" H 1125 2651 50  0000 C CNN
F 2 "Nicolas:R_L6.3mm_D2.5mm_P10.16mm_Horizontal_PCB" H 1125 2525 50  0001 C CNN
F 3 "~" H 1125 2525 50  0001 C CNN
F 4 "Y" H 1125 2525 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1125 2525 50  0001 L CNN "Spice_Primitive"
	1    1125 2525
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D4
U 1 1 5FACBAC3
P 1425 2525
F 0 "D4" H 1425 2742 50  0000 C CNN
F 1 "DIODE" H 1425 2651 50  0000 C CNN
F 2 "Nicolas:R_L6.3mm_D2.5mm_P10.16mm_Horizontal_PCB" H 1425 2525 50  0001 C CNN
F 3 "~" H 1425 2525 50  0001 C CNN
F 4 "Y" H 1425 2525 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1425 2525 50  0001 L CNN "Spice_Primitive"
	1    1425 2525
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0107
U 1 1 5FACE3C9
P 1275 2525
F 0 "#PWR0107" H 1275 2275 50  0001 C CNN
F 1 "GNDA" H 1280 2352 50  0000 C CNN
F 2 "" H 1275 2525 50  0001 C CNN
F 3 "" H 1275 2525 50  0001 C CNN
	1    1275 2525
	1    0    0    -1  
$EndComp
Connection ~ 1275 2525
$Comp
L power:AC #PWR0108
U 1 1 5FAD0F58
P 1275 2000
F 0 "#PWR0108" H 1275 1900 50  0001 C CNN
F 1 "AC" H 1275 2275 50  0000 C CNN
F 2 "" H 1275 2000 50  0001 C CNN
F 3 "" H 1275 2000 50  0001 C CNN
	1    1275 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 2000 1275 2200
Connection ~ 1275 2200
Wire Wire Line
	1575 2200 1575 2350
Wire Wire Line
	975  2200 975  2350
Connection ~ 975  2350
Wire Wire Line
	975  2350 975  2525
Connection ~ 1575 2350
Wire Wire Line
	1575 2350 1575 2525
$Comp
L power:+12V #PWR0114
U 1 1 5FAE1529
P 5700 950
F 0 "#PWR0114" H 5700 800 50  0001 C CNN
F 1 "+12V" V 5715 1078 50  0000 L CNN
F 2 "" H 5700 950 50  0001 C CNN
F 3 "" H 5700 950 50  0001 C CNN
	1    5700 950 
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J11
U 1 1 5FAF317E
P 2850 2225
F 0 "J11" H 2930 2217 50  0000 L CNN
F 1 "bornier alim 220v" H 2930 2126 50  0000 L CNN
F 2 "Nicolas:Bornier_2p_5mm_chinois" H 2850 2225 50  0001 C CNN
F 3 "~" H 2850 2225 50  0001 C CNN
	1    2850 2225
	1    0    0    -1  
$EndComp
$Comp
L power:LINE #PWR0122
U 1 1 5FAF3FEA
P 2650 2225
F 0 "#PWR0122" H 2650 2075 50  0001 C CNN
F 1 "LINE" V 2668 2353 50  0000 L CNN
F 2 "" H 2650 2225 50  0001 C CNN
F 3 "" H 2650 2225 50  0001 C CNN
	1    2650 2225
	0    -1   -1   0   
$EndComp
$Comp
L power:NEUT #PWR0123
U 1 1 5FAF4F88
P 2650 2325
F 0 "#PWR0123" H 2650 2175 50  0001 C CNN
F 1 "NEUT" V 2668 2453 50  0000 L CNN
F 2 "" H 2650 2325 50  0001 C CNN
F 3 "" H 2650 2325 50  0001 C CNN
	1    2650 2325
	0    -1   -1   0   
$EndComp
$Comp
L Relay:FINDER-32.21-x000 K1
U 1 1 5FB009A6
P 8550 1100
F 0 "K1" H 8980 1146 50  0000 L CNN
F 1 "FINDER-32.21-x000" H 8980 1055 50  0000 L CNN
F 2 "Nicolas:Relay_SPDT_Finder_36.11" H 9820 1070 50  0001 C CNN
F 3 "https://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 8550 1100 50  0001 C CNN
	1    8550 1100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FB0701F
P 8750 2050
F 0 "#PWR01" H 8750 1800 50  0001 C CNN
F 1 "GND" H 8755 1877 50  0000 C CNN
F 2 "" H 8750 2050 50  0001 C CNN
F 3 "" H 8750 2050 50  0001 C CNN
	1    8750 2050
	1    0    0    -1  
$EndComp
Text GLabel 8450 1400 3    50   Input ~ 0
Nc1
Text GLabel 8250 1400 3    50   Input ~ 0
No1
$Comp
L Simulation_SPICE:DIODE D5
U 1 1 5FB16213
P 9275 1100
F 0 "D5" V 9229 1180 50  0000 L CNN
F 1 "DIODE" V 9320 1180 50  0000 L CNN
F 2 "Nicolas:R_L6.3mm_D2.5mm_P10.16mm_Horizontal_PCB" H 9275 1100 50  0001 C CNN
F 3 "~" H 9275 1100 50  0001 C CNN
F 4 "Y" H 9275 1100 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 9275 1100 50  0001 L CNN "Spice_Primitive"
	1    9275 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9275 1250 9275 1400
Wire Wire Line
	9275 1400 8750 1400
Wire Wire Line
	9275 950  9275 825 
Wire Wire Line
	9275 825  8750 825 
Wire Wire Line
	8750 825  8750 800 
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5FB183C7
P 8650 1850
F 0 "Q1" H 8841 1896 50  0000 L CNN
F 1 "BC547" H 8841 1805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 1775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8650 1850 50  0001 L CNN
	1    8650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 5FB1D3D4
P 8750 825
F 0 "#PWR0124" H 8750 675 50  0001 C CNN
F 1 "+5V" H 8765 998 50  0000 C CNN
F 2 "" H 8750 825 50  0001 C CNN
F 3 "" H 8750 825 50  0001 C CNN
	1    8750 825 
	1    0    0    -1  
$EndComp
Connection ~ 8750 825 
Wire Wire Line
	8750 1400 8750 1650
Connection ~ 8750 1400
$Comp
L Device:R R7
U 1 1 5FB20B49
P 8300 1850
F 0 "R7" H 8370 1896 50  0000 L CNN
F 1 "R" H 8370 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8230 1850 50  0001 C CNN
F 3 "~" H 8300 1850 50  0001 C CNN
	1    8300 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 1000 8275 1000
Wire Wire Line
	8250 1375 8250 1400
$Comp
L power:LINE #PWR0125
U 1 1 5FB3398F
P 8350 800
F 0 "#PWR0125" H 8350 650 50  0001 C CNN
F 1 "LINE" V 8368 928 50  0000 L CNN
F 2 "" H 8350 800 50  0001 C CNN
F 3 "" H 8350 800 50  0001 C CNN
	1    8350 800 
	1    0    0    -1  
$EndComp
$Comp
L power:NEUT #PWR0126
U 1 1 5FB3E29C
P 10125 1200
F 0 "#PWR0126" H 10125 1050 50  0001 C CNN
F 1 "NEUT" V 10143 1328 50  0000 L CNN
F 2 "" H 10125 1200 50  0001 C CNN
F 3 "" H 10125 1200 50  0001 C CNN
	1    10125 1200
	0    1    1    0   
$EndComp
Text GLabel 10125 1100 2    50   Input ~ 0
No1
Text GLabel 10125 1300 2    50   Input ~ 0
Nc1
Text GLabel 8150 4275 0    50   Input ~ 0
8
$Comp
L Relay:FINDER-32.21-x000 K2
U 1 1 5FC9286C
P 8550 3525
F 0 "K2" H 8980 3571 50  0000 L CNN
F 1 "FINDER-32.21-x000" H 8980 3480 50  0000 L CNN
F 2 "Nicolas:Relay_SPDT_Finder_36.11" H 9820 3495 50  0001 C CNN
F 3 "https://gfinder.findernet.com/assets/Series/355/S32EN.pdf" H 8550 3525 50  0001 C CNN
	1    8550 3525
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5FC92872
P 8750 4475
F 0 "#PWR0127" H 8750 4225 50  0001 C CNN
F 1 "GND" H 8755 4302 50  0000 C CNN
F 2 "" H 8750 4475 50  0001 C CNN
F 3 "" H 8750 4475 50  0001 C CNN
	1    8750 4475
	1    0    0    -1  
$EndComp
Text GLabel 8450 3825 3    50   Input ~ 0
Nc2
Text GLabel 8250 3825 3    50   Input ~ 0
No2
$Comp
L Simulation_SPICE:DIODE D6
U 1 1 5FC9287C
P 9275 3525
F 0 "D6" V 9229 3605 50  0000 L CNN
F 1 "DIODE" V 9320 3605 50  0000 L CNN
F 2 "Nicolas:R_L6.3mm_D2.5mm_P10.16mm_Horizontal_PCB" H 9275 3525 50  0001 C CNN
F 3 "~" H 9275 3525 50  0001 C CNN
F 4 "Y" H 9275 3525 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 9275 3525 50  0001 L CNN "Spice_Primitive"
	1    9275 3525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9275 3675 9275 3825
Wire Wire Line
	9275 3825 8750 3825
Wire Wire Line
	9275 3375 9275 3250
Wire Wire Line
	9275 3250 8750 3250
Wire Wire Line
	8750 3250 8750 3225
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5FC92887
P 8650 4275
F 0 "Q2" H 8841 4321 50  0000 L CNN
F 1 "BC547" H 8841 4230 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 4200 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8650 4275 50  0001 L CNN
	1    8650 4275
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 5FC9288D
P 8750 3250
F 0 "#PWR0130" H 8750 3100 50  0001 C CNN
F 1 "+5V" H 8765 3423 50  0000 C CNN
F 2 "" H 8750 3250 50  0001 C CNN
F 3 "" H 8750 3250 50  0001 C CNN
	1    8750 3250
	1    0    0    -1  
$EndComp
Connection ~ 8750 3250
Wire Wire Line
	8750 3825 8750 4075
Connection ~ 8750 3825
$Comp
L Device:R R8
U 1 1 5FC92896
P 8300 4275
F 0 "R8" H 8370 4321 50  0000 L CNN
F 1 "R" H 8370 4230 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8230 4275 50  0001 C CNN
F 3 "~" H 8300 4275 50  0001 C CNN
	1    8300 4275
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 3425 8275 3425
Wire Wire Line
	8250 3800 8250 3825
$Comp
L power:LINE #PWR0131
U 1 1 5FC9289E
P 8350 3225
F 0 "#PWR0131" H 8350 3075 50  0001 C CNN
F 1 "LINE" V 8368 3353 50  0000 L CNN
F 2 "" H 8350 3225 50  0001 C CNN
F 3 "" H 8350 3225 50  0001 C CNN
	1    8350 3225
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5FC9BCDC
P 9850 3600
F 0 "J4" H 9958 3881 50  0000 C CNN
F 1 "Bornier_Relais_2" H 9958 3790 50  0000 C CNN
F 2 "Nicolas:Bornier_3p_5mm_chinois" H 9850 3600 50  0001 C CNN
F 3 "~" H 9850 3600 50  0001 C CNN
	1    9850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:NEUT #PWR0132
U 1 1 5FC9BCE2
P 10050 3600
F 0 "#PWR0132" H 10050 3450 50  0001 C CNN
F 1 "NEUT" V 10068 3728 50  0000 L CNN
F 2 "" H 10050 3600 50  0001 C CNN
F 3 "" H 10050 3600 50  0001 C CNN
	1    10050 3600
	0    1    1    0   
$EndComp
Text GLabel 10050 3500 2    50   Input ~ 0
No2
Text GLabel 10050 3700 2    50   Input ~ 0
Nc2
NoConn ~ 4400 950 
NoConn ~ 4400 1075
NoConn ~ 4400 2325
NoConn ~ 4400 2450
NoConn ~ 4400 2575
NoConn ~ 4400 2700
NoConn ~ 5700 2700
Text GLabel 4400 2200 0    50   Input ~ 0
8
$EndSCHEMATC
