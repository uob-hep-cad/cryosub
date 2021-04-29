EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
S 2300 1650 1450 1750
U 60854ED0
F0 "on When Warm" 50
F1 "onWhenWarm.sch" 50
F2 "VD1" I R 3750 3050 50 
F3 "VLOAD" I R 3750 2050 50 
F4 "5V0" I L 2300 2100 50 
$EndSheet
$Sheet
S 2300 4300 1400 1750
U 60855826
F0 "on When Cold" 50
F1 "onWhenCold.sch" 50
F2 "vcont" I L 2300 5700 50 
F3 "vload" I R 3700 4750 50 
F4 "5v0" I L 2300 4700 50 
$EndSheet
$Comp
L cmoda7:CMOD-A7 U1
U 1 1 6085A3E9
P 6700 4450
F 0 "U1" H 6700 5775 50  0000 C CNN
F 1 "CMOD-A7" H 6700 5684 50  0000 C CNN
F 2 "Package_DIP:DIP-48_W15.24mm_LongPads" H 6650 5700 50  0001 C CNN
F 3 "" H 6650 5700 50  0001 C CNN
	1    6700 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND03
U 1 1 6085D726
P 7300 5900
F 0 "#GND03" H 7300 5800 50  0001 C CNN
F 1 "0" H 7300 5989 50  0000 C CNN
F 2 "" H 7300 5900 50  0001 C CNN
F 3 "~" H 7300 5900 50  0001 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5650 7300 5650
Wire Wire Line
	7300 5650 7300 5900
$Comp
L power:+5V #PWR01
U 1 1 6085E6AE
P 1850 2000
F 0 "#PWR01" H 1850 1850 50  0001 C CNN
F 1 "+5V" H 1865 2173 50  0000 C CNN
F 2 "" H 1850 2000 50  0001 C CNN
F 3 "" H 1850 2000 50  0001 C CNN
	1    1850 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 6085ECE7
P 1900 4550
F 0 "#PWR02" H 1900 4400 50  0001 C CNN
F 1 "+5V" H 1915 4723 50  0000 C CNN
F 2 "" H 1900 4550 50  0001 C CNN
F 3 "" H 1900 4550 50  0001 C CNN
	1    1900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2000 1850 2100
Wire Wire Line
	1850 2100 2300 2100
Wire Wire Line
	1900 4550 1900 4700
Wire Wire Line
	1900 4700 2300 4700
Wire Wire Line
	3750 2050 4500 2050
Wire Wire Line
	4500 2050 4500 1850
Text Label 4500 1850 0    50   ~ 0
vfpga
Wire Wire Line
	5350 5650 5800 5650
Text Label 5350 5650 0    50   ~ 0
vfpga
$Comp
L pspice:0 #GND01
U 1 1 60862E0C
P 4250 6350
F 0 "#GND01" H 4250 6250 50  0001 C CNN
F 1 "0" H 4250 6439 50  0000 C CNN
F 2 "" H 4250 6350 50  0001 C CNN
F 3 "~" H 4250 6350 50  0001 C CNN
	1    4250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4750 4250 5200
$Comp
L Sensor_Temperature:PT100 TH1
U 1 1 60866504
P 8500 3300
F 0 "TH1" H 8598 3346 50  0000 L CNN
F 1 "PT100" H 8598 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8500 3350 50  0001 C CNN
F 3 "https://www.heraeus.com/media/media/group/doc_group/products_1/hst/sot_to/de_15/to_92_d.pdf" H 8500 3350 50  0001 C CNN
	1    8500 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60867CE5
P 6200 6000
F 0 "C1" H 6315 6046 50  0000 L CNN
F 1 "1uF" H 6315 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6238 5850 50  0001 C CNN
F 3 "~" H 6200 6000 50  0001 C CNN
	1    6200 6000
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND02
U 1 1 60868482
P 6200 6500
F 0 "#GND02" H 6200 6400 50  0001 C CNN
F 1 "0" H 6200 6589 50  0000 C CNN
F 2 "" H 6200 6500 50  0001 C CNN
F 3 "~" H 6200 6500 50  0001 C CNN
	1    6200 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6500 6200 6150
