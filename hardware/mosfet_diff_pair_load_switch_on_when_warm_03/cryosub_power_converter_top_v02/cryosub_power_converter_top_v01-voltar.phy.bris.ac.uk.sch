EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3500 2550 2700 1950
U 61394019
F0 "On When Warm" 50
F1 "onWhenWarm.sch" 50
F2 "VD1" I L 3500 3000 50 
F3 "VLOAD" I R 6200 2950 50 
F4 "5V0" I L 3500 2750 50 
F5 "Thermistor" I L 3500 3550 50 
$EndSheet
Wire Wire Line
	3500 3550 2700 3550
$Comp
L Diode:Z1SMAxxx D2
U 1 1 61399349
P 7250 3300
F 0 "D2" V 7204 3380 50  0000 L CNN
F 1 "PTZTFTE255.6B" V 7295 3380 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 7250 3125 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/z1sma1.pdf" H 7250 3300 50  0001 C CNN
	1    7250 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3150 7250 2950
Connection ~ 7250 2950
Wire Wire Line
	7250 3450 7250 3650
$Comp
L power:GND #PWR02
U 1 1 6139BF8D
P 7250 3650
F 0 "#PWR02" H 7250 3400 50  0001 C CNN
F 1 "GND" H 7255 3477 50  0000 C CNN
F 2 "" H 7250 3650 50  0001 C CNN
F 3 "" H 7250 3650 50  0001 C CNN
	1    7250 3650
	1    0    0    -1  
$EndComp
$Comp
L Diode:B120-E3 D1
U 1 1 6139D14B
P 1450 3050
F 0 "D1" V 1404 3130 50  0000 L CNN
F 1 "B120-E3" V 1495 3130 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1450 2875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88946/b120.pdf" H 1450 3050 50  0001 C CNN
	1    1450 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6139F2AE
P 1450 3350
F 0 "#PWR01" H 1450 3100 50  0001 C CNN
F 1 "GND" H 1455 3177 50  0000 C CNN
F 2 "" H 1450 3350 50  0001 C CNN
F 3 "" H 1450 3350 50  0001 C CNN
	1    1450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3350 1450 3250
Wire Wire Line
	1450 2750 1450 2900
Wire Wire Line
	1450 2750 950  2750
Connection ~ 1450 2750
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 613A0646
P 750 2750
F 0 "J1" H 858 2931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 858 2840 50  0000 C CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_2-G-3.81_1x02_P3.81mm_Vertical" H 750 2750 50  0001 C CNN
F 3 "~" H 750 2750 50  0001 C CNN
	1    750  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2850 950  3250
Wire Wire Line
	950  3250 1450 3250
Connection ~ 1450 3250
Wire Wire Line
	1450 3250 1450 3200
Wire Wire Line
	6200 2950 7250 2950
Text Label 6800 2950 2    50   ~ 0
vload
Text Label 2900 3550 2    50   ~ 0
thermistor
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 613A795B
P 9450 3150
F 0 "J2" H 9500 3567 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 9500 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical_SMD" H 9450 3150 50  0001 C CNN
F 3 "~" H 9450 3150 50  0001 C CNN
	1    9450 3150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT3042xMSE U1
U 1 1 613A9390
P 2950 6350
F 0 "U1" H 2950 6717 50  0000 C CNN
F 1 "LT3042xMSE" H 2950 6626 50  0000 C CNN
F 2 "Package_SO:MSOP-10-1EP_3x3mm_P0.5mm_EP1.68x1.88mm" H 2950 6675 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/3042fb.pdf" H 2950 6350 50  0001 C CNN
	1    2950 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 613AA181
P 10050 950
F 0 "H1" H 10150 996 50  0000 L CNN
F 1 "MountingHole" H 10150 905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 10050 950 50  0001 C CNN
F 3 "~" H 10050 950 50  0001 C CNN
	1    10050 950 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 613AB185
