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
L TMP36 U1
U 1 1 5AA41DD1
P 10300 6050
F 0 "U1" H 10350 6000 60  0000 C CNN
F 1 "TMP36" H 10450 6400 60  0000 C CNN
F 2 "MRDT-Devices:TMP36" H 10300 6000 60  0001 C CNN
F 3 "" H 10300 6000 60  0001 C CNN
	1    10300 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 5AA41E6E
P 9450 5900
F 0 "J1" H 9450 6100 50  0000 C CNN
F 1 "Conn_01x03" H 9450 5700 50  0000 C CNN
F 2 "MRDT-Headers:3x1_Header" H 9450 5900 50  0001 C CNN
F 3 "" H 9450 5900 50  0001 C CNN
	1    9450 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 5800 10100 5800
Wire Wire Line
	10100 5900 9650 5900
Wire Wire Line
	9650 6000 10100 6000
Text Label 9800 5800 0    60   ~ 0
+3V3
Text Label 9800 5900 0    60   ~ 0
Vout
Text Label 9800 6000 0    60   ~ 0
GND
$EndSCHEMATC
