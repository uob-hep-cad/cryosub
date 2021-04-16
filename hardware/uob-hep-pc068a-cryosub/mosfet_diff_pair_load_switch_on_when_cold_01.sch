EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Thermal Switch - On when warm"
Date "2021-04-12"
Rev "v0.1"
Comp "University of Bristol"
Comment1 "Copyright - CERN-OHL-S"
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
F 1 "6.6k" H 6820 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6680 3400 50  0001 C CNN
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
Text Notes 3800 1700 2    50   ~ 0
+pspice \n.TEMP 27\n.CONTROL \nOPTIONS ABSTOL=1nA CHGTOL=1pC ITL1=150 ITL2=150 ITL4=500 RELTOL=0.011\nset filetype=ascii\nset wr_vecnames\nset wr_singlescale\nwrdata tmp.txt V("/vd1") V("/vd2") V("/vcont") V("/vload")\n.ENDC\n* .IC V(/vd2)=2.0  V(/vd1)=4.5  
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
L Device:R R9
U 1 1 605C395B
P 4900 3450
F 0 "R9" V 5106 3450 50  0000 C CNN
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
L Device:R R8
U 1 1 605C5249
P 4300 3600
F 0 "R8" V 4400 3600 50  0000 C CNN
F 1 "20k" V 4200 3600 50  0000 C CNN
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
U 1 1 60596F01
P 3350 3400
F 0 "R1" H 3420 3445 50  0000 L CNN
F 1 "6.6k" H 3420 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3280 3400 50  0001 C CNN
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
L Device:R R2
U 1 1 6059781E
P 3350 4400
F 0 "R2" H 3420 4445 50  0000 L CNN
F 1 "10k" H 3420 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3280 4400 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 4350 50  0001 C CNN
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
Text Label 7350 3900 0    50   ~ 0
vtemp
Wire Wire Line
	6750 2900 6750 3250
Wire Wire Line
	6750 3850 6750 3550
Wire Wire Line
	6750 3850 6750 4050
Connection ~ 6750 3850
Wire Wire Line
	6750 4550 6750 4850
$Comp
L Device:Q_PMOS_GDS Q3
U 1 1 606E0DAA
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
	9800 2900 9800 3450
$Comp
L Device:R R6
U 1 1 606F8AF7
P 9800 3600
F 0 "R6" H 9870 3646 50  0000 L CNN
F 1 "5" H 9870 3555 50  0000 L CNN
F 2 "" V 9730 3600 50  0001 C CNN
F 3 "~" H 9800 3600 50  0001 C CNN
	1    9800 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND02
U 1 1 6066B092
P 7450 4750
F 0 "#GND02" H 7450 4650 50  0001 C CNN
F 1 "0" H 7450 4839 50  0000 C CNN
F 2 "" H 7450 4750 50  0001 C CNN
F 3 "~" H 7450 4750 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4600 7450 4600
Wire Wire Line
	6850 4600 6850 4550
Wire Wire Line
	7450 4600 7450 4750
Connection ~ 7450 4600
Wire Wire Line
	7450 4600 8050 4600
Wire Wire Line
	9800 4850 9800 3750
Connection ~ 6750 4850
Wire Wire Line
	8850 3200 8850 3500
Text Label 7200 3500 0    50   ~ 0
vd2
Text Label 9800 2900 0    50   ~ 0
vload
$Comp
L Device:C C2
U 1 1 60757828
P 10400 3800
F 0 "C2" H 10515 3846 50  0000 L CNN
F 1 "1uF" H 10515 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10438 3650 50  0001 C CNN
F 3 "~" H 10400 3800 50  0001 C CNN
	1    10400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3650 10400 2900
Wire Wire Line
	10400 2900 9800 2900
Connection ~ 9800 2900
Wire Wire Line
	10400 3950 10400 4850
Wire Wire Line
	10400 4850 9800 4850
Connection ~ 9800 4850
$Comp
L Device:C C1
U 1 1 6076DAA7
P 9200 3200
F 0 "C1" H 9315 3246 50  0000 L CNN
F 1 "30nF" H 9315 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 9238 3050 50  0001 C CNN
F 3 "~" H 9200 3200 50  0001 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3050 9200 2900
Connection ~ 9200 2900
Wire Wire Line
	9200 2900 9800 2900
Wire Wire Line
	9200 3350 9200 3500
Wire Wire Line
	9200 3500 8850 3500
$Comp
L Device:R R10
U 1 1 607712E1
P 8000 3500
F 0 "R10" V 7793 3500 50  0000 C CNN
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
L Device:D_Schottky D1
U 1 1 607B2AF9
P 7550 3500
F 0 "D1" H 7550 3283 50  0000 C CNN
F 1 "D_Schottky" H 7550 3374 50  0000 C CNN
F 2 "" H 7550 3500 50  0001 C CNN
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
L Device:R R11
U 1 1 607C3729
P 8850 4100
F 0 "R11" H 8920 4146 50  0000 L CNN
F 1 "100k" H 8920 4055 50  0000 L CNN
F 2 "" V 8780 4100 50  0001 C CNN
F 3 "~" H 8850 4100 50  0001 C CNN
	1    8850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4850 8850 4850
Wire Wire Line
	8150 3500 8450 3500
Connection ~ 8850 3500
Wire Wire Line
	8850 3950 8850 3500
Wire Wire Line
	8850 4250 8850 4850
Connection ~ 8850 4850
Wire Wire Line
	8850 4850 9800 4850
$Comp
L Device:R R?
U 1 1 607FC873
P 8000 3150
F 0 "R?" V 7793 3150 50  0000 C CNN
F 1 "1k" V 7884 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7930 3150 50  0001 C CNN
F 3 "~" H 8000 3150 50  0001 C CNN
	1    8000 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3150 7700 3150
$Comp
L Device:D_Schottky D?
U 1 1 607FC883
P 7550 3150
F 0 "D?" H 7550 2933 50  0000 C CNN
F 1 "D_Schottky" H 7550 3024 50  0000 C CNN
F 2 "" H 7550 3150 50  0001 C CNN
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
$Comp
L pspice:0 #GND?
U 1 1 6080CABD
P 10850 4850
F 0 "#GND?" H 10850 4750 50  0001 C CNN
F 1 "0" H 10850 4939 50  0000 C CNN
F 2 "" H 10850 4850 50  0001 C CNN
F 3 "~" H 10850 4850 50  0001 C CNN
	1    10850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 4850 10850 4500
Text Label 10850 4500 0    50   ~ 0
vcont
$EndSCHEMATC