P 10050 1350
F 0 "H2" H 10150 1396 50  0000 L CNN
F 1 "MountingHole" H 10150 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 10050 1350 50  0001 C CNN
F 3 "~" H 10050 1350 50  0001 C CNN
	1    10050 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 613AB5A0
P 10050 1750
F 0 "H3" H 10150 1796 50  0000 L CNN
F 1 "MountingHole" H 10150 1705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 10050 1750 50  0001 C CNN
F 3 "~" H 10050 1750 50  0001 C CNN
	1    10050 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 613B8041
P 4650 6250
F 0 "J3" H 4622 6224 50  0000 R CNN
F 1 "Conn_01x02_Male" H 4622 6133 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 4650 6250 50  0001 C CNN
F 3 "~" H 4650 6250 50  0001 C CNN
	1    4650 6250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 613B8B62
P 4250 6500
F 0 "#PWR03" H 4250 6250 50  0001 C CNN
F 1 "GND" H 4255 6327 50  0000 C CNN
F 2 "" H 4250 6500 50  0001 C CNN
F 3 "" H 4250 6500 50  0001 C CNN
	1    4250 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6500 4250 6350
Wire Wire Line
	4250 6350 4450 6350
Text Label 4300 6250 2    50   ~ 0
p5v_out
Text Notes 10500 4600 2    50   ~ 0
N.B. Remember to swap odd/even \non 10-way connector\nto account for board-to-board\nmounting
$Comp
L power:GND #PWR06
U 1 1 613C1737
P 10250 2950
F 0 "#PWR06" H 10250 2700 50  0001 C CNN
F 1 "GND" H 10255 2777 50  0000 C CNN
F 2 "" H 10250 2950 50  0001 C CNN
F 3 "" H 10250 2950 50  0001 C CNN
	1    10250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR05
U 1 1 613C47CD
P 2450 2500
F 0 "#PWR05" H 2450 2400 50  0001 C CNN
F 1 "VDC" H 2465 2673 50  0000 C CNN
F 2 "" H 2450 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2500 2450 2750
Wire Wire Line
	9150 2950 9150 3050
Wire Wire Line
	9150 3050 9250 3050
Connection ~ 9150 2950
Wire Wire Line
	9150 2950 9250 2950
Wire Wire Line
	9750 2950 9850 2950
Wire Wire Line
	9850 2950 9850 3050
Wire Wire Line
	9850 3050 9750 3050
Connection ~ 9850 2950
Wire Wire Line
	9850 2950 10250 2950
Wire Wire Line
	9850 3050 9850 3150
Wire Wire Line
	9850 3150 9750 3150
Connection ~ 9850 3050
Wire Wire Line
	7250 2950 9150 2950
Wire Wire Line
	9250 3350 8450 3350
Wire Wire Line
	8450 3350 8450 5000
Wire Wire Line
	8450 5000 2700 5000
Wire Wire Line
	2700 5000 2700 3550
Wire Wire Line
	2450 2750 3500 2750
Wire Wire Line
	2550 6250 2250 6250
Wire Wire Line
	2250 6250 2250 5900
Wire Wire Line
	2250 6250 2250 6350
Wire Wire Line
	2250 6350 2550 6350
Connection ~ 2250 6250
Wire Wire Line
	3350 6450 3700 6450
Wire Wire Line
	3700 6450 3700 5850
Wire Wire Line
	3700 5850 2250 5850
Wire Wire Line
	2950 6750 2950 6900
Wire Wire Line
	2550 6450 2250 6450
Wire Wire Line
	2250 6450 2250 6900
Wire Wire Line
	2250 6900 2950 6900
Connection ~ 2950 6900
Wire Wire Line
	2550 6550 1800 6550
Wire Wire Line
	1800 6550 1800 6800
Wire Wire Line
	3350 6250 3500 6250
Wire Wire Line
	3350 6350 3500 6350