Text Label 4250 4750 0    50   ~ 0
vheat
$Comp
L Device:Heater R21
U 1 1 6087500B
P 4250 5350
F 0 "R21" H 4180 5304 50  0000 R CNN
F 1 "5" H 4180 5395 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:TO-263-2_TabPin1" V 4180 5350 50  0001 C CNN
F 3 "~" H 4250 5350 50  0001 C CNN
	1    4250 5350
	-1   0    0    1   
$EndComp
Connection ~ 4250 4750
Wire Wire Line
	2300 5700 1600 5700
Text Label 1600 5700 0    50   ~ 0
vcont
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 6088B5DC
P 8600 850
F 0 "J2" V 8662 994 50  0000 L CNN
F 1 "Conn_01x04_Male" V 8753 994 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8600 850 50  0001 C CNN
F 3 "~" H 8600 850 50  0001 C CNN
	1    8600 850 
	0    1    1    0   
$EndComp
$Comp
L pspice:0 #GND09
U 1 1 608A99EA
P 10150 2400
F 0 "#GND09" H 10150 2300 50  0001 C CNN
F 1 "0" H 10150 2489 50  0000 C CNN
F 2 "" H 10150 2400 50  0001 C CNN
F 3 "~" H 10150 2400 50  0001 C CNN
	1    10150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 608ABC38
P 8200 2150
F 0 "#PWR03" H 8200 2000 50  0001 C CNN
F 1 "+5V" H 8215 2323 50  0000 C CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1050 8600 1400
Wire Wire Line
	8600 1400 9600 1400
Wire Wire Line
	8500 1050 8500 1500
Wire Wire Line
	8500 1500 9600 1500
Text Label 8700 2200 0    50   ~ 0
usb_d+
Text Label 9450 2200 0    50   ~ 0
usb_d-
$Comp
L pspice:0 #GND07
U 1 1 608B8A72
P 8400 1300
F 0 "#GND07" H 8400 1200 50  0001 C CNN
F 1 "0" H 8400 1389 50  0000 C CNN
F 2 "" H 8400 1300 50  0001 C CNN
F 3 "~" H 8400 1300 50  0001 C CNN
	1    8400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1300 8400 1050
Wire Wire Line
	8700 1050 8700 1200
Wire Wire Line
	8700 1200 9550 1200
Wire Wire Line
	9550 1200 9550 950 
$Comp
L power:+5V #PWR04
U 1 1 608BAF6C
P 9550 950
F 0 "#PWR04" H 9550 800 50  0001 C CNN
F 1 "+5V" H 9565 1123 50  0000 C CNN
F 2 "" H 9550 950 50  0001 C CNN
F 3 "" H 9550 950 50  0001 C CNN
	1    9550 950 
	1    0    0    -1  
$EndComp
Text Notes 7850 950  0    50   ~ 0
Connect to\nCMOD A7\nUSB cable
Wire Wire Line
	8500 3450 8500 3500
$Comp
L pspice:0 #GND08
U 1 1 608C66B2
P 8500 3750
F 0 "#GND08" H 8500 3650 50  0001 C CNN
F 1 "0" H 8500 3839 50  0000 C CNN
F 2 "" H 8500 3750 50  0001 C CNN
F 3 "~" H 8500 3750 50  0001 C CNN
	1    8500 3750
	1    0    0    -1  
$EndComp
Connection ~ 8500 3500
Wire Wire Line
	8500 3500 8500 3750
Wire Wire Line
	8500 3150 8800 3150
Connection ~ 8500 3150
Text Label 8200 2400 0    50   ~ 0
vheat
Wire Wire Line
	4250 5500 4250 6350
Wire Wire Line
	6400 4850 5250 4850
Text Label 5250 4850 0    50   ~ 0
vcont
Wire Wire Line
	7000 5550 7850 5550
