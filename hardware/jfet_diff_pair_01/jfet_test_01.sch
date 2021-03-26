EESchema Schematic File Version 5
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
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Wire Wire Line
	3950 2900 4600 2900
Connection ~ 3950 2900
$Comp
L power:VDD #PWR01
U 1 1 605943EC
P 4600 2800
F 0 "#PWR01" H 4600 2650 50  0001 C CNN
F 1 "VDD" H 4615 2973 50  0000 C CNN
F 2 "" H 4600 2800 50  0001 C CNN
F 3 "" H 4600 2800 50  0001 C CNN
	1    4600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2800 4600 2900
Wire Wire Line
	3950 2900 3950 3650
Connection ~ 3350 4850
Wire Wire Line
	4550 4250 4550 4350
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
Connection ~ 4550 4850
Wire Wire Line
	3350 4850 4550 4850
Wire Wire Line
	4550 4650 4550 4850
$Comp
L Device:R R4
U 1 1 60592A8B
P 4550 4500
F 0 "R4" H 4620 4545 50  0000 L CNN
F 1 "1.5k" H 4620 4455 50  0000 L CNN
F 2 "" V 4480 4500 50  0001 C CNN
F 3 "~" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4850 3350 4850
Wire Wire Line
	2450 4500 2450 4850
$Comp
L pspice:VSOURCE V1
U 1 1 60595759
P 2450 4200
F 0 "V1" H 2678 4245 50  0000 L CNN
F 1 "VSOURCE" H 2678 4155 50  0000 L CNN
F 2 "" H 2450 4200 50  0001 C CNN
F 3 "~" H 2450 4200 50  0001 C CNN
F 4 "V" H 2450 4200 50  0001 C CNN "Spice_Primitive"
F 5 "dc 10" H 2450 4200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2450 4200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3850 3350 4500
Wire Wire Line
	3350 4500 3350 4850
Wire Wire Line
	3950 4050 3950 4250
Wire Wire Line
	2450 2900 2450 3900
Wire Wire Line
	3350 3850 3650 3850
Wire Wire Line
	2450 2900 3950 2900
Wire Wire Line
	3950 4250 4550 4250
$Comp
L Device:Q_NJFET_SGD Q1
U 1 1 6058FE20
P 3850 3850
F 0 "Q1" H 4041 3895 50  0000 L CNN
F 1 "Q_NJFET_SGD" H 4041 3805 50  0000 L CNN
F 2 "" H 4050 3950 50  0001 C CNN
F 3 "~" H 3850 3850 50  0001 C CNN
F 4 "J" H 3850 3850 50  0001 C CNN "Spice_Primitive"
F 5 "MMBFJ201" H 3850 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3850 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/Users/phdgc/Downloads/MMBFJ201.lib" H 3850 3850 50  0001 C CNN "Spice_Lib_File"
F 8 "132" H 3850 3850 50  0001 C CNN "Spice_Node_Sequence"
	1    3850 3850
	1    0    0    1   
$EndComp
$EndSCHEMATC
