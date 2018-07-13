EESchema Schematic File Version 2
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
LIBS:Science_POD-cache
EELAYER 25 0
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
L Molex_SL_2 U1
U 1 1 5AB43EFC
P 3350 2100
F 0 "U1" H 3400 2050 60  0001 C CNN
F 1 "Molex_SL_2" H 3400 2350 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2" H 3350 2000 60  0001 C CNN
F 3 "" H 3350 2000 60  0001 C CNN
	1    3350 2100
	-1   0    0    1   
$EndComp
Text Notes 3250 2050 0    60   ~ 0
V in
$Comp
L AP1059 U2
U 1 1 5AB44B00
P 4100 2600
F 0 "U2" H 4500 2550 60  0000 C CNN
F 1 "AP1059" H 4300 3100 60  0000 C CNN
F 2 "Housings_SOIC:HTSOP-8-1EP_3.9x4.9mm_Pitch1.27mm" H 3850 2500 60  0001 C CNN
F 3 "" H 3850 2500 60  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5AB44CF9
P 3950 2950
F 0 "L1" V 4000 2950 50  0000 C CNN
F 1 "47uH" V 3900 2950 50  0000 C CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" H 3950 2950 50  0001 C CNN
F 3 "" H 3950 2950 50  0001 C CNN
	1    3950 2950
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky_ALT D1
U 1 1 5AB4520F
P 3650 2800
F 0 "D1" V 3550 2950 50  0000 C CNN
F 1 "D_Schottky" V 3650 3050 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3650 2800 50  0001 C CNN
F 3 "" H 3650 2800 50  0001 C CNN
	1    3650 2800
	0    -1   -1   0   
$EndComp
Text Notes 3850 2000 0    60   ~ 0
Power Filter
$Comp
L ESP_8266_Breakout_Small U3
U 1 1 5AB45AFC
P 5300 3950
F 0 "U3" H 5350 3900 60  0000 C CNN
F 1 "ESP_8266_Breakout_Small" H 5550 4850 60  0000 C CNN
F 2 "MRDT_Shields:ESP_8266_Breakout_Small" H 5100 3600 60  0001 C CNN
F 3 "" H 5100 3600 60  0001 C CNN
	1    5300 3950
	1    0    0    -1  
$EndComp
$Comp
L Molex_SL_3 U4
U 1 1 5AB45D3D
P 4300 3250
F 0 "U4" H 4350 3200 60  0001 C CNN
F 1 "Molex_SL_3" H 4350 3600 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_3" H 4300 3250 60  0001 C CNN
F 3 "" H 4300 3250 60  0001 C CNN
	1    4300 3250
	-1   0    0    1   
$EndComp
Text Notes 4100 4000 2    60   ~ 0
Thermister
Text Notes 4100 3400 2    60   ~ 0
Moisture
$Comp
L R R1
U 1 1 5AB45F03
P 6250 4000
F 0 "R1" V 6330 4000 50  0000 C CNN
F 1 "4.7K" V 6250 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6180 4000 50  0001 C CNN
F 3 "" H 6250 4000 50  0001 C CNN
	1    6250 4000
	1    0    0    -1  
$EndComp
Text Label 4500 2950 0    60   ~ 0
+3V3
Text Label 6000 3800 0    60   ~ 0
Ain
Text Label 5050 3700 0    60   ~ 0
D1
Text Label 5850 2150 2    60   ~ 0
GND
Text Notes 4100 3900 2    60   ~ 0
(.5-1)*3.3V
Text Notes 4100 3510 2    60   ~ 0
0-3V
$Comp
L C C2
U 1 1 5AB4768B
P 4300 2800
F 0 "C2" H 4325 2900 50  0000 L CNN
F 1 "10uF" H 4325 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4338 2650 50  0001 C CNN
F 3 "" H 4300 2800 50  0001 C CNN
	1    4300 2800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AB476D8
