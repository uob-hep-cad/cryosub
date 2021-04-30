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
Text Notes 8350 2700 2    50   ~ 0
Use FDD306P as a load switch
$Comp
L Device:R R7
U 1 1 60597D14
P 6750 3400
F 0 "R7" H 6820 3445 50  0000 L CNN
F 1 "8.2k" H 6820 3355 50  0000 L CNN
F 2 "" V 6680 3400 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V2
U 1 1 60599322
P 8050 4300
F 0 "V2" H 8278 4345 50  0000 L CNN
F 1 "VSOURCE" H 8278 4255 50  0000 L CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "~" H 8050 4300 50  0001 C CNN
F 4 "V" H 8050 4300 50  0001 C CNN "Spice_Primitive"
F 5 "dc 270 ac 1 pulse(1 350 0 10 10 10 100)" H 8050 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8050 4300 50  0001 C CNN "Spice_Netlist_Enabled"
	1    8050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3350 5250 3450
Wire Wire Line
	5250 2900 6750 2900
Wire Wire Line
	5800 3600 5800 3850
Wire Wire Line
	4550 4850 6750 4850
Connection ~ 5800 3850
Wire Wire Line
	4450 3600 5800 3600
$Comp
L Transistor_FET:BSS127S Q2
U 1 1 605C1A8E
P 5350 3850
F 0 "Q2" H 5555 3895 50  0000 L CNN
F 1 "BSS127S" H 5555 3805 50  0000 L CNN
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
	2450 2900 2450 3900
Wire Wire Line
	3350 2900 2450 2900
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
Wire Wire Line
	2450 4850 3350 4850
Wire Wire Line
	2450 4500 2450 4850
Text Notes 2850 2650 2    50   ~ 0
+pspice \n.TEMP 27\n.CONTROL \nOPTIONS ABSTOL=1nA CHGTOL=1pC ITL1=150 ITL2=150 ITL4=500 RELTOL=0.011\nset filetype=ascii\nset wr_vecnames\nset wr_singlescale\nwrdata tmp.txt V("/vd1") V("/vd2") V("/vcont")\n.ENDC\n* .IC V(/vd2)=2.0  V(/vd1)=4.5  
Wire Wire Line
	5550 3850 5800 3850
Text Label 5700 3850 2    50   ~ 0
vg2
Wire Wire Line
	5250 3450 5250 3650
Connection ~ 5250 3450
$Comp
L Transistor_FET:BSS127S Q1
U 1 1 605BE7F9
P 3850 3850
F 0 "Q1" H 4055 3895 50  0000 L CNN
F 1 "BSS127S" H 4055 3805 50  0000 L CNN
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
L Device:R R5
U 1 1 605937CE
P 5250 3200
F 0 "R5" H 5320 3245 50  0000 L CNN
F 1 "4.7k" H 5320 3155 50  0000 L CNN
F 2 "" V 5180 3200 50  0001 C CNN
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
L Device:R R9
U 1 1 605C395B
P 4900 3450
F 0 "R9" V 5106 3450 50  0000 C CNN
F 1 "20k" V 5015 3450 50  0000 C CNN
F 2 "" V 4830 3450 50  0001 C CNN
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
F 2 "" V 3880 3150 50  0001 C CNN
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
L Device:R R8
U 1 1 605C5249
P 4300 3600
F 0 "R8" V 4400 3600 50  0000 C CNN
F 1 "20k" V 4200 3600 50  0000 C CNN
F 2 "" V 4230 3600 50  0001 C CNN
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
U 1 1 60596F01
P 3350 3400
F 0 "R1" H 3420 3445 50  0000 L CNN
F 1 "8.2k" H 3420 3355 50  0000 L CNN
F 2 "" V 3280 3400 50  0001 C CNN
F 3 "~" H 3350 3400 50  0001 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2900 3350 3250
Connection ~ 3350 2900
Wire Wire Line
	3350 3550 3350 3850
Text Label 3550 3850 2    50   ~ 0
vg1
$Comp
L Device:R R4
U 1 1 60592A8B
P 4550 4500
F 0 "R4" H 4620 4545 50  0000 L CNN
F 1 "1K" H 4620 4455 50  0000 L CNN
F 2 "" V 4480 4500 50  0001 C CNN
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
L Device:R R2
U 1 1 6059781E
P 3350 4400
F 0 "R2" H 3420 4445 50  0000 L CNN
F 1 "12k" H 3420 4355 50  0000 L CNN
F 2 "" V 3280 4400 50  0001 C CNN
F 3 "~" H 3350 4400 50  0001 C CNN
	1    3350 4400
	1    0    0    -1  
$EndComp
Connection ~ 3600 3850
Wire Wire Line
	3350 4550 3350 4850
Connection ~ 3350 4850
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
Text GLabel 4400 2550 0    50   Input ~ 0
5V0
Wire Wire Line
	4400 2550 4450 2550
Wire Wire Line
	4450 2550 4450 2900
Connection ~ 4450 2900
Wire Wire Line
	4450 2900 5250 2900
$Comp
L kicad_cryosub_simlib:SIM_NTC_10K_1 TH1
U 1 1 60628CDF
P 6750 4300
F 0 "TH1" H 6937 4346 50  0000 L CNN
F 1 "SIM_NTC_10K_1" H 6937 4255 50  0000 L CNN
F 2 "" H 6750 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
F 4 "X" H 6750 4300 50  0001 C CNN "Spice_Primitive"
F 5 "NTC_10K_1" H 6750 4300 50  0001 C CNN "Spice_Model"
F 6 "Y" H 6750 4300 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "./sim_ntc_10k_1.lib" H 6750 4300 50  0001 C CNN "Spice_Lib_File"
	1    6750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3850 6750 3850
Wire Wire Line
	6850 4050 6850 3900
Wire Wire Line
	6850 3900 8050 3900
Wire Wire Line
	8050 3900 8050 4000
Wire Wire Line
	8050 4600 8050 4700
Wire Wire Line
	8050 4700 7450 4700
Wire Wire Line
	6850 4700 6850 4550
Wire Wire Line
	7450 4700 7450 4850
Connection ~ 7450 4700
Wire Wire Line
	7450 4700 6850 4700
$Comp
L pspice:0 #GND02
U 1 1 6066B092
P 7450 4850
F 0 "#GND02" H 7450 4750 50  0001 C CNN
F 1 "0" H 7450 4939 50  0000 C CNN
F 2 "" H 7450 4850 50  0001 C CNN
F 3 "~" H 7450 4850 50  0001 C CNN
	1    7450 4850
	1    0    0    -1  
$EndComp
Text Label 7350 3900 0    50   ~ 0
vcont
Wire Wire Line
	6750 2900 6750 3250
Wire Wire Line
	6750 3850 6750 3550
Wire Wire Line
	6750 3850 6750 4050
Connection ~ 6750 3850
Wire Wire Line
	6750 4550 6750 4850
Text Notes 1450 5350 0    50   ~ 0
Switch at 20 deg C
$EndSCHEMATC