$Comp
L Device:R R22
U 1 1 608E734D
P 8000 5550
F 0 "R22" V 7793 5550 50  0000 C CNN
F 1 "1k" V 7884 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7930 5550 50  0001 C CNN
F 3 "~" H 8000 5550 50  0001 C CNN
	1    8000 5550
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 608E96D3
P 8300 5850
F 0 "C6" H 8415 5896 50  0000 L CNN
F 1 "100n" H 8415 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8338 5700 50  0001 C CNN
F 3 "~" H 8300 5850 50  0001 C CNN
	1    8300 5850
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND06
U 1 1 608EA274
P 8300 6100
F 0 "#GND06" H 8300 6000 50  0001 C CNN
F 1 "0" H 8300 6189 50  0000 C CNN
F 2 "" H 8300 6100 50  0001 C CNN
F 3 "~" H 8300 6100 50  0001 C CNN
	1    8300 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 6000 8300 6100
Wire Wire Line
	8150 5550 8300 5550
Connection ~ 8300 5550
Wire Wire Line
	8300 5550 8900 5550
Text Label 8900 5550 0    50   ~ 0
vcont
Wire Wire Line
	3700 4750 4250 4750
Wire Wire Line
	4250 4750 6400 4750
$Comp
L Device:R R23
U 1 1 60925F0B
P 5950 5650
F 0 "R23" V 5743 5650 50  0000 C CNN
F 1 "0" V 5834 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5880 5650 50  0001 C CNN
F 3 "~" H 5950 5650 50  0001 C CNN
	1    5950 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 5650 6200 5650
Wire Wire Line
	8300 5550 8300 5700
Wire Wire Line
	6200 5850 6200 5650
Connection ~ 6200 5650
Wire Wire Line
	6200 5650 6400 5650
Text Notes 9800 800  0    50   ~ 0
*either* connect +5V to USB cable \non J2, *or* fit R23 \nto apply power to CMOD
Text Notes 4950 5900 0    50   ~ 0
*either* fit R23,\n*or* provide power on USB
Wire Wire Line
	8950 2200 8850 2200
Wire Wire Line
	9450 2200 9700 2200
Wire Wire Line
	8950 2300 8850 2300
Wire Wire Line
	8200 2300 8200 2150
Wire Wire Line
	9450 2300 10150 2300
Wire Wire Line
	10150 2300 10150 2400
Wire Wire Line
	8950 2400 8850 2400
Text Label 8800 1400 0    50   ~ 0
usb_d+
Text Label 8800 1500 0    50   ~ 0
usb_d-
Wire Wire Line
	9800 3500 9800 2500
Wire Wire Line
	9800 2500 9450 2500
Wire Wire Line
	8500 3500 9450 3500
Wire Wire Line
	9450 2600 9450 3500
Connection ~ 9450 3500
Wire Wire Line
	9450 3500 9800 3500
Wire Wire Line
	8800 2600 8850 2600
Wire Wire Line
	8800 2600 8800 3150
Wire Wire Line
	8500 2500 8850 2500
Wire Wire Line
	8500 2500 8500 3150
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom J1
U 1 1 609BA53C
P 9250 2400
F 0 "J1" H 9300 2817 50  0000 C CNN
F 1 "Conn_02x05_Top_Bottom" H 9300 2726 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43045-1000_2x05_P3.00mm_Horizontal" H 9250 2400 50  0001 C CNN
F 3 "~" H 9250 2400 50  0001 C CNN
	1    9250 2400
	-1   0    0    -1  
$EndComp
Connection ~ 8850 2600
Wire Wire Line
	8850 2600 8950 2600
Connection ~ 8850 2200
Wire Wire Line
	8850 2200 8700 2200
Connection ~ 8850 2300
Wire Wire Line
	8850 2300 8200 2300
Connection ~ 8850 2400
Wire Wire Line
	8850 2400 8200 2400
Connection ~ 8850 2500
Wire Wire Line
	8850 2500 8950 2500
$EndSCHEMATC