Wire Wire Line
	3500 6350 3500 6250
Connection ~ 3500 6250
Wire Wire Line
	3500 6250 3900 6250
$Comp
L Device:R R10
U 1 1 613F83D0
P 1800 6950
F 0 "R10" H 1870 6996 50  0000 L CNN
F 1 "49.9k" H 1870 6905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1730 6950 50  0001 C CNN
F 3 "~" H 1800 6950 50  0001 C CNN
	1    1800 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 613F89B4
P 1200 6950
F 0 "C4" H 1315 6996 50  0000 L CNN
F 1 "0.47uF" H 1315 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1238 6800 50  0001 C CNN
F 3 "~" H 1200 6950 50  0001 C CNN
	1    1200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6550 1200 6800
Wire Wire Line
	1200 7100 1200 7300
Wire Wire Line
	2950 6900 2950 7300
Wire Wire Line
	2200 7300 2200 7400
Connection ~ 2200 7300
Wire Wire Line
	2200 7300 2950 7300
$Comp
L power:GND #PWR04
U 1 1 613FCCD2
P 2200 7400
F 0 "#PWR04" H 2200 7150 50  0001 C CNN
F 1 "GND" H 2205 7227 50  0000 C CNN
F 2 "" H 2200 7400 50  0001 C CNN
F 3 "" H 2200 7400 50  0001 C CNN
	1    2200 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7100 1800 7300
Wire Wire Line
	1200 6550 1800 6550
Connection ~ 1800 6550
Wire Wire Line
	1200 7300 1800 7300
Connection ~ 1800 7300
Wire Wire Line
	1800 7300 2200 7300
$Comp
L Device:C C5
U 1 1 61406F4E
P 3900 6900
F 0 "C5" H 4015 6946 50  0000 L CNN
F 1 "4.7uF" H 4015 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3938 6750 50  0001 C CNN
F 3 "~" H 3900 6900 50  0001 C CNN
	1    3900 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6750 3900 6250
Connection ~ 3900 6250
Wire Wire Line
	3900 6250 4450 6250
Wire Wire Line
	3900 7050 3900 7300
Wire Wire Line
	3900 7300 2950 7300
Connection ~ 2950 7300
$Comp
L Device:C C6
U 1 1 61417CCB
P 1750 6050
F 0 "C6" H 1865 6096 50  0000 L CNN
F 1 "4.7uF" H 1865 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1788 5900 50  0001 C CNN
F 3 "~" H 1750 6050 50  0001 C CNN
	1    1750 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6141DDC1
P 1750 6200
F 0 "#PWR07" H 1750 5950 50  0001 C CNN
F 1 "GND" H 1755 6027 50  0000 C CNN
F 2 "" H 1750 6200 50  0001 C CNN
F 3 "" H 1750 6200 50  0001 C CNN
	1    1750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5900 2250 5900
Connection ~ 2250 5900
Wire Wire Line
	2250 5900 2250 5850
$Comp
L Diode:Z1SMAxxx D3
U 1 1 61454A5F
P 2000 3050
F 0 "D3" V 1954 3130 50  0000 L CNN
F 1 "PTZTFTE2510B" V 2045 3130 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 2000 2875 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/2328428.pdf" H 2000 3050 50  0001 C CNN
	1    2000 3050
	0    1    1    0   
$EndComp
Connection ~ 2450 2750
Wire Wire Line
	2250 5850 2250 2750
Connection ~ 2250 5850
Connection ~ 2250 2750
Wire Wire Line
	2250 2750 2450 2750
Wire Wire Line
	1450 2750 2000 2750
Wire Wire Line
	2000 2900 2000 2750
Connection ~ 2000 2750
Wire Wire Line
	2000 2750 2250 2750
Wire Wire Line
	2000 3200 2000 3250
Wire Wire Line
	2000 3250 1450 3250
$EndSCHEMATC
