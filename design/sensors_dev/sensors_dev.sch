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
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8250 2300 1900 2000
U 5AAC5FD1
F0 "Eval Sensors" 60
F1 "eval_sensors.sch" 60
$EndSheet
$Comp
L +7.5V #PWR01
U 1 1 5AAD0AD8
P 1250 1400
F 0 "#PWR01" H 1250 1250 50  0001 C CNN
F 1 "+7.5V" H 1250 1540 50  0000 C CNN
F 2 "" H 1250 1400 50  0001 C CNN
F 3 "" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AAD0AF8
P 1500 1650
F 0 "#PWR02" H 1500 1400 50  0001 C CNN
F 1 "GND" H 1500 1500 50  0000 C CNN
F 2 "" H 1500 1650 50  0001 C CNN
F 3 "" H 1500 1650 50  0001 C CNN
	1    1500 1650
	1    0    0    -1  
$EndComp
$Comp
L LP2980AIM5-3.0 U1
U 1 1 5AABE235
P 3800 1500
F 0 "U1" H 3550 1700 60  0000 C CNN
F 1 "LP2980AIM5-3.0" H 3800 1200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 3750 1500 60  0001 C CNN
F 3 "" H 3750 1500 60  0001 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AABE33E
P 3200 1750
F 0 "#PWR03" H 3200 1500 50  0001 C CNN
F 1 "GND" H 3200 1600 50  0000 C CNN
F 2 "" H 3200 1750 50  0001 C CNN
F 3 "" H 3200 1750 50  0001 C CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AABE3E0
P 2950 1600
F 0 "C1" H 2975 1700 50  0000 L CNN
F 1 "1uF" H 2975 1500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_Tantal_D5.0mm_P2.50mm" H 2988 1450 50  0001 C CNN
F 3 "" H 2950 1600 50  0001 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5AABE40E
P 2950 1750
F 0 "#PWR04" H 2950 1500 50  0001 C CNN
F 1 "GND" H 2950 1600 50  0000 C CNN
F 2 "" H 2950 1750 50  0001 C CNN
F 3 "" H 2950 1750 50  0001 C CNN
	1    2950 1750
	1    0    0    -1  
$EndComp
$Comp
L +3.0V #PWR05
U 1 1 5AABE7A3
P 4550 1350
F 0 "#PWR05" H 4550 1200 50  0001 C CNN
F 1 "+3.0V" H 4550 1490 50  0000 C CNN
F 2 "" H 4550 1350 50  0001 C CNN
F 3 "" H 4550 1350 50  0001 C CNN
	1    4550 1350
	1    0    0    -1  
$EndComp
NoConn ~ 4250 1650
$Comp
L C C2
U 1 1 5AABE80A
P 4550 1600
F 0 "C2" H 4575 1700 50  0000 L CNN
F 1 "2.2uF" H 4575 1500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_Tantal_D5.0mm_P2.50mm" H 4588 1450 50  0001 C CNN
F 3 "" H 4550 1600 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AABE88B
P 4550 1750
F 0 "#PWR06" H 4550 1500 50  0001 C CNN
F 1 "GND" H 4550 1600 50  0000 C CNN
F 2 "" H 4550 1750 50  0001 C CNN
F 3 "" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
Text Notes 4700 1600 0    60   ~ 0
Al/Ta
$Comp
L +7.5V #PWR07
U 1 1 5AABEAED
P 2950 1350
F 0 "#PWR07" H 2950 1200 50  0001 C CNN
F 1 "+7.5V" H 2950 1490 50  0000 C CNN
F 2 "" H 2950 1350 50  0001 C CNN
F 3 "" H 2950 1350 50  0001 C CNN
	1    2950 1350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5AAC216E
P 1950 1500
F 0 "J1" H 1950 1600 50  0000 C CNN
F 1 "Conn_01x02" H 1950 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1950 1500 50  0001 C CNN
F 3 "" H 1950 1500 50  0001 C CNN
	1    1950 1500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AAC8818
P 3300 3750
F 0 "R1" V 3380 3750 50  0000 C CNN
F 1 "10K" V 3300 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3230 3750 50  0001 C CNN
F 3 "" H 3300 3750 50  0001 C CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5AAC88AF
P 3300 3450
F 0 "#PWR08" H 3300 3300 50  0001 C CNN
F 1 "+5V" H 3300 3590 50  0000 C CNN
F 2 "" H 3300 3450 50  0001 C CNN
F 3 "" H 3300 3450 50  0001 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AAC8B88
P 4500 3750
F 0 "R2" V 4580 3750 50  0000 C CNN
F 1 "10K" V 4500 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 3750 50  0001 C CNN
F 3 "" H 4500 3750 50  0001 C CNN
	1    4500 3750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AAC913D
P 3300 4700
F 0 "R3" V 3380 4700 50  0000 C CNN
F 1 "10K" V 3300 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3230 4700 50  0001 C CNN
F 3 "" H 3300 4700 50  0001 C CNN
	1    3300 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5AAC9145
P 3300 4400
F 0 "#PWR09" H 3300 4250 50  0001 C CNN
F 1 "+5V" H 3300 4540 50  0000 C CNN
F 2 "" H 3300 4400 50  0001 C CNN
F 3 "" H 3300 4400 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5AAC914B
P 4500 4700
F 0 "R4" V 4580 4700 50  0000 C CNN
F 1 "10K" V 4500 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 4700 50  0001 C CNN
F 3 "" H 4500 4700 50  0001 C CNN
	1    4500 4700
	1    0    0    -1  
