EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 9200 2500 2    50   ~ 0
PMOS as a load switch
$Comp
L Device:R R8
U 1 1 60855E6F
P 6750 3400
F 0 "R8" H 6820 3445 50  0000 L CNN
F 1 "100k" H 6820 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6680 3400 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3350 5250 3450
Wire Wire Line
	5250 2900 6750 2900
Wire Wire Line
	5800 3600 5800 3850
Connection ~ 5800 3850
Wire Wire Line
	4450 3600 5800 3600
$Comp
L Transistor_FET:BSS127S Q2
U 1 1 60855E71
P 5350 3850
F 0 "Q2" H 5555 3895 50  0000 L CNN
F 1 "IRLML2402TR" H 5555 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 3775 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/BSS127.pdf" H 5350 3850 50  0001 L CNN
F 4 "X" H 5350 3850 50  0001 C CNN "Spice_Primitive"
F 5 "BSS127_L0" H 5350 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5350 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "./IFX-Power_OptiMOS_N-channel_small_signal_MOSFET_240V_250V_400V_600V_Spice-web.lib" H 5350 3850 50  0001 C CNN "Spice_Lib_File"
F 8 "3 1 2" H 5350 3850 50  0001 C CNN "Spice_Node_Sequence"
	1    5350 3850
	-1   0    0    -1  
$EndComp
Connection ~ 4550 4850
Wire Wire Line
	5550 3850 5800 3850
Text Label 5700 3850 2    50   ~ 0
vg2
Wire Wire Line
	5250 3450 5250 3650
Connection ~ 5250 3450
$Comp
L Transistor_FET:BSS127S Q1
U 1 1 60855E70
P 3850 3850
F 0 "Q1" H 4055 3895 50  0000 L CNN
F 1 "IRLML2402TR" H 4055 3805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 3775 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/BSS127.pdf" H 3850 3850 50  0001 L CNN
F 4 "X" H 3850 3850 50  0001 C CNN "Spice_Primitive"
F 5 "BSS127_L0" H 3850 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3850 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "./IFX-Power_OptiMOS_N-channel_small_signal_MOSFET_240V_250V_400V_600V_Spice-web.lib" H 3850 3850 50  0001 C CNN "Spice_Lib_File"
F 8 "3 1 2 " H 3850 3850 50  0001 C CNN "Spice_Node_Sequence"
	1    3850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 605937CE
P 5250 3200
F 0 "R7" H 5320 3245 50  0000 L CNN
F 1 "4.7k" H 5320 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5180 3200 50  0001 C CNN
F 3 "~" H 5250 3200 50  0001 C CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2900 5250 3050
Connection ~ 5250 2900
Text Label 5250 3400 2    50   ~ 0
vd2
Wire Wire Line
	5050 3450 5250 3450
$Comp
L Device:R R6
U 1 1 60855E72
P 4900 3450
F 0 "R6" V 5106 3450 50  0000 C CNN
F 1 "200k" V 5015 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4830 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 4250 5250 4250
Wire Wire Line
	5250 4250 5250 4050
Connection ~ 3950 3600
$Comp
L Device:R R3
U 1 1 6059315B
P 3950 3150
F 0 "R3" H 4020 3195 50  0000 L CNN
F 1 "4.7k" H 4020 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3880 3150 50  0001 C CNN
F 3 "~" H 3950 3150 50  0001 C CNN
	1    3950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3600 4150 3600
Wire Wire Line
	3950 3000 3950 2900
Connection ~ 3950 2900
Wire Wire Line
	4550 4250 4550 4350
Wire Wire Line
	3350 4850 4550 4850
Text Label 4450 4250 2    50   ~ 0
vs
Wire Wire Line
	3950 4050 3950 4250
Wire Wire Line
	3950 4250 4550 4250
Wire Wire Line
	4750 3450 3600 3450
Wire Wire Line
	3600 3450 3600 3850
Wire Wire Line
	3950 3600 3950 3650
Wire Wire Line
	3600 3850 3650 3850
$Comp
L Device:R R4
U 1 1 60855E73
P 4300 3600
F 0 "R4" V 4400 3600 50  0000 C CNN
F 1 "200k" V 4200 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4230 3600 50  0001 C CNN
F 3 "~" H 4300 3600 50  0001 C CNN
	1    4300 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 2900 4450 2900
Wire Wire Line
	3950 2900 3350 2900
$Comp
L Device:R R1
U 1 1 60855E6D
P 3350 3400
F 0 "R1" H 3420 3445 50  0000 L CNN
F 1 "100k" H 3420 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3280 3400 50  0001 C CNN
F 3 "~" H 3350 3400 50  0001 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2900 3350 3250
Wire Wire Line
	3350 3550 3350 3850
Text Label 3550 3850 2    50   ~ 0
vg1
$Comp
L Device:R R5
U 1 1 60592A8B
P 4550 4500
F 0 "R5" H 4620 4545 50  0000 L CNN
F 1 "1K" H 4620 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4480 4500 50  0001 C CNN
F 3 "~" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Connection ~ 4550 4250
Wire Wire Line
	4550 4850 4550 5150
Wire Wire Line
	4550 4650 4550 4850
