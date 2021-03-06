EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:modules
LIBS:flight_instr
LIBS:vent-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L Arduino_Nano_v3.x A1
U 1 1 5ADF7147
P 5600 4250
F 0 "A1" H 5400 5275 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" H 5400 5200 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 5750 3300 50  0001 L CNN
F 3 "" H 5600 3250 50  0001 C CNN
	1    5600 4250
	1    0    0    -1  
$EndComp
NoConn ~ 6100 3650
NoConn ~ 6100 3750
Text Notes 1700 1100 0    60   ~ 0
Power In
$Comp
L +11.1V #PWR01
U 1 1 5ADF8011
P 3000 1200
F 0 "#PWR01" H 3000 1050 50  0001 C CNN
F 1 "+11.1V" H 3000 1340 50  0000 C CNN
F 2 "" H 3000 1200 50  0001 C CNN
F 3 "" H 3000 1200 50  0001 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5ADF8038
P 3000 1600
F 0 "#PWR02" H 3000 1350 50  0001 C CNN
F 1 "GND" H 3000 1450 50  0000 C CNN
F 2 "" H 3000 1600 50  0001 C CNN
F 3 "" H 3000 1600 50  0001 C CNN
	1    3000 1600
	1    0    0    -1  
$EndComp
$Comp
L +11.1V #PWR03
U 1 1 5ADF81C7
P 5500 3050
F 0 "#PWR03" H 5500 2900 50  0001 C CNN
F 1 "+11.1V" H 5500 3190 50  0000 C CNN
F 2 "" H 5500 3050 50  0001 C CNN
F 3 "" H 5500 3050 50  0001 C CNN
	1    5500 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5ADF8296
P 5600 5400
F 0 "#PWR04" H 5600 5150 50  0001 C CNN
F 1 "GND" H 5600 5250 50  0000 C CNN
F 2 "" H 5600 5400 50  0001 C CNN
F 3 "" H 5600 5400 50  0001 C CNN
	1    5600 5400
	1    0    0    -1  
$EndComp
$Sheet
S 1600 5400 1850 1500
U 5AE1223E
F0 "Comms & Logging" 60
F1 "comms.sch" 60
F2 "MOSI_5V" I R 3450 6350 60 
F3 "SCK_5V" I R 3450 6550 60 
F4 "XBEE_DIN_5V" I R 3450 5950 60 
F5 "CS_5V" I R 3450 6250 60 
F6 "XBEE_DOUT_5V" I R 3450 5850 60 
F7 "MISO_5V" I R 3450 6450 60 
$EndSheet
$Sheet
S 7800 5000 1800 1300
U 5AE12BED
F0 "Sensors Digital" 60
F1 "sensors_digital.sch" 60
$EndSheet
$Sheet
S 1600 2100 1550 1300
U 5AE1565E
F0 "Valve Control" 60
F1 "valve_control.sch" 60
F2 "LIM_OPEN" I R 3150 2650 60 
F3 "LIM_CLOSE" I R 3150 2750 60 
F4 "HIGH_SIDE_A" I R 3150 2350 60 
F5 "LOW_SIDE_A" I R 3150 2550 60 
F6 "HIGH_SIDE_B" I R 3150 2250 60 
F7 "LOW_SIDE_B" I R 3150 2450 60 
$EndSheet
$Comp
L +5V #PWR05
U 1 1 5AE55261
P 5800 3050
F 0 "#PWR05" H 5800 2900 50  0001 C CNN
F 1 "+5V" H 5800 3190 50  0000 C CNN
F 2 "" H 5800 3050 50  0001 C CNN
F 3 "" H 5800 3050 50  0001 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
NoConn ~ 5700 3250
$Sheet
S 7800 3400 1700 1300
U 5AE814A5
F0 "Sensors Analog" 60
F1 "sensors_analog.sch" 60
F2 "THERM_1" I L 7800 3750 60 
F3 "THERM_3" I L 7800 3950 60 
F4 "THERM_2" I L 7800 3850 60 
F5 "THERM_4" I L 7800 4050 60 
F6 "PRESSURE" I L 7800 4150 60 
$EndSheet
$Comp
L R R4
U 1 1 5AE84841
P 6650 5150
F 0 "R4" V 6730 5150 50  0000 C CNN
F 1 "10K" V 6650 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6580 5150 50  0001 C CNN
F 3 "" H 6650 5150 50  0001 C CNN
	1    6650 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 5AE848C6
