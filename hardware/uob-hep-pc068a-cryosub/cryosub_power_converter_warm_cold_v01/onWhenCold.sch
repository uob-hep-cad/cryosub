EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8350 2700 2    50   ~ 0
Use PMOS as a load switch
$Comp
L Device:R R17
U 1 1 60597D14
P 6750 3400
F 0 "R17" H 6820 3445 50  0000 L CNN
F 1 "10k" H 6820 3355 50  0000 L CNN
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
L Transistor_FET:BSS127S Q5
U 1 1 605C1A8E
P 5350 3850
F 0 "Q5" H 5555 3895 50  0000 L CNN
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
L Transistor_FET:BSS127S Q4
U 1 1 605BE7F9
P 3850 3850
F 0 "Q4" H 4055 3895 50  0000 L CNN
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
L Device:R R16
U 1 1 60855E6B
P 5250 3200
F 0 "R16" H 5320 3245 50  0000 L CNN
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
L Device:R R15
U 1 1 605C395B
P 4900 3450
F 0 "R15" V 5106 3450 50  0000 C CNN
F 1 "20k" V 5015 3450 50  0000 C CNN
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
L Device:R R12
U 1 1 60855E6A
P 3950 3150
F 0 "R12" H 4020 3195 50  0000 L CNN
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
L Device:R R13
U 1 1 605C5249
P 4300 3600
F 0 "R13" V 4400 3600 50  0000 C CNN
F 1 "20k" V 4200 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4230 3600 50  0001 C CNN
F 3 "~" H 4300 3600 50  0001 C CNN
	1    4300 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 2900 4450 2900
$Comp
L Device:R R10
U 1 1 60596F01
P 3350 3400
F 0 "R10" H 3420 3445 50  0000 L CNN
F 1 "10k" H 3420 3355 50  0000 L CNN
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
L Device:R R14
U 1 1 60855E69
P 4550 4500
F 0 "R14" H 4620 4545 50  0000 L CNN
F 1 "1K" H 4620 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4480 4500 50  0001 C CNN
F 3 "~" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Connection ~ 4550 4250
Wire Wire Line
	4550 4850 4550 5150
$Comp
L pspice:0 #GND01
U 1 1 605963CD
P 4550 5150
F 0 "#GND01" H 4550 5050 50  0001 C CNN
F 1 "0" H 4550 5238 50  0000 C CNN
F 2 "" H 4550 5150 50  0001 C CNN
F 3 "~" H 4550 5150 50  0001 C CNN
	1    4550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4650 4550 4850
$Comp
L Device:R R11
U 1 1 6059781E
P 3350 4400
F 0 "R11" H 3420 4445 50  0000 L CNN
F 1 "10k" H 3420 4355 50  0000 L CNN
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
L Device:Q_PMOS_GDS Q6
U 1 1 606E0DAA
P 8850 3000
F 0 "Q6" V 9192 3000 50  0000 C CNN
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
Text Label 7200 3500 0    50   ~ 0
vd2
Text Label 9800 2900 0    50   ~ 0
vload
$Comp
L Device:C C5
U 1 1 60855E75
P 9200 3200
F 0 "C5" H 9315 3246 50  0000 L CNN
F 1 "30nF" H 9315 3155 50  0000 L CNN
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
$Comp
L Device:R R19
U 1 1 607712E1
P 8000 3500
F 0 "R19" V 7793 3500 50  0000 C CNN
F 1 "1k" V 7884 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7930 3500 50  0001 C CNN
F 3 "~" H 8000 3500 50  0001 C CNN
	1    8000 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3500 7700 3500
Wire Wire Line
	3950 3300 3950 3600
Text Label 3950 3550 0    50   ~ 0
vd1
$Comp
L Device:D_Schottky D5
U 1 1 607B2AF9
P 7550 3500
F 0 "D5" H 7550 3283 50  0000 C CNN
F 1 "RB751V40T1G" H 7550 3374 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 7550 3500 50  0001 C CNN
F 3 "~" H 7550 3500 50  0001 C CNN
F 4 "D" H 7550 3500 50  0001 C CNN "Spice_Primitive"
F 5 "rb751v40t1g" H 7550 3500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 3500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "RB751V40T1G.lib" H 7550 3500 50  0001 C CNN "Spice_Lib_File"
F 8 "2 1" H 7550 3500 50  0001 C CNN "Spice_Node_Sequence"
	1    7550 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 3500 7200 3500
Text Label 8650 3500 0    50   ~ 0
vg3
$Comp
L Device:R R20
U 1 1 607C3729
P 8850 4100
F 0 "R20" H 8920 4146 50  0000 L CNN
F 1 "100k" H 8920 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8780 4100 50  0001 C CNN
F 3 "~" H 8850 4100 50  0001 C CNN
	1    8850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3500 8450 3500
Connection ~ 8850 3500
Wire Wire Line
	8850 3950 8850 3500
Wire Wire Line
	8850 4250 8850 4850
$Comp
L Device:R R18
U 1 1 607FC873
P 8000 3150
F 0 "R18" V 7793 3150 50  0000 C CNN
F 1 "1k" V 7884 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7930 3150 50  0001 C CNN
F 3 "~" H 8000 3150 50  0001 C CNN
	1    8000 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3150 7700 3150
$Comp
L Device:D_Schottky D4
U 1 1 607FC883
P 7550 3150
F 0 "D4" H 7550 2933 50  0000 C CNN
F 1 "RB751V40T1G" H 7550 3024 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 7550 3150 50  0001 C CNN
F 3 "~" H 7550 3150 50  0001 C CNN
F 4 "D" H 7550 3150 50  0001 C CNN "Spice_Primitive"
F 5 "rb751v40t1g" H 7550 3150 50  0001 C CNN "Spice_Model"
F 6 "Y" H 7550 3150 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "RB751V40T1G.lib" H 7550 3150 50  0001 C CNN "Spice_Lib_File"
F 8 "2 1" H 7550 3150 50  0001 C CNN "Spice_Node_Sequence"
	1    7550 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 3150 7200 3150
Wire Wire Line
	8150 3150 8450 3150
Wire Wire Line
	8450 3150 8450 3500
Connection ~ 8450 3500
Wire Wire Line
	8450 3500 8850 3500
Text HLabel 7200 3150 0    50   Input ~ 0
vcont
Text HLabel 10400 2900 2    50   Input ~ 0
vload
Text HLabel 4400 2550 0    50   Input ~ 0
5v0
Wire Wire Line
	9200 2900 10400 2900
Wire Wire Line
	6750 3850 6750 3950
$Comp
L Device:C C4
U 1 1 609CCEB1
P 2750 3900
F 0 "C4" H 2865 3946 50  0000 L CNN
F 1 "1uF" H 2865 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2788 3750 50  0001 C CNN
F 3 "~" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3750 2750 2900
Wire Wire Line
	2750 2900 3350 2900
Connection ~ 3350 2900
Wire Wire Line
	3350 2900 3950 2900
Wire Wire Line
	2750 4850 3350 4850
Connection ~ 3350 4850
Wire Wire Line
	3350 4850 4550 4850
Wire Wire Line
	2750 4050 2750 4850
Text Notes 7150 6950 0    50   ~ 0
"On when cold"\nTurns off at 29 C when warming from cold\nTurns on at 19 C when cooling
Wire Wire Line
	6750 3950 7300 3950
Text HLabel 7300 3950 2    50   Input ~ 0
Thermistor
Wire Wire Line
	4550 4850 8850 4850
$EndSCHEMATC