$Comp
L Device:R R2
U 1 1 60855E6E
P 3350 4400
F 0 "R2" H 3420 4445 50  0000 L CNN
F 1 "100k" H 3420 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3280 4400 50  0001 C CNN
F 3 "~" H 3350 4400 50  0001 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
Connection ~ 3600 3850
Wire Wire Line
	3350 4550 3350 4850
Wire Wire Line
	3350 3850 3350 4250
Wire Wire Line
	3350 3850 3600 3850
Connection ~ 3350 3850
Text HLabel 3850 3500 0    50   Input ~ 0
VD1
Wire Wire Line
	3950 3300 3950 3500
Wire Wire Line
	3850 3500 3950 3500
Connection ~ 3950 3500
Wire Wire Line
	3950 3500 3950 3600
Wire Wire Line
	4400 2550 4450 2550
Wire Wire Line
	4450 2550 4450 2900
Connection ~ 4450 2900
Wire Wire Line
	4450 2900 5250 2900
Wire Wire Line
	5800 3850 6750 3850
Wire Wire Line
	6750 2900 6750 3250
Wire Wire Line
	6750 3850 6750 3550
Connection ~ 6750 3850
$Comp
L Device:Q_PMOS_GDS Q3
U 1 1 60855E74
P 8850 3000
F 0 "Q3" V 9192 3000 50  0000 C CNN
F 1 "FDD306P" V 9101 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 9050 3100 50  0001 C CNN
F 3 "~" H 8850 3000 50  0001 C CNN
F 4 "X" H 8850 3000 50  0001 C CNN "Spice_Primitive"
F 5 "FDD306P" H 8850 3000 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8850 3000 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "./FDD306P.lib" H 8850 3000 50  0001 C CNN "Spice_Lib_File"
F 8 "2 1 3" H 8850 3000 50  0001 C CNN "Spice_Node_Sequence"
	1    8850 3000
	0    1    -1   0   
$EndComp
Wire Wire Line
	6750 2900 8650 2900
Connection ~ 6750 2900
Wire Wire Line
	9050 2900 9200 2900
Wire Wire Line
	8850 3200 8850 3500
Wire Wire Line
	8850 3500 8500 3500
Text Label 7550 3500 0    50   ~ 0
VD1
Text Label 9800 2900 0    50   ~ 0
vload
Wire Wire Line
	10400 3650 10400 2900
Wire Wire Line
	10400 3950 10400 4850
$Comp
L Device:C C2
U 1 1 6076DAA7
P 9200 3200
F 0 "C2" H 9315 3246 50  0000 L CNN
F 1 "33nF" H 9315 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9238 3050 50  0001 C CNN
F 3 "~" H 9200 3200 50  0001 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3050 9200 2900
Connection ~ 9200 2900
Wire Wire Line
	9200 3350 9200 3500
Wire Wire Line
	9200 3500 8850 3500
Connection ~ 8850 3500
$Comp
L Device:R R9
U 1 1 60855E76
P 8350 3500
F 0 "R9" V 8143 3500 50  0000 C CNN
F 1 "1k" V 8234 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8280 3500 50  0001 C CNN
F 3 "~" H 8350 3500 50  0001 C CNN
	1    8350 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 3500 7550 3500
Wire Wire Line
	9200 2900 10400 2900
$Comp
L Device:C C3
U 1 1 60757828
P 10400 3800
F 0 "C3" H 10515 3846 50  0000 L CNN
F 1 "1uF" H 10515 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10438 3650 50  0001 C CNN
F 3 "~" H 10400 3800 50  0001 C CNN
	1    10400 3800
	1    0    0    -1  
$EndComp
Text HLabel 10250 2550 0    50   Input ~ 0
VLOAD
Wire Wire Line
	10250 2550 10400 2550
Wire Wire Line
	10400 2550 10400 2900
Connection ~ 10400 2900
Text HLabel 4400 2550 0    50   Input ~ 0
5V0
$Comp
L Device:C C1
U 1 1 6078F49F
P 2700 3850
F 0 "C1" H 2815 3896 50  0000 L CNN
F 1 "4.7uF" H 2815 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2738 3700 50  0001 C CNN
F 3 "~" H 2700 3850 50  0001 C CNN
	1    2700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3700 2700 2900
Wire Wire Line
	2700 2900 3350 2900
Connection ~ 3350 2900
Wire Wire Line
	2700 4000 2700 4850
Wire Wire Line
	2700 4850 3350 4850
Connection ~ 3350 4850
Text Notes 8000 3850 0    50   ~ 0
RC to slow turn-on of load switch\nand reduce inrush current
Text Notes 7150 6950 0    50   ~ 0
"On when warm"\nTurn on at -23 C when warming up\nTurn off at -31 C when cooling down
Text HLabel 7100 3850 2    50   Input ~ 0
Thermistor
Wire Wire Line
	6750 3850 7100 3850
Wire Wire Line
	4550 4850 10400 4850
Text Notes 7400 4350 2    50   ~ 0
Connect 10k thermistor to ground\nat the top level
$Comp
L power:GND #PWR0101
U 1 1 61437A2F
P 4550 5150
F 0 "#PWR0101" H 4550 4900 50  0001 C CNN
F 1 "GND" H 4555 4977 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
