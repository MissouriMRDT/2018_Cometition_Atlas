EESchema Schematic File Version 2
LIBS:DrillBoard-Hardware-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MRDT_Actives
LIBS:MRDT_Connectors
LIBS:MRDT_Devices
LIBS:MRDT_Drill_Holes
LIBS:MRDT_Headers
LIBS:MRDT_ICs
LIBS:MRDT_Passives
LIBS:MRDT_Shields
LIBS:MRDT_Silkscreens
LIBS:MRDT_Switches
LIBS:DrillBoard-Hardware-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Science Drillboard"
Date "2018-03-18"
Rev "1"
Comp "Missouri University of Science and Technology"
Comment1 "Mars Rover Design Team"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VNH5019A-E U2
U 1 1 5AA58283
P 2550 7200
F 0 "U2" H 2600 5850 60  0000 C CNN
F 1 "VNH5019A-E" H 3150 8650 60  0000 C CNN
F 2 "MRDT_ICs:MultiPowerSO_30" H 2550 7200 60  0001 C CNN
F 3 "" H 2550 7200 60  0001 C CNN
	1    2550 7200
	1    0    0    -1  
$EndComp
$Comp
L VNH5019A-E U1
U 1 1 5AA582EF
P 2550 5100
F 0 "U1" H 2600 2950 60  0000 C CNN
F 1 "VNH5019A-E" H 3150 6550 60  0000 C CNN
F 2 "MRDT_ICs:MultiPowerSO_30" H 2550 5100 60  0001 C CNN
F 3 "" H 2550 5100 60  0001 C CNN
	1    2550 5100
	1    0    0    -1  
$EndComp
Text GLabel 4100 4600 2    60   Input ~ 0
+12V
Text GLabel 4100 6700 2    60   Input ~ 0
+12V
Text GLabel 3550 7450 3    60   UnSpc ~ 0
GND
Text GLabel 3500 5350 3    60   UnSpc ~ 0
GND
$Comp
L Anderson-2 C7
U 1 1 5AA58F86
P 4450 4200
F 0 "C7" H 4500 4150 60  0000 C CNN
F 1 "Anderson-2" H 4550 4700 60  0000 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horisontal_Side_by_Side" H 4500 3650 60  0001 C CNN
F 3 "" H 4500 3650 60  0001 C CNN
	1    4450 4200
	1    0    0    -1  
$EndComp
$Comp
L Anderson-2 C8
U 1 1 5AA59025
P 4450 6300
F 0 "C8" H 4500 6250 60  0000 C CNN
F 1 "Anderson-2" H 4550 6800 60  0000 C CNN
F 2 "MRDT_Connectors:Anderson_2_Horisontal_Side_by_Side" H 4500 5750 60  0001 C CNN
F 3 "" H 4500 5750 60  0001 C CNN
	1    4450 6300
	1    0    0    -1  
$EndComp
Text Notes 4300 3650 0    60   ~ 0
Motor 1
Text Notes 4300 5700 0    60   ~ 0
Motor 2
Text GLabel 8250 1200 0    60   Output ~ 0
PWM2
Text GLabel 9150 1700 2    60   Input ~ 0
Encoder1_PWM
Text GLabel 9150 1600 2    60   Input ~ 0
Encoder2_PWM
Text Notes 9900 1650 0    60   ~ 0
PD1-PA3
Text Notes 9900 1750 0    60   ~ 0
PD0-PA2
Text Notes 6150 2850 0    60   ~ 0
Independant/Parallel
Text GLabel 6250 3050 0    60   Input ~ 0
PWM1
Text GLabel 7000 3050 2    60   Input ~ 0
PWM2
$Comp
L OKI U3
U 1 1 5AA5A472
P 2700 2600
F 0 "U3" H 2550 2350 60  0001 C CNN
F 1 "OKI" H 2850 2950 60  0000 C CNN
F 2 "MRDT_Devices:OKI_Horisontal" H 2450 2500 60  0001 C CNN
F 3 "" H 2450 2500 60  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AA5A5BB
P 2250 2350
F 0 "C2" V 2100 2300 50  0000 L CNN
F 1 "10u" V 2200 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2288 2200 50  0001 C CNN
F 3 "" H 2250 2350 50  0001 C CNN
	1    2250 2350
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 5AA5A657
P 2250 2550
F 0 "C12" V 2400 2500 50  0000 L CNN
F 1 "10u" V 2300 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2288 2400 50  0001 C CNN
F 3 "" H 2250 2550 50  0001 C CNN
	1    2250 2550
	0    1    1    0   
