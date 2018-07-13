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
LIBS:MRDT-Actives
LIBS:MRDT-Connectors
LIBS:MRDT-Devices
LIBS:MRDT-Drill_Holes
LIBS:MRDT-Headers
LIBS:MRDT-ICs
LIBS:MRDT-Passives
LIBS:MRDT-Shields
LIBS:MRDT-Switches
LIBS:MRST-Silkscreens
EELAYER 25 0
EELAYER END
$Descr User 5315 4000
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
L MQ-4 U1
U 1 1 5AA40F57
P 2600 1350
F 0 "U1" H 2650 1300 60  0000 C CNN
F 1 "MQ-4" H 2700 1700 60  0000 C CNN
F 2 "MRDT-Devices:MQ-4" H 2600 1250 60  0001 C CNN
F 3 "" H 2600 1250 60  0001 C CNN
	1    2600 1350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AA40F92
P 2000 1350
F 0 "R1" V 2100 1350 50  0000 C CNN
F 1 "19.3k" V 2000 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1930 1350 50  0001 C CNN
F 3 "" H 2000 1350 50  0001 C CNN
	1    2000 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 1200 2050 1200
Wire Wire Line
	2400 1500 2400 1300
Wire Wire Line
	1700 1500 2400 1500
$Comp
L Conn_01x03 J1
U 1 1 5AA41055
P 1500 1200
F 0 "J1" H 1500 1400 50  0000 C CNN
F 1 "Conn_01x03" H 1500 1000 50  0000 C CNN
F 2 "MRDT-Headers:3x1_Header" H 1500 1200 50  0001 C CNN
F 3 "" H 1500 1200 50  0001 C CNN
	1    1500 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 1100 2400 1100
Wire Wire Line
	1700 1500 1700 1300
Text Label 2150 1100 0    60   ~ 0
+5V
Text Label 1700 1200 0    60   ~ 0
A_OUT
Text Label 2400 1500 0    60   ~ 0
GND
Connection ~ 2000 1500
$Comp
L R R2
U 1 1 5AA41BE1
P 2200 1200
F 0 "R2" V 2300 1200 50  0000 C CNN
F 1 "10k" V 2200 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2130 1200 50  0001 C CNN
F 3 "" H 2200 1200 50  0001 C CNN
	1    2200 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1200 2350 1200
Connection ~ 2000 1200
$EndSCHEMATC