P 6650 5000
F 0 "#PWR06" H 6650 4850 50  0001 C CNN
F 1 "+5V" H 6650 5140 50  0000 C CNN
F 2 "" H 6650 5000 50  0001 C CNN
F 3 "" H 6650 5000 50  0001 C CNN
	1    6650 5000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5AE84A36
P 6850 5150
F 0 "R5" V 6930 5150 50  0000 C CNN
F 1 "10K" V 6850 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6780 5150 50  0001 C CNN
F 3 "" H 6850 5150 50  0001 C CNN
	1    6850 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 5AE84AB8
P 6850 5000
F 0 "#PWR07" H 6850 4850 50  0001 C CNN
F 1 "+5V" H 6850 5140 50  0000 C CNN
F 2 "" H 6850 5000 50  0001 C CNN
F 3 "" H 6850 5000 50  0001 C CNN
	1    6850 5000
	1    0    0    -1  
$EndComp
Text Label 4000 5850 0    60   ~ 0
RX
Text Label 4000 5950 0    60   ~ 0
TX
Text Label 4900 3650 2    60   ~ 0
RX
Text Label 4900 3750 2    60   ~ 0
TX
$Comp
L Fuse_Small F1
U 1 1 5AE9CD78
P 2750 1350
F 0 "F1" H 2750 1290 50  0000 C CNN
F 1 "0891020.NXS" H 2700 1450 50  0000 C CNN
F 2 "Flight_Instr:PC_AutoFuse_Holder" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
NoConn ~ 6100 4750
NoConn ~ 6100 4050
Wire Wire Line
	4700 4750 5100 4750
Wire Wire Line
	4800 4850 5100 4850
Wire Wire Line
	4900 4950 5100 4950
Wire Wire Line
	3000 1200 3000 1350
Wire Wire Line
	3000 1450 3000 1600
Wire Wire Line
	2500 1450 3000 1450
Wire Wire Line
	5500 3250 5500 3050
Wire Wire Line
	5600 5250 5600 5400
Wire Wire Line
	5700 5250 5700 5300
Wire Wire Line
	5700 5300 5600 5300
Connection ~ 5600 5300
Wire Wire Line
	4900 3650 5100 3650
Wire Wire Line
	4900 3750 5100 3750
Wire Wire Line
	5800 3050 5800 3250
Wire Wire Line
	6100 5000 6300 5000
Wire Wire Line
	6100 4900 6400 4900
Wire Wire Line
	6400 4900 6400 5800
Wire Wire Line
	6400 5800 7250 5800
Wire Wire Line
	6650 5300 6400 5300
Connection ~ 6400 5300
Wire Wire Line
	6850 5300 6850 5400
Wire Wire Line
	6850 5400 6300 5400
Connection ~ 6300 5400
Wire Wire Line
	6100 4250 6400 4250
Wire Wire Line
	6400 4250 6400 3750
Wire Wire Line
	6400 3750 7800 3750
Wire Wire Line
	6300 5000 6300 5900
Wire Wire Line
	6300 5900 7250 5900
Wire Wire Line
	6100 4350 6500 4350
Wire Wire Line
	6500 4350 6500 3850
Wire Wire Line
	6500 3850 7800 3850
Wire Wire Line
	6100 4450 6600 4450
Wire Wire Line
	6600 4450 6600 3950
Wire Wire Line
	6600 3950 7800 3950
Wire Wire Line
	6100 4550 6700 4550
Wire Wire Line
	6700 4550 6700 4050
Wire Wire Line
	6700 4050 7800 4050
Wire Wire Line
	6100 4650 6800 4650
Wire Wire Line
	6800 4650 6800 4150
Wire Wire Line
	6800 4150 7800 4150
Wire Wire Line
	3450 5850 4000 5850
Wire Wire Line
	3450 5950 4000 5950
Wire Wire Line
	3450 6550 4900 6550
Wire Wire Line
	4900 6550 4900 4950
Wire Wire Line
	3450 6450 4800 6450
