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
Connection ~ 6750 3850
$Comp
L Device:R R7
U 1 1 60597D14
P 6750 4400
F 0 "R7" H 6820 4445 50  0000 L CNN
F 1 "5k" H 6820 4355 50  0000 L CNN
F 2 "" V 6680 4400 50  0001 C CNN
F 3 "~" H 6750 4400 50  0001 C CNN
	1    6750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3550 6750 3850
Wire Wire Line
	6750 3850 6750 4250
$Comp
L pspice:VSOURCE V2
U 1 1 60599322
P 6200 3850
F 0 "V2" H 6428 3895 50  0000 L CNN
F 1 "VSOURCE" H 6428 3805 50  0000 L CNN
F 2 "" H 6200 3850 50  0001 C CNN
F 3 "~" H 6200 3850 50  0001 C CNN
F 4 "V" H 6200 3850 50  0001 C CNN "Spice_Primitive"
F 5 "dc 0 ac 1 sin(0 300m 1k)" H 6200 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6200 3850 50  0001 C CNN "Spice_Netlist_Enabled"
	1    6200 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 3350 5250 3650
Wire Wire Line
	5550 3850 5900 3850
Text Label 5700 3850 2    50   ~ 0
vg2
Text Label 5250 3500 2    50   ~ 0
vd2
Wire Wire Line
	5250 2900 5250 3050
Connection ~ 5250 2900
$Comp
L Device:R R5
U 1 1 605937CE
P 5250 3200
F 0 "R5" H 5320 3245 50  0000 L CNN
F 1 "3.3k" H 5320 3155 50  0000 L CNN
F 2 "" V 5180 3200 50  0001 C CNN
F 3 "~" H 5250 3200 50  0001 C CNN
	1    5250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2900 5250 2900
Wire Wire Line
	4550 4250 5250 4250
Wire Wire Line
	5250 4250 5250 4050
Wire Wire Line
	4550 4250 4550 4350
Wire Wire Line
	4550 4850 6750 4850
Wire Wire Line
	6750 4850 6750 4550
$Comp
L Device:Q_NJFET_SGD Q2
U 1 1 60591A1B
P 5350 3850
F 0 "Q2" H 5541 3895 50  0000 L CNN
F 1 "Q_NJFET_SGD" H 5541 3805 50  0000 L CNN
F 2 "" H 5550 3950 50  0001 C CNN
F 3 "~" H 5350 3850 50  0001 C CNN
F 4 "J" H 5350 3850 50  0001 C CNN "Spice_Primitive"
F 5 "CPH3910" H 5350 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5350 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/Users/phdgc/KiCad-Spice-Library/Models/uncategorized/Bordodynovs Electronics Lib/cmp/standard.jft" H 5350 3850 50  0001 C CNN "Spice_Lib_File"
	1    5350 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 3250 6750 2900
$Comp
L Device:R R6
U 1 1 60597CF6
P 6750 3400
F 0 "R6" H 6820 3445 50  0000 L CNN
F 1 "20k" H 6820 3355 50  0000 L CNN
F 2 "" V 6680 3400 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3850 6750 3850
Wire Wire Line
	5250 2900 6750 2900
Wire Wire Line
	3950 2900 3350 2900
$Comp
L Device:R R1
U 1 1 60596F01
P 3350 3400
F 0 "R1" H 3420 3445 50  0000 L CNN
F 1 "20k" H 3420 3355 50  0000 L CNN
F 2 "" V 3280 3400 50  0001 C CNN
F 3 "~" H 3350 3400 50  0001 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3000 3950 2900
$Comp
L Device:R R3
U 1 1 6059315B
P 3950 3150
F 0 "R3" H 4020 3195 50  0000 L CNN
F 1 "3.3k" H 4020 3105 50  0000 L CNN
F 2 "" V 3880 3150 50  0001 C CNN
F 3 "~" H 3950 3150 50  0001 C CNN
	1    3950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3300 3950 3650
Text Label 3950 3500 2    50   ~ 0
vd1
Wire Wire Line
	3950 2900 4600 2900
Connection ~ 4600 2900
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
Connection ~ 3950 2900
Connection ~ 4550 4250
Connection ~ 4550 4850
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
$Comp
L Device:R R4
U 1 1 60592A8B
P 4550 4500
F 0 "R4" H 4620 4545 50  0000 L CNN
F 1 "2K" H 4620 4455 50  0000 L CNN
F 2 "" V 4480 4500 50  0001 C CNN
F 3 "~" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4650 4550 4850
Wire Wire Line
	3350 4850 4550 4850
Wire Wire Line
	3350 4550 3350 4850
Connection ~ 3350 4850
Wire Wire Line
	2450 2900 2450 3900
Wire Wire Line
	3350 2900 2450 2900
Wire Wire Line
	3350 2900 3350 3250
Connection ~ 3350 2900
Wire Wire Line
	3350 3550 3350 3850
Connection ~ 3350 3850
Text Label 4450 4250 2    50   ~ 0
vs
Wire Wire Line
	3950 4050 3950 4250
Wire Wire Line
	3350 3850 3350 4250
Wire Wire Line
	3350 3850 3650 3850
Wire Wire Line
	3950 4250 4550 4250
Text Label 3550 3850 2    50   ~ 0
vg1
Wire Wire Line
	2450 4850 3350 4850
Wire Wire Line
	2450 4500 2450 4850
$Comp
L Device:R R2
U 1 1 6059781E
P 3350 4400
F 0 "R2" H 3420 4445 50  0000 L CNN
F 1 "5k" H 3420 4355 50  0000 L CNN
F 2 "" V 3280 4400 50  0001 C CNN
F 3 "~" H 3350 4400 50  0001 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NJFET_SGD Q1
U 1 1 6058FE20
P 3850 3850
F 0 "Q1" H 4041 3895 50  0000 L CNN
F 1 "Q_NJFET_SGD" H 4041 3805 50  0000 L CNN
F 2 "" H 4050 3950 50  0001 C CNN
F 3 "~" H 3850 3850 50  0001 C CNN
F 4 "J" H 3850 3850 50  0001 C CNN "Spice_Primitive"
F 5 "CPH3910" H 3850 3850 50  0001 C CNN "Spice_Model"
F 6 "Y" H 3850 3850 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/Users/phdgc/KiCad-Spice-Library/Models/uncategorized/Bordodynovs Electronics Lib/cmp/standard.jft" H 3850 3850 50  0001 C CNN "Spice_Lib_File"
	1    3850 3850
	1    0    0    1   
$EndComp
$Comp
L pspice:VSOURCE V1
U 1 1 60595759
P 2450 4200
F 0 "V1" H 2678 4245 50  0000 L CNN
F 1 "VSOURCE" H 2678 4155 50  0000 L CNN
F 2 "" H 2450 4200 50  0001 C CNN
F 3 "~" H 2450 4200 50  0001 C CNN
F 4 "V" H 2450 4200 50  0001 C CNN "Spice_Primitive"
F 5 "dc 5" H 2450 4200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2450 4200 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2450 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