P 3650 2400
F 0 "C1" H 3675 2500 50  0000 L CNN
F 1 "10uF" H 3675 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3688 2250 50  0001 C CNN
F 3 "" H 3650 2400 50  0001 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5ABAE27A
P 4950 2800
F 0 "R3" V 5030 2800 50  0000 C CNN
F 1 "330" V 4950 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4880 2800 50  0001 C CNN
F 3 "" H 4950 2800 50  0001 C CNN
	1    4950 2800
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5ABAE2C5
P 4950 2400
F 0 "D2" H 4950 2500 50  0000 C CNN
F 1 "LED" H 4950 2300 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 4950 2400 50  0001 C CNN
F 3 "" H 4950 2400 50  0001 C CNN
	1    4950 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2650 4750 2150
Connection ~ 4750 2350
Connection ~ 4750 2450
Wire Wire Line
	3550 2250 3900 2250
Wire Wire Line
	3550 2150 6400 2150
Connection ~ 4750 2250
Connection ~ 4750 2150
Wire Wire Line
	3900 2550 3900 2650
Wire Wire Line
	3650 2650 4750 2650
Connection ~ 4750 2550
Connection ~ 3900 2650
Wire Wire Line
	3800 2350 3900 2350
Wire Wire Line
	3650 2650 3650 2550
Connection ~ 3650 2250
Wire Wire Line
	3800 2350 3800 2950
Connection ~ 3800 2950
Wire Wire Line
	3800 2950 3650 2950
Wire Wire Line
	3900 2450 3850 2450
Wire Wire Line
	3850 2450 3850 2800
Wire Wire Line
	3850 2800 4100 2800
Wire Wire Line
	4100 2800 4100 2950
Wire Wire Line
	4100 2950 4750 2950
Connection ~ 4300 2950
Wire Wire Line
	4750 2950 4750 3200
Wire Wire Line
	4750 3200 5100 3200
Wire Wire Line
	5100 3200 5100 3100
Connection ~ 4300 2650
Wire Wire Line
	5950 3200 5950 3100
Wire Wire Line
	5950 3100 5100 3100
Wire Wire Line
	4950 2250 4950 2150
Connection ~ 4950 2150
Wire Wire Line
	4950 2550 4950 2650
Wire Wire Line
	4950 2950 4950 3200
Connection ~ 4950 3200
Wire Wire Line
	4500 3300 5100 3300
Wire Wire Line
	5050 3300 5050 2150
Connection ~ 5050 2150
Connection ~ 5050 3300
Wire Wire Line
	6050 3800 5950 3800
Wire Wire Line
	6050 3800 6050 4250
Wire Wire Line
	5000 3700 5100 3700
Wire Wire Line
	6250 4250 6250 4150
Connection ~ 6050 4250
Wire Wire Line
	6250 3850 6250 2700
Wire Wire Line
	6250 2700 5050 2700
Connection ~ 5050 2700
Wire Wire Line
	5000 3700 5000 3950
Wire Wire Line
	4750 3500 4750 4250
Wire Wire Line
	4500 3500 4750 3500
Wire Wire Line
	4900 3600 5100 3600
Wire Wire Line
	4900 3600 4900 3400
Wire Wire Line
	4900 3400 4500 3400
Text Label 5050 3600 0    60   ~ 0
D2
Wire Wire Line
	4750 4250 6250 4250
$Comp
L Molex_SL_2 Conn1
U 1 1 5AECCE00
P 4300 4000
F 0 "Conn1" H 4350 3950 60  0001 C CNN
F 1 "Molex_SL_2" H 4350 4250 60  0000 C CNN
F 2 "MRDT_Connectors:MOLEX_SL_2_Horizontal" H 4300 3900 60  0001 C CNN
F 3 "" H 4300 3900 60  0001 C CNN
	1    4300 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 3850 4750 3850
Connection ~ 4750 3850
Wire Wire Line
	5000 3950 4500 3950
$EndSCHEMATC