Wire Wire Line
	4800 6450 4800 4850
Wire Wire Line
	3450 6350 4700 6350
Wire Wire Line
	4700 6350 4700 4750
Wire Wire Line
	3450 6250 4600 6250
Wire Wire Line
	4600 6250 4600 4650
Wire Wire Line
	4600 4650 5100 4650
Wire Wire Line
	2500 1350 2650 1350
Wire Wire Line
	2850 1350 3100 1350
Wire Wire Line
	4600 2250 4600 3850
Wire Wire Line
	4600 3850 5100 3850
Wire Wire Line
	4500 2350 4500 3950
Wire Wire Line
	4500 3950 5100 3950
Wire Wire Line
	4400 2450 4400 4050
Wire Wire Line
	4400 4050 5100 4050
Wire Wire Line
	4300 2550 4300 4150
Wire Wire Line
	4300 4150 5100 4150
Wire Wire Line
	4200 2650 4200 4250
Wire Wire Line
	4200 4250 5100 4250
Wire Wire Line
	4100 2750 4100 4350
Wire Wire Line
	4100 4350 5100 4350
$Comp
L Conn_01x02 J2
U 1 1 5AEFA083
P 5350 1350
F 0 "J2" H 5350 1450 50  0000 C CNN
F 1 "OSTYK22102030" H 5350 1150 50  0000 C CNN
F 2 "Flight_Instr:Barrier_Strip_2Circuit" H 5350 1350 50  0001 C CNN
F 3 "" H 5350 1350 50  0001 C CNN
	1    5350 1350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AEFA08B
P 5850 1550
F 0 "#PWR08" H 5850 1300 50  0001 C CNN
F 1 "GND" H 5850 1400 50  0000 C CNN
F 2 "" H 5850 1550 50  0001 C CNN
F 3 "" H 5850 1550 50  0001 C CNN
	1    5850 1550
	-1   0    0    -1  
$EndComp
Text Notes 7150 1400 2    60   ~ 0
(11.1 V)
$Comp
L Fuse_Small F2
U 1 1 5AEFA092
P 5800 1350
F 0 "F2" H 5800 1290 50  0000 C CNN
F 1 "0891020.NXS" H 5800 1410 50  0000 C CNN
F 2 "Flight_Instr:PC_AutoFuse_Holder" H 5800 1350 50  0001 C CNN
F 3 "" H 5800 1350 50  0001 C CNN
	1    5800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1350 5550 1350
Wire Wire Line
	5850 1550 5850 1450
Wire Wire Line
	5850 1450 5550 1450
Wire Wire Line
	6050 1350 5900 1350
Text GLabel 6050 1350 2    60   Input ~ 0
VALVE_POWER
Text GLabel 3500 1350 2    60   Input ~ 0
VALVE_POWER
$Comp
L R R1
U 1 1 5AEFB0AE
P 3250 1350
F 0 "R1" V 3330 1350 50  0000 C CNN
F 1 "R" V 3250 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3180 1350 50  0001 C CNN
F 3 "" H 3250 1350 50  0001 C CNN
	1    3250 1350
	0    -1   -1   0   
$EndComp
Connection ~ 3000 1350
Wire Wire Line
	3400 1350 3500 1350
Text Notes 3150 1700 0    40   ~ 0
0 ohm resistor to be populated\nor not depending on whether 1\nor 2 power sources are used.
Text GLabel 2500 1350 0    60   Input ~ 0
CTL_POWER
Text GLabel 2500 1450 0    60   Input ~ 0
CTL_POWER_GND
Text GLabel 7250 5800 2    60   Input ~ 0
SDA_5V
Text GLabel 7250 5900 2    60   Input ~ 0
SCL_5V
Text Notes 4850 1800 0    60   ~ 0
0.25'' pitch 2 pin\nbarrier block
NoConn ~ 5100 4450
NoConn ~ 5100 4550
Wire Wire Line
	4600 2250 3150 2250
Wire Wire Line
	3150 2350 4500 2350
Wire Wire Line
	4400 2450 3150 2450
Wire Wire Line
	3150 2550 4300 2550
Wire Wire Line
	4200 2650 3150 2650
Wire Wire Line
	3150 2750 4100 2750
$EndSCHEMATC