$EndComp
Text GLabel 1850 2450 0    60   UnSpc ~ 0
GND
Text GLabel 2600 2750 2    60   Output ~ 0
+3V3
Text GLabel 6600 1200 2    60   UnSpc ~ 0
GND
Text GLabel 9150 1100 2    60   UnSpc ~ 0
GND
Text GLabel 5700 1100 0    60   Input ~ 0
+3V3
$Comp
L Anderson_3 C1
U 1 1 5AA5A2E6
P 2700 1900
F 0 "C1" H 2750 1850 60  0000 C CNN
F 1 "Anderson_3" H 2850 2650 60  0000 C CNN
F 2 "MRDT_Connectors:Anderson_3_Horisontal_Side_by_Side" H 2750 1350 60  0001 C CNN
F 3 "" H 2750 1350 60  0001 C CNN
	1    2700 1900
	1    0    0    -1  
$EndComp
Text GLabel 1200 1300 0    60   Output ~ 0
+12V
Text Notes 7500 1150 0    60   ~ 0
PF1-PG1
Text GLabel 8250 1100 0    60   Output ~ 0
PWM1
$Comp
L 3P1T_Fused SW1
U 1 1 5AA5E3EE
P 6250 3500
F 0 "SW1" H 6350 3450 60  0000 C CNN
F 1 "3P1T_Fused" H 6650 4100 60  0000 C CNN
F 2 "MRDT_Switches:3P1T_Switch" H 6250 3500 60  0001 C CNN
F 3 "" H 6250 3500 60  0001 C CNN
	1    6250 3500
	1    0    0    -1  
$EndComp
Text GLabel 2050 4650 0    60   Input ~ 0
PWM1
Text GLabel 2050 6750 0    60   Input ~ 0
PWM2
Text GLabel 2350 6550 0    60   Input ~ 0
+3V3
Text GLabel 2350 6950 0    60   Input ~ 0
+3V3
Text GLabel 2350 4450 0    60   Input ~ 0
+3V3
Text GLabel 2350 4850 0    60   Input ~ 0
+3V3
Wire Wire Line
	3500 5300 3500 5350
Connection ~ 3400 5300
Wire Wire Line
	2900 7400 3550 7400
Wire Wire Line
	3550 7400 3550 7450
Wire Wire Line
	2400 2350 2500 2350
Wire Wire Line
	2400 2550 2500 2550
Wire Wire Line
	2450 1550 2450 2350
Connection ~ 2450 2350
Wire Wire Line
	1850 2450 2500 2450
Wire Wire Line
	2100 2350 2100 2550
Connection ~ 2100 2450
Wire Wire Line
	2000 2450 2000 1800
Connection ~ 2000 2450
Wire Wire Line
	2450 2550 2450 3000
Wire Wire Line
	2450 2750 2600 2750
Connection ~ 2450 2550
Connection ~ 3300 5300
Wire Wire Line
	3950 3700 3950 4000
Connection ~ 3950 3800
Connection ~ 3950 5900
Wire Wire Line
	3950 5800 3950 6100
Connection ~ 3950 6000
Wire Wire Line
	3950 6200 3950 6500
Connection ~ 3950 6300
Connection ~ 3950 6400
Wire Wire Line
	3950 6600 3950 7000
Connection ~ 3950 6700
Connection ~ 3950 6800
Connection ~ 3950 6900
Wire Wire Line
	3950 4500 3950 4900
Wire Wire Line
	3950 4100 3950 4400
Connection ~ 3950 3900
Connection ~ 3950 4200
Connection ~ 3950 4300
Connection ~ 3950 4600
Connection ~ 3950 4700
Connection ~ 3950 4800
Wire Wire Line
	2900 5300 3500 5300
Connection ~ 3200 5300
Connection ~ 3100 5300
Connection ~ 3000 5300
Connection ~ 3400 7400
Connection ~ 3300 7400
Connection ~ 3200 7400
Connection ~ 3100 7400
Connection ~ 3000 7400
Wire Wire Line
	4350 3850 4350 3800
Wire Wire Line
	4350 3800 3950 3800
Wire Wire Line
	4350 4100 4350 4200
Wire Wire Line
	4350 4200 3950 4200
Wire Wire Line
	4350 6200 4350 6300
Wire Wire Line
	4350 6300 3950 6300
