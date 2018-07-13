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
LIBS:Sattelite Board-cache
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
L MQ-4 U1
U 1 1 5AA42AE1
P 1800 1450
F 0 "U1" H 1850 1400 60  0000 C CNN
F 1 "MQ-4" H 1900 1800 60  0000 C CNN
F 2 "MRDT-Devices:MQ-4-Breakout" H 1800 1350 60  0001 C CNN
F 3 "" H 1800 1350 60  0001 C CNN
	1    1800 1450
	1    0    0    -1  
$EndComp
$Comp
L MPL3115A2-Breakout U6
U 1 1 5AA42B43
P 1800 4450
F 0 "U6" H 1850 4400 60  0000 C CNN
F 1 "MPL3115A2-Breakout" H 1950 5100 60  0000 C CNN
F 2 "MRDT-Devices:MPL3115A2-Breakout" H 1800 4450 60  0001 C CNN
F 3 "" H 1800 4450 60  0001 C CNN
	1    1800 4450
	1    0    0    -1  
$EndComp
$Comp
L TMP36 U4
U 1 1 5AA42BC3
P 1800 2950
F 0 "U4" H 1850 2900 60  0000 C CNN
F 1 "TMP36" H 1950 3300 60  0000 C CNN
F 2 "MRDT-Devices:TMP36-Breakout" H 1800 2900 60  0001 C CNN
F 3 "" H 1800 2900 60  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
$Comp
L HIH-4030-Breakout U3
U 1 1 5AA42C1C
P 1800 2450
F 0 "U3" H 1850 2400 60  0000 C CNN
F 1 "HIH-4030-Breakout" H 1900 2800 60  0000 C CNN
F 2 "MRDT-Devices:HIH-4030-Breakout" H 1800 2450 60  0001 C CNN
F 3 "" H 1800 2450 60  0001 C CNN
	1    1800 2450
	1    0    0    -1  
$EndComp
Text Notes 900  800  0    197  ~ 0
Sensors\n
$Comp
L MQ-135-Breakout U2
U 1 1 5AA435D5
P 1800 1950
F 0 "U2" H 1850 1900 60  0000 C CNN
F 1 "MQ-135-Breakout" H 1900 2300 60  0000 C CNN
F 2 "MRDT-Devices:MQ-135-Breakout" H 1800 1850 60  0001 C CNN
F 3 "" H 1800 1850 60  0001 C CNN
	1    1800 1950
	1    0    0    -1  
$EndComp
Text Notes 550  1150 0    60   ~ 0
Methane\n
Wire Notes Line
	500  1050 2500 1050
Wire Notes Line
	2500 1550 500  1550
Wire Notes Line
	500  1550 500  1600
Wire Notes Line
	2500 2050 500  2050
Wire Notes Line
	2500 2550 500  2550
Wire Notes Line
	2500 3050 500  3050
Text Notes 4150 850  0    197  ~ 0
Connector
Text Notes 550  1650 0    60   ~ 0
Ammonia\n
Text Notes 550  2150 0    60   ~ 0
Humidity
Text Notes 550  2650 0    60   ~ 0
Temperature
Text Notes 550  3150 0    60   ~ 0
UltraViolet
Text Notes 550  3850 0    60   ~ 0
Pressure
Text GLabel 1600 1200 0    60   Input ~ 0
+5V
Text GLabel 1600 1700 0    60   Input ~ 0
+5V
Text GLabel 1600 2200 0    60   Input ~ 0
+5V
Text GLabel 1600 2700 0    60   Input ~ 0
+3V3
Wire Notes Line
	2500 1050 2500 4550
Wire Notes Line
	500  1050 500  4550
