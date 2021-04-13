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
L Device:Q_PMOS_GDS Q1
U 1 1 606E2F91
P 5000 2800
F 0 "Q1" V 5342 2800 50  0000 C CNN
F 1 "Q_PMOS_GDS" V 5251 2800 50  0000 C CNN
F 2 "" H 5200 2900 50  0001 C CNN
F 3 "~" H 5000 2800 50  0001 C CNN
F 4 "X" H 5000 2800 50  0001 C CNN "Spice_Primitive"
F 5 "FDD306P" H 5000 2800 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5000 2800 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/data/OneDrive/phdgc/DUNE/cryosub-github/hardware/uob-hep-pc068a-cryosub/FDD306P.lib" H 5000 2800 50  0001 C CNN "Spice_Lib_File"
	1    5000 2800
	0    1    -1   0   
$EndComp
$Comp
L Simulation_SPICE:VDC V1
U 1 1 606E4882
P 3700 3400
F 0 "V1" H 3830 3491 50  0000 L CNN
F 1 "VDC" H 3830 3400 50  0000 L CNN
F 2 "" H 3700 3400 50  0001 C CNN
F 3 "~" H 3700 3400 50  0001 C CNN
F 4 "Y" H 3700 3400 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 3700 3400 50  0001 L CNN "Spice_Primitive"
F 6 "dc 5" H 3830 3309 50  0000 L CNN "Spice_Model"
	1    3700 3400
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VPULSE V2
U 1 1 606E59EE
P 5000 3600
F 0 "V2" H 5130 3691 50  0000 L CNN
F 1 "VPULSE" H 5130 3600 50  0000 L CNN
F 2 "" H 5000 3600 50  0001 C CNN
F 3 "~" H 5000 3600 50  0001 C CNN
F 4 "Y" H 5000 3600 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 5000 3600 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 5 0 10 10 20 40)" H 5130 3509 50  0000 L CNN "Spice_Model"
	1    5000 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 606E63B4
P 6850 3500
F 0 "R1" H 6920 3546 50  0000 L CNN
F 1 "5" H 6920 3455 50  0000 L CNN
F 2 "" V 6780 3500 50  0001 C CNN
F 3 "~" H 6850 3500 50  0001 C CNN
	1    6850 3500
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0101
U 1 1 606E6AEE
P 5000 4400
F 0 "#GND0101" H 5000 4300 50  0001 C CNN
F 1 "0" H 5000 4489 50  0000 C CNN
F 2 "" H 5000 4400 50  0001 C CNN
F 3 "~" H 5000 4400 50  0001 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3000 5000 3400
Wire Wire Line
	5000 3800 5000 4100
Wire Wire Line
	3700 3200 3700 2700
Wire Wire Line
	3700 2700 4800 2700
Wire Wire Line
	3700 3600 3700 4100
Wire Wire Line
	3700 4100 5000 4100
Connection ~ 5000 4100
Wire Wire Line
	5000 4100 5000 4400
Wire Wire Line
	6850 3650 6850 4100
Wire Wire Line
	6850 4100 5000 4100
Wire Wire Line
	5200 2700 6850 2700
Wire Wire Line
	6850 2700 6850 3350
Text Label 4350 2700 0    50   ~ 0
vdd
Text Label 6050 2700 0    50   ~ 0
vload
Text Label 5000 3200 0    50   ~ 0
vcont
$EndSCHEMATC