Wire Wire Line
	4350 5950 4350 5900
Wire Wire Line
	4350 5900 3950 5900
$Comp
L R R2
U 1 1 5AA63460
P 2200 4650
F 0 "R2" V 2280 4650 50  0000 C CNN
F 1 "1K" V 2200 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 4650 50  0001 C CNN
F 3 "" H 2200 4650 50  0001 C CNN
	1    2200 4650
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5AA63587
P 2200 6750
F 0 "R5" V 2280 6750 50  0000 C CNN
F 1 "1K" V 2200 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 6750 50  0001 C CNN
F 3 "" H 2200 6750 50  0001 C CNN
	1    2200 6750
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5AA63773
P 2200 6450
F 0 "R4" V 2100 6450 50  0000 C CNN
F 1 "1K" V 2200 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 6450 50  0001 C CNN
F 3 "" H 2200 6450 50  0001 C CNN
	1    2200 6450
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AA637B2
P 2200 7050
F 0 "R6" V 2280 7050 50  0000 C CNN
F 1 "1K" V 2200 7050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 7050 50  0001 C CNN
F 3 "" H 2200 7050 50  0001 C CNN
	1    2200 7050
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5AA63832
P 2200 4950
F 0 "R3" V 2280 4950 50  0000 C CNN
F 1 "1K" V 2200 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 4950 50  0001 C CNN
F 3 "" H 2200 4950 50  0001 C CNN
	1    2200 4950
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5AA639F0
P 2200 4350
F 0 "R1" V 2100 4350 50  0000 C CNN
F 1 "1K" V 2200 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 4350 50  0001 C CNN
F 3 "" H 2200 4350 50  0001 C CNN
	1    2200 4350
	0    1    1    0   
$EndComp
Text GLabel 2050 4350 0    60   Input ~ 0
IN_A1
Text GLabel 2050 4950 0    60   Input ~ 0
IN_B1
Text GLabel 2050 6450 0    60   Input ~ 0
IN_A2
Text GLabel 2050 7050 0    60   Input ~ 0
IN_B2
Text GLabel 6250 3250 0    60   Input ~ 0
IN_A1
Text GLabel 6250 3450 0    60   Input ~ 0
IN_B1
Text GLabel 7000 3250 2    60   Input ~ 0
IN_A2
Text GLabel 7000 3450 2    60   Input ~ 0
IN_B2
Text GLabel 2350 4550 0    60   Input ~ 0
+3V3
Text GLabel 2350 6650 0    60   Input ~ 0
+3V3
Text GLabel 8250 1700 0    60   Output ~ 0
IN_A1
Text GLabel 8250 1800 0    60   Output ~ 0
IN_A2
Text GLabel 9150 1300 2    60   Output ~ 0
IN_B1
Text GLabel 9150 1400 2    60   Output ~ 0
IN_B2
Text Notes 7500 1750 0    60   ~ 0
PL0-PH0
Text Notes 7500 1850 0    60   ~ 0
PL1-PH1
Text Notes 9500 1350 0    60   ~ 0
PH2-PP5
Text Notes 9500 1450 0    60   ~ 0
PH3-PA7
Text Notes 7500 1250 0    60   ~ 0
PF2-PK4
$Comp
L C C4
U 1 1 5AA66688
P 1250 1450
F 0 "C4" H 1275 1550 50  0000 L CNN
F 1 ".1u" H 1275 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1288 1300 50  0001 C CNN
F 3 "" H 1250 1450 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1600 1750 1600
Wire Wire Line
	1750 1600 1750 1700
Text GLabel 1750 1700 3    60   UnSpc ~ 0
GND
$Comp
L Picoblade_3 U7
U 1 1 5AA67B2B
P 9700 4900
F 0 "U7" H 9750 4850 60  0001 C CNN
F 1 "Picoblade-3" H 9750 5250 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Vertical" H 9700 4900 60  0001 C CNN
F 3 "" H 9700 4900 60  0001 C CNN
	1    9700 4900
	1    0    0    -1  
$EndComp
$Comp
L Picoblade_3 U8
U 1 1 5AA67B79
P 9700 5350
F 0 "U8" H 9750 5300 60  0001 C CNN
F 1 "Picoblade-3" H 9750 5700 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3_Vertical" H 9700 5350 60  0001 C CNN
F 3 "" H 9700 5350 60  0001 C CNN
	1    9700 5350
	1    0    0    -1  