Text GLabel 1600 3300 0    60   Input ~ 0
+3V3
Text GLabel 1600 4300 0    60   Input ~ 0
+3V3
Text GLabel 1600 1400 0    60   UnSpc ~ 0
GND
Text GLabel 1600 1900 0    60   UnSpc ~ 0
GND
Text GLabel 1600 2400 0    60   UnSpc ~ 0
GND
Text GLabel 1600 2900 0    60   UnSpc ~ 0
GND
Text GLabel 1600 3400 0    60   UnSpc ~ 0
GND
Text GLabel 1600 4400 0    60   UnSpc ~ 0
GND
Text GLabel 5100 1200 0    60   Output ~ 0
+3V3
Text GLabel 5100 1300 0    60   Output ~ 0
+5V
Text GLabel 5100 1400 0    60   UnSpc ~ 0
GND
Text GLabel 5100 1500 0    60   Input ~ 0
Methane_VOUT
Text GLabel 5100 1600 0    60   Input ~ 0
Ammonia_VOUT
Text GLabel 5100 1700 0    60   Input ~ 0
UV_VOUT
Text GLabel 5100 1800 0    60   Input ~ 0
Humidity_VOUT
Text GLabel 5100 1900 0    60   Input ~ 0
Temp_VOUT
Text GLabel 5100 2000 0    60   Input ~ 0
Pressure_SCL
Text GLabel 5100 2100 0    60   Input ~ 0
Pressure_SDA
Text GLabel 1600 4100 0    60   Output ~ 0
Pressure_SDA
Text GLabel 1600 4200 0    60   Output ~ 0
Pressure_SCL
Text GLabel 1600 1300 0    60   Output ~ 0
Methane_VOUT
Text GLabel 1600 2800 0    60   Output ~ 0
Temp_VOUT
$Comp
L R R3
U 1 1 5AA454EE
P 1450 1800
F 0 "R3" V 1400 1650 50  0000 C CNN
F 1 "10K" V 1450 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1380 1800 50  0001 C CNN
F 3 "" H 1450 1800 50  0001 C CNN
	1    1450 1800
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AA45528
P 1050 2300
F 0 "R2" V 1100 2150 50  0000 C CNN
F 1 "19.3K" V 1050 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 2300 50  0001 C CNN
F 3 "" H 1050 2300 50  0001 C CNN
	1    1050 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2300 1200 2300
Text GLabel 900  2300 0    60   UnSpc ~ 0
GND
Text GLabel 1200 2450 0    60   Output ~ 0
Humidity_VOUT
Wire Wire Line
	1250 2300 1250 2450
Wire Wire Line
	1250 2450 1200 2450
Connection ~ 1250 2300
$Comp
L R R4
U 1 1 5AA45C1F
P 1450 2300
F 0 "R4" V 1400 2150 50  0000 C CNN
F 1 "10K" V 1450 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1380 2300 50  0001 C CNN
F 3 "" H 1450 2300 50  0001 C CNN
	1    1450 2300
	0    1    1    0   
$EndComp
Text GLabel 1200 1950 0    60   Output ~ 0
Ammonia_VOUT
$Comp
L R R1
U 1 1 5AA46669
P 1050 1800
F 0 "R1" V 1100 1650 50  0000 C CNN
F 1 "19.3K" V 1050 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 1800 50  0001 C CNN
F 3 "" H 1050 1800 50  0001 C CNN
	1    1050 1800
	0    -1   -1   0   
$EndComp
Text GLabel 900  1800 0    60   UnSpc ~ 0
GND
Wire Wire Line
	1200 1800 1300 1800
Wire Wire Line
	1200 1950 1250 1950
Wire Wire Line
	1250 1950 1250 1800
Connection ~ 1250 1800
Text GLabel 1600 3500 0    60   Output ~ 0
UV_VOUT
$Comp
L R R5
U 1 1 5AA46AB2
P 1450 3600
F 0 "R5" V 1400 3450 50  0000 C CNN
F 1 "100K" V 1450 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1380 3600 50  0001 C CNN
F 3 "" H 1450 3600 50  0001 C CNN
	1    1450 3600
	0    -1   -1   0   
$EndComp
Text GLabel 1300 3600 0    60   Input ~ 0
+3V3
Wire Wire Line
	1600 3900 1600 4000
$Comp
L GY-ML8511-Breakout U5
U 1 1 5AA46821
P 1800 3650
F 0 "U5" H 1850 3600 60  0000 C CNN
F 1 "GY-ML8511-Breakout" H 1950 4200 60  0000 C CNN
F 2 "MRDT-Devices:GY-ML8511-Breakout" H 1800 3550 60  0001 C CNN
F 3 "" H 1800 3550 60  0001 C CNN
	1    1800 3650
	1    0    0    -1  
$EndComp
Wire Notes Line
	2500 3750 500  3750
Wire Notes Line
	500  4550 2500 4550
$Comp
L Molex_SL-10 U7
U 1 1 5AA47653
P 5300 1650
F 0 "U7" H 5350 1600 60  0001 C CNN
F 1 "Molex_SL-10" H 5500 2200 60  0000 C CNN
F 2 "MRDT-Connectors:MOLEX_SL_10" H 5300 1650 60  0001 C CNN
F 3 "" H 5300 1650 60  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
Text Notes 2550 1400 0    60   ~ 0
Resistor Divider Included in Breakout \nto make 3.3V logic
Text Notes 2550 3500 0    60   ~ 0
Molex SL to External Sensor Breakout\nSensor not soldered to Board
$EndSCHEMATC