$EndComp
$Comp
L +3.0V #PWR010
U 1 1 5AAC9154
P 4500 4400
F 0 "#PWR010" H 4500 4250 50  0001 C CNN
F 1 "+3.0V" H 4500 4540 50  0000 C CNN
F 2 "" H 4500 4400 50  0001 C CNN
F 3 "" H 4500 4400 50  0001 C CNN
	1    4500 4400
	1    0    0    -1  
$EndComp
Text Label 2800 4950 0    60   ~ 0
SDA_5V
Text Label 2800 4000 0    60   ~ 0
SCL_5V
Text GLabel 4800 4000 2    60   Input ~ 0
SCL_3V
Text GLabel 4800 4950 2    60   Input ~ 0
SDA_3V
$Comp
L Q_NMOS_GSD Q2
U 1 1 5AAD3A36
P 3750 4850
F 0 "Q2" V 4000 4950 50  0000 L CNN
F 1 "RE1C002UN" V 4000 4350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3950 4950 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	0    -1   1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 5AAD3C4C
P 3750 3900
F 0 "Q1" V 4000 4000 50  0000 L CNN
F 1 "RE1C002UN" V 4000 3400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3950 4000 50  0001 C CNN
F 3 "" H 3750 3900 50  0001 C CNN
	1    3750 3900
	0    -1   1    0   
$EndComp
Text Notes 1500 1300 0    60   ~ 0
(12V also good)
Text Notes 2700 1650 0    60   ~ 0
Al
$Comp
L Conn_01x05 J2
U 1 1 5AB17DE7
P 1550 4000
F 0 "J2" H 1550 4300 50  0000 C CNN
F 1 "Conn_01x05" H 1550 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 1550 4000 50  0001 C CNN
F 3 "" H 1550 4000 50  0001 C CNN
	1    1550 4000
	-1   0    0    -1  
$EndComp
$Comp
L +7.5V #PWR011
U 1 1 5AB17F44
P 2200 3700
F 0 "#PWR011" H 2200 3550 50  0001 C CNN
F 1 "+7.5V" H 2200 3840 50  0000 C CNN
F 2 "" H 2200 3700 50  0001 C CNN
F 3 "" H 2200 3700 50  0001 C CNN
	1    2200 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 5AB17F82
P 1950 3700
F 0 "#PWR012" H 1950 3550 50  0001 C CNN
F 1 "+5V" H 1950 3840 50  0000 C CNN
F 2 "" H 1950 3700 50  0001 C CNN
F 3 "" H 1950 3700 50  0001 C CNN
	1    1950 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1650 1500 1600
Wire Wire Line
	1500 1600 1750 1600
Wire Wire Line
	1250 1400 1250 1500
Wire Wire Line
	1250 1500 1750 1500
Wire Wire Line
	3200 1750 3200 1650
Wire Wire Line
	3200 1650 3300 1650
Wire Wire Line
	2950 1350 2950 1450
Wire Wire Line
	2950 1450 3300 1450
Connection ~ 2950 1450
Wire Wire Line
	3300 1550 3200 1550
Wire Wire Line
	3200 1550 3200 1450
Connection ~ 3200 1450
Wire Wire Line
	4550 1350 4550 1450
Wire Wire Line
	4550 1450 4250 1450
Connection ~ 4550 1450
Wire Wire Line
	1750 4000 3550 4000
Wire Wire Line
	3300 3900 3300 4000
Connection ~ 3300 4000
Wire Wire Line
	3950 4000 4800 4000
Wire Wire Line
	4500 4000 4500 3900
Connection ~ 4500 4000
Wire Wire Line
	4500 3450 4500 3600
Wire Wire Line
	3750 3700 3750 3550
Wire Wire Line
	3750 3550 4500 3550
Connection ~ 4500 3550
Wire Wire Line
	3300 3450 3300 3600
Wire Wire Line
	2400 4950 3550 4950
Wire Wire Line
	3300 4850 3300 4950
Connection ~ 3300 4950
Wire Wire Line
	3950 4950 4800 4950
Wire Wire Line
	4500 4950 4500 4850
Connection ~ 4500 4950
Wire Wire Line
	4500 4400 4500 4550
Wire Wire Line
	3750 4650 3750 4500
Wire Wire Line
	3750 4500 4500 4500
Connection ~ 4500 4500
Wire Wire Line
	3300 4400 3300 4550
$Comp
L GND #PWR013
U 1 1 5AB181D4
P 2000 4300
F 0 "#PWR013" H 2000 4050 50  0001 C CNN
F 1 "GND" H 2000 4150 50  0000 C CNN
F 2 "" H 2000 4300 50  0001 C CNN
F 3 "" H 2000 4300 50  0001 C CNN
	1    2000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4300 2000 4200
Wire Wire Line
	2000 4200 1750 4200
Wire Wire Line
	1750 3800 1950 3800
Wire Wire Line
	1950 3800 1950 3700
Wire Wire Line
	1750 3900 2200 3900
Wire Wire Line
	2200 3900 2200 3700
$Comp
L +3.0V #PWR014
U 1 1 5AB1861A
P 4500 3450
F 0 "#PWR014" H 4500 3300 50  0001 C CNN
F 1 "+3.0V" H 4500 3590 50  0000 C CNN
F 2 "" H 4500 3450 50  0001 C CNN
F 3 "" H 4500 3450 50  0001 C CNN
	1    4500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4100 2400 4100
Wire Wire Line
	2400 4100 2400 4950
Text Notes 1500 3400 0    60   ~ 0
Arduino inputs\n
$EndSCHEMATC