$EndComp
Text GLabel 9500 4650 0    60   Input ~ 0
+3V3
Text GLabel 9500 5100 0    60   Input ~ 0
+3V3
Text GLabel 9500 4850 0    60   UnSpc ~ 0
GND
Text GLabel 9500 5300 0    60   UnSpc ~ 0
GND
Text GLabel 9500 4750 0    60   Output ~ 0
Encoder1_PWM
Text GLabel 9500 5200 0    60   Output ~ 0
Encoder2_PWM
Text GLabel 5700 1300 0    60   Input ~ 0
RX
Text GLabel 5700 1400 0    60   Output ~ 0
TX
Text Notes 4950 1400 0    60   ~ 0
Serial (7/6)
$Comp
L TM4C129E_Launchpad_X9 U6
U 1 1 5AA5C9A5
P 5900 2050
F 0 "U6" H 6000 2000 60  0001 C CNN
F 1 "TM4C129E_Launchpad_X9" H 6400 1950 60  0000 C CNN
F 2 "MRDT_Shields:TM4C129E_Launchpad_X9" H 6050 6050 60  0001 C CNN
F 3 "" H 6050 6050 60  0001 C CNN
	1    5900 2050
	1    0    0    -1  
$EndComp
Text Notes 9300 4450 0    60   ~ 0
Encoders
Text Notes 2300 1000 0    60   ~ 0
Power
Wire Wire Line
	1200 1300 2600 1300
Wire Wire Line
	2600 1550 2450 1550
Wire Wire Line
	2000 1800 2600 1800
Text Label 4000 5900 0    60   ~ 0
Out_A2
Text Label 4000 6300 0    60   ~ 0
Out_B2
Text Label 4000 3800 0    60   ~ 0
Out_A1
Text Label 4000 4200 0    60   ~ 0
Out_B1
Text Label 2450 2150 0    60   ~ 0
12V_Logic
Wire Wire Line
	4100 4600 3950 4600
Wire Wire Line
	3950 6700 4100 6700
Text Notes 6200 4250 0    60   ~ 0
Limit Switch
$Comp
L Molex_SL_2 U4
U 1 1 5AB7FF82
P 6700 4600
F 0 "U4" H 6750 4550 60  0001 C CNN
F 1 "LS_1" H 6750 4850 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 6700 4500 60  0001 C CNN
F 3 "" H 6700 4500 60  0001 C CNN
	1    6700 4600
	1    0    0    -1  
$EndComp
$Comp
L Molex_SL_2 U5
U 1 1 5AB7FFC4
P 6700 5150
F 0 "U5" H 6750 5100 60  0001 C CNN
F 1 "LS_2" H 6750 5400 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 6700 5050 60  0001 C CNN
F 3 "" H 6700 5050 60  0001 C CNN
	1    6700 5150
	1    0    0    -1  
$EndComp
$Comp
L Molex_SL_2 U9
U 1 1 5AB8001F
P 6700 5700
F 0 "U9" H 6750 5650 60  0001 C CNN
F 1 "LS_3" H 6750 5950 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 6700 5600 60  0001 C CNN
F 3 "" H 6700 5600 60  0001 C CNN
	1    6700 5700
	1    0    0    -1  
$EndComp
$Comp
L Molex_SL_2 U10
U 1 1 5AB8005A
P 6700 6250
F 0 "U10" H 6750 6200 60  0001 C CNN
F 1 "LS_4" H 6750 6500 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Vertical" H 6700 6150 60  0001 C CNN
F 3 "" H 6700 6150 60  0001 C CNN
	1    6700 6250
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5AB802DD
P 6300 4550
F 0 "R7" V 6380 4550 50  0000 C CNN
F 1 "10K" V 6300 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 4550 50  0001 C CNN
F 3 "" H 6300 4550 50  0001 C CNN
	1    6300 4550
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5AB803C5
P 6300 5100
F 0 "R8" V 6380 5100 50  0000 C CNN
F 1 "10K" V 6300 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 5100 50  0001 C CNN
F 3 "" H 6300 5100 50  0001 C CNN
	1    6300 5100
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5AB8040F
P 6300 5650
F 0 "R9" V 6380 5650 50  0000 C CNN
F 1 "10K" V 6300 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 5650 50  0001 C CNN
F 3 "" H 6300 5650 50  0001 C CNN
	1    6300 5650
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5AB8045E
P 6300 6200
F 0 "R10" V 6380 6200 50  0000 C CNN
F 1 "10K" V 6300 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 6200 50  0001 C CNN
F 3 "" H 6300 6200 50  0001 C CNN
	1    6300 6200
	0    1    1    0   
$EndComp
Text GLabel 6500 4450 0    60   Input ~ 0
+3V3
Text GLabel 6500 5000 0    60   Input ~ 0
+3V3
Text GLabel 6500 5550 0    60   Input ~ 0
+3V3
Text GLabel 6500 6100 0    60   Input ~ 0
+3V3
Text GLabel 6150 4550 0    60   UnSpc ~ 0
GND
Text GLabel 6550 4700 2    60   Output ~ 0
LS_1
Wire Wire Line
	6550 4700 6500 4700
Wire Wire Line
	6500 4700 6500 4550
Wire Wire Line
	6500 4550 6450 4550
Text GLabel 6550 5250 2    60   Output ~ 0
LS_2
Text GLabel 6550 5800 2    60   Output ~ 0
LS_3
Text GLabel 6550 6350 2    60   Output ~ 0
LS_4
Wire Wire Line
	6450 5100 6500 5100
Wire Wire Line
	6500 5100 6500 5250
Wire Wire Line
	6500 5250 6550 5250
Wire Wire Line
	6450 5650 6500 5650
Wire Wire Line
	6500 5650 6500 5800
Wire Wire Line
	6500 5800 6550 5800
Wire Wire Line
	6450 6200 6500 6200
Wire Wire Line
	6500 6200 6500 6350
Wire Wire Line
	6500 6350 6550 6350
Text GLabel 6150 5100 0    60   UnSpc ~ 0
GND
Text GLabel 6150 5650 0    60   UnSpc ~ 0
GND
Text GLabel 6150 6200 0    60   UnSpc ~ 0
GND
Text GLabel 6600 1600 2    60   Input ~ 0
LS_1
Text GLabel 6600 1500 2    60   Input ~ 0
LS_2
Text GLabel 6600 1400 2    60   Input ~ 0
LS_3
Text GLabel 6600 1300 2    60   Input ~ 0
LS_4
Text Notes 6900 1350 0    60   ~ 0
PE0-PB4
Text Notes 6900 1450 0    60   ~ 0
PE1-PB5
Text Notes 6900 1550 0    60   ~ 0
PE2-PK0
Text Notes 6900 1650 0    60   ~ 0
PE3-PK1
$Comp
L C C3
U 1 1 5AB8722F
P 1500 1450
F 0 "C3" H 1525 1550 50  0000 L CNN
F 1 "10u" H 1525 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1538 1300 50  0001 C CNN
F 3 "" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5AB87281
P 1750 1450
F 0 "C5" H 1775 1550 50  0000 L CNN
F 1 "10u" H 1775 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1788 1300 50  0001 C CNN
F 3 "" H 1750 1450 50  0001 C CNN
	1    1750 1450
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5AB872D6
P 2000 1450
F 0 "C6" H 2025 1550 50  0000 L CNN
F 1 "10u" H 2025 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2038 1300 50  0001 C CNN
F 3 "" H 2000 1450 50  0001 C CNN
	1    2000 1450
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5AB875A0
P 2250 1450
F 0 "C9" H 2275 1550 50  0000 L CNN
F 1 "10u" H 2275 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2288 1300 50  0001 C CNN
F 3 "" H 2250 1450 50  0001 C CNN
	1    2250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1600 1250 1600
Connection ~ 2000 1600
Connection ~ 1750 1600
Connection ~ 1500 1600
Connection ~ 2250 1300
Connection ~ 2000 1300
Connection ~ 1750 1300
Connection ~ 1500 1300
Connection ~ 1250 1300
$Comp
L R R11
U 1 1 5AB84E9F
P 2700 3000
F 0 "R11" V 2600 3000 50  0000 C CNN
F 1 "330" V 2700 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2630 3000 50  0001 C CNN
F 3 "" H 2700 3000 50  0001 C CNN
	1    2700 3000
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 5AB850F4
P 3050 3000
F 0 "D1" H 3050 3100 50  0000 C CNN
F 1 "LED" H 3050 2900 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 3050 3000 50  0001 C CNN
F 3 "" H 3050 3000 50  0001 C CNN
	1    3050 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 3000 2550 3000
Connection ~ 2450 2750
Wire Wire Line
	2850 3000 2900 3000
Text GLabel 3200 3000 2    60   UnSpc ~ 0
GND
$EndSCHEMATC
