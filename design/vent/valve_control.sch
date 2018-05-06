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
Sheet 4 5
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
L GND #PWR82
U 1 1 5AE16382
P 4700 5200
F 0 "#PWR82" H 4700 4950 50  0001 C CNN
F 1 "GND" H 4700 5050 50  0000 C CNN
F 2 "" H 4700 5200 50  0001 C CNN
F 3 "" H 4700 5200 50  0001 C CNN
	1    4700 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR83
U 1 1 5AE163E6
P 6500 5200
F 0 "#PWR83" H 6500 4950 50  0001 C CNN
F 1 "GND" H 6500 5050 50  0000 C CNN
F 2 "" H 6500 5200 50  0001 C CNN
F 3 "" H 6500 5200 50  0001 C CNN
	1    6500 5200
	1    0    0    -1  
$EndComp
Text Label 5200 4300 0    60   ~ 0
CLOSE+
Text Label 6000 4300 2    60   ~ 0
OPEN+
Text Label 6000 4450 2    60   ~ 0
CLOSE-
Text Label 5200 4450 0    60   ~ 0
OPEN-
$Comp
L R R17
U 1 1 5AE17097
P 4200 3700
F 0 "R17" V 4280 3700 50  0000 C CNN
F 1 "R" V 4200 3700 50  0000 C CNN
F 2 "" V 4130 3700 50  0001 C CNN
F 3 "" H 4200 3700 50  0001 C CNN
	1    4200 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR79
U 1 1 5AE172FE
P 3450 4500
F 0 "#PWR79" H 3450 4250 50  0001 C CNN
F 1 "GND" H 3450 4350 50  0000 C CNN
F 2 "" H 3450 4500 50  0001 C CNN
F 3 "" H 3450 4500 50  0001 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5AE178CB
P 7000 3700
F 0 "R18" V 7080 3700 50  0000 C CNN
F 1 "R" V 7000 3700 50  0000 C CNN
F 2 "" V 6930 3700 50  0001 C CNN
F 3 "" H 7000 3700 50  0001 C CNN
	1    7000 3700
	-1   0    0    -1  
$EndComp
Text HLabel 2500 4200 0    60   Input ~ 0
HIGH_SIDE_A
$Comp
L Conn_01x03 J14
U 1 1 5AE4C10B
P 4500 2350
F 0 "J14" H 4500 2550 50  0000 C CNN
F 1 "Conn_01x03" H 4500 2150 50  0000 C CNN
F 2 "" H 4500 2350 50  0001 C CNN
F 3 "" H 4500 2350 50  0001 C CNN
	1    4500 2350
	1    0    0    -1  
$EndComp
Text Label 4100 2350 2    60   ~ 0
OPEN+
Text Label 4100 2450 2    60   ~ 0
OPEN-
$Comp
L R R15
U 1 1 5AE4C8E4
P 4200 2000
F 0 "R15" V 4280 2000 50  0000 C CNN
F 1 "10K" V 4200 2000 50  0000 C CNN
F 2 "" V 4130 2000 50  0001 C CNN
F 3 "" H 4200 2000 50  0001 C CNN
	1    4200 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR75
U 1 1 5AE4C96A
P 4200 1850
F 0 "#PWR75" H 4200 1700 50  0001 C CNN
F 1 "+5V" H 4200 1990 50  0000 C CNN
F 2 "" H 4200 1850 50  0001 C CNN
F 3 "" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J15
U 1 1 5AE4D085
P 6800 2350
F 0 "J15" H 6800 2550 50  0000 C CNN
F 1 "Conn_01x03" H 6800 2150 50  0000 C CNN
F 2 "" H 6800 2350 50  0001 C CNN
F 3 "" H 6800 2350 50  0001 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
Text Label 6400 2350 2    60   ~ 0
CLOSE+
Text Label 6400 2450 2    60   ~ 0
CLOSE-
$Comp
L R R16
U 1 1 5AE4D091
P 6500 2000
F 0 "R16" V 6580 2000 50  0000 C CNN
F 1 "10K" V 6500 2000 50  0000 C CNN
F 2 "" V 6430 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR76
U 1 1 5AE4D097
P 6500 1850
F 0 "#PWR76" H 6500 1700 50  0001 C CNN
F 1 "+5V" H 6500 1990 50  0000 C CNN
F 2 "" H 6500 1850 50  0001 C CNN
F 3 "" H 6500 1850 50  0001 C CNN
	1    6500 1850
	1    0    0    -1  
$EndComp
Text Notes 4600 2500 0    60   ~ 0
COMM
Text Notes 4600 2300 0    60   ~ 0
NO
Text Notes 4600 2400 0    60   ~ 0
NC
Text Notes 6900 2500 0    60   ~ 0
COMM
Text Notes 6900 2300 0    60   ~ 0
NO
Text Notes 6900 2400 0    60   ~ 0
NC
Text HLabel 3750 2250 0    60   Input ~ 0
LIM_OPEN
Text HLabel 6050 2250 0    60   Input ~ 0
LIM_CLOSE
$Comp
L Q_NMOS_GSD Q5
U 1 1 5AEA177E
P 3350 4200
F 0 "Q5" H 3550 4250 50  0000 L CNN
F 1 "DMG2302UK" H 3550 4150 50  0000 L CNN
F 2 "" H 3550 4300 50  0001 C CNN
F 3 "" H 3350 4200 50  0001 C CNN
	1    3350 4200
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q7
U 1 1 5AEA35E1
P 4600 4750
F 0 "Q7" H 4500 4600 50  0000 L CNN
F 1 "AOD476" H 4400 4500 50  0000 L CNN
F 2 "" H 4800 4850 50  0001 C CNN
F 3 "" H 4600 4750 50  0001 C CNN
	1    4600 4750
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q8
U 1 1 5AEA3749
P 6600 4750
F 0 "Q8" H 6500 4600 50  0000 L CNN
F 1 "AOD476" H 6400 4500 50  0000 L CNN
F 2 "" H 6800 4850 50  0001 C CNN
F 3 "" H 6600 4750 50  0001 C CNN
	1    6600 4750
	-1   0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDS Q3
U 1 1 5AEA3C21
P 4600 4000
F 0 "Q3" H 4400 4150 50  0000 L CNN
F 1 "AOD417" H 4350 4250 50  0000 L CNN
F 2 "" H 4800 4100 50  0001 C CNN
F 3 "" H 4600 4000 50  0001 C CNN
	1    4600 4000
	1    0    0    1   
$EndComp
$Comp
L Q_PMOS_GDS Q4
U 1 1 5AEA3CF3
P 6600 4000
F 0 "Q4" H 6500 4150 50  0000 L CNN
F 1 "AOD417" H 6350 4250 50  0000 L CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "" H 6600 4000 50  0001 C CNN
	1    6600 4000
	-1   0    0    1   
$EndComp
$Comp
L R R21
U 1 1 5AEA8243
P 3100 4350
F 0 "R21" V 3180 4350 50  0000 C CNN
F 1 "10K" V 3100 4350 50  0000 C CNN
F 2 "" V 3030 4350 50  0001 C CNN
F 3 "" H 3100 4350 50  0001 C CNN
	1    3100 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR78
U 1 1 5AEBE82B
P 3100 4500
F 0 "#PWR78" H 3100 4250 50  0001 C CNN
F 1 "GND" H 3100 4350 50  0000 C CNN
F 2 "" H 3100 4500 50  0001 C CNN
F 3 "" H 3100 4500 50  0001 C CNN
	1    3100 4500
	1    0    0    -1  
$EndComp
Text HLabel 2500 5300 0    60   Input ~ 0
LOW_SIDE_A
$Comp
L R R22
U 1 1 5AEBEFF0
P 3100 5150
F 0 "R22" V 3180 5150 50  0000 C CNN
F 1 "10K" V 3100 5150 50  0000 C CNN
F 2 "" V 3030 5150 50  0001 C CNN
F 3 "" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR81
U 1 1 5AEBF207
P 3100 5000
F 0 "#PWR81" H 3100 4850 50  0001 C CNN
F 1 "+5V" H 3100 5140 50  0000 C CNN
F 2 "" H 3100 5000 50  0001 C CNN
F 3 "" H 3100 5000 50  0001 C CNN
	1    3100 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR80
U 1 1 5AEBFD20
P 7750 4500
F 0 "#PWR80" H 7750 4250 50  0001 C CNN
F 1 "GND" H 7750 4350 50  0000 C CNN
F 2 "" H 7750 4500 50  0001 C CNN
F 3 "" H 7750 4500 50  0001 C CNN
	1    7750 4500
	-1   0    0    -1  
$EndComp
Text HLabel 8250 4200 2    60   Input ~ 0
HIGH_SIDE_B
$Comp
L Q_NMOS_GSD Q6
U 1 1 5AEBFD27
P 7850 4200
F 0 "Q6" H 8050 4250 50  0000 L CNN
F 1 "DMG2302UK" H 8050 4150 50  0000 L CNN
F 2 "" H 8050 4300 50  0001 C CNN
F 3 "" H 7850 4200 50  0001 C CNN
	1    7850 4200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR84
U 1 1 5AEBFD35
P 8100 5600
F 0 "#PWR84" H 8100 5350 50  0001 C CNN
F 1 "GND" H 8100 5450 50  0000 C CNN
F 2 "" H 8100 5600 50  0001 C CNN
F 3 "" H 8100 5600 50  0001 C CNN
	1    8100 5600
	-1   0    0    -1  
$EndComp
Text HLabel 8250 5300 2    60   Input ~ 0
LOW_SIDE_B
$Comp
L +5V #PWR77
U 1 1 5AEBFD4A
P 8100 3900
F 0 "#PWR77" H 8100 3750 50  0001 C CNN
F 1 "+5V" H 8100 4040 50  0000 C CNN
F 2 "" H 8100 3900 50  0001 C CNN
F 3 "" H 8100 3900 50  0001 C CNN
	1    8100 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 4950 4700 5100
Wire Wire Line
	4700 5100 4700 5200
Wire Wire Line
	6500 4950 6500 5100
Wire Wire Line
	6500 5100 6500 5200
Wire Wire Line
	4700 4300 5050 4300
Wire Wire Line
	5050 4300 5200 4300
Wire Wire Line
	4700 4300 4700 4200
Wire Wire Line
	6000 4300 6150 4300
Wire Wire Line
	6150 4300 6500 4300
Wire Wire Line
	6500 4300 6500 4200
Wire Wire Line
	6000 4450 6150 4450
Wire Wire Line
	6150 4450 6500 4450
Wire Wire Line
	6500 4450 6500 4550
Wire Wire Line
	4700 4450 5050 4450
Wire Wire Line
	5050 4450 5200 4450
Wire Wire Line
	4700 4450 4700 4550
Wire Wire Line
	4200 3450 4700 3450
Wire Wire Line
	4700 3450 5050 3450
Wire Wire Line
	5050 3450 5600 3450
Wire Wire Line
	5600 3450 6150 3450
Wire Wire Line
	6150 3450 6500 3450
Wire Wire Line
	6500 3450 7000 3450
Wire Wire Line
	4700 3450 4700 3800
Wire Wire Line
	6500 3450 6500 3800
Wire Wire Line
	3450 4000 4200 4000
Wire Wire Line
	4200 4000 4400 4000
Wire Wire Line
	4200 3550 4200 3450
Connection ~ 4700 3450
Connection ~ 4200 4000
Wire Wire Line
	3450 4500 3450 4400
Wire Wire Line
	6800 4000 7000 4000
Wire Wire Line
	7000 4000 7750 4000
Wire Wire Line
	7000 3450 7000 3550
Connection ~ 7000 4000
Connection ~ 6500 3450
Wire Wire Line
	2950 4200 3100 4200
Wire Wire Line
	3100 4200 3150 4200
Wire Wire Line
	4100 2450 4300 2450
Wire Wire Line
	4100 2350 4300 2350
Wire Wire Line
	3750 2250 4200 2250
Wire Wire Line
	4200 2250 4300 2250
Wire Wire Line
	4200 2150 4200 2250
Connection ~ 4200 2250
Wire Wire Line
	6400 2450 6600 2450
Wire Wire Line
	6400 2350 6600 2350
Wire Wire Line
	6050 2250 6500 2250
Wire Wire Line
	6500 2250 6600 2250
Wire Wire Line
	6500 2150 6500 2250
Connection ~ 6500 2250
Wire Wire Line
	5600 3200 5600 3450
Connection ~ 5600 3450
Connection ~ 3100 4200
Wire Wire Line
	4200 3850 4200 4000
Wire Wire Line
	2950 5300 3100 5300
Wire Wire Line
	3100 5300 4350 5300
Wire Wire Line
	4400 4750 4350 4750
Wire Wire Line
	4350 4750 4350 5300
Wire Wire Line
	7000 3850 7000 4000
Wire Wire Line
	7750 4500 7750 4400
Wire Wire Line
	8050 4200 8100 4200
Wire Wire Line
	8100 4200 8250 4200
Wire Wire Line
	6850 5300 8100 5300
Wire Wire Line
	8100 5300 8250 5300
Wire Wire Line
	6800 4750 6850 4750
Wire Wire Line
	6850 4750 6850 5300
$Comp
L R R19
U 1 1 5AEC09FE
P 8100 4050
F 0 "R19" V 8180 4050 50  0000 C CNN
F 1 "10K" V 8100 4050 50  0000 C CNN
F 2 "" V 8030 4050 50  0001 C CNN
F 3 "" H 8100 4050 50  0001 C CNN
	1    8100 4050
	1    0    0    -1  
$EndComp
Connection ~ 8100 4200
$Comp
L R R24
U 1 1 5AEC1285
P 8100 5450
F 0 "R24" V 8180 5450 50  0000 C CNN
F 1 "10K" V 8100 5450 50  0000 C CNN
F 2 "" V 8030 5450 50  0001 C CNN
F 3 "" H 8100 5450 50  0001 C CNN
	1    8100 5450
	1    0    0    -1  
$EndComp
Connection ~ 8100 5300
$Comp
L D D5
U 1 1 5AEC26EA
P 5050 4800
F 0 "D5" H 5050 4900 50  0000 C CNN
F 1 "D" H 5050 4700 50  0000 C CNN
F 2 "" H 5050 4800 50  0001 C CNN
F 3 "" H 5050 4800 50  0001 C CNN
	1    5050 4800
	0    1    1    0   
$EndComp
$Comp
L D D6
U 1 1 5AEC274B
P 6150 4800
F 0 "D6" H 6150 4900 50  0000 C CNN
F 1 "D" H 6150 4700 50  0000 C CNN
F 2 "" H 6150 4800 50  0001 C CNN
F 3 "" H 6150 4800 50  0001 C CNN
	1    6150 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 4950 5050 5100
Wire Wire Line
	5050 5100 4700 5100
Connection ~ 4700 5100
Wire Wire Line
	5050 4650 5050 4450
Connection ~ 5050 4450
Wire Wire Line
	6150 4650 6150 4450
Connection ~ 6150 4450
Wire Wire Line
	6150 4950 6150 5100
Wire Wire Line
	6150 5100 6500 5100
Connection ~ 6500 5100
$Comp
L D D3
U 1 1 5AEC2D97
P 5050 3900
F 0 "D3" H 5050 4000 50  0000 C CNN
F 1 "D" H 5050 3800 50  0000 C CNN
F 2 "" H 5050 3900 50  0001 C CNN
F 3 "" H 5050 3900 50  0001 C CNN
	1    5050 3900
	0    1    1    0   
$EndComp
$Comp
L D D4
U 1 1 5AEC2DF7
P 6150 3900
F 0 "D4" H 6150 4000 50  0000 C CNN
F 1 "D" H 6150 3800 50  0000 C CNN
F 2 "" H 6150 3900 50  0001 C CNN
F 3 "" H 6150 3900 50  0001 C CNN
	1    6150 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 4050 5050 4300
Connection ~ 5050 4300
Wire Wire Line
	5050 3750 5050 3450
Connection ~ 5050 3450
Wire Wire Line
	6150 3750 6150 3450
Connection ~ 6150 3450
Wire Wire Line
	6150 4050 6150 4300
Connection ~ 6150 4300
Text Notes 4650 5800 0    60   ~ 0
D1-D4 to be populated only if the mosfet\nbody diodes aren't sufficient as flyback diodes.
$Comp
L R R20
U 1 1 5AEFD966
P 2800 4200
F 0 "R20" V 2880 4200 50  0000 C CNN
F 1 "270" V 2800 4200 50  0000 C CNN
F 2 "" V 2730 4200 50  0001 C CNN
F 3 "" H 2800 4200 50  0001 C CNN
	1    2800 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4200 2500 4200
$Comp
L R R23
U 1 1 5AEFDDA3
P 2800 5300
F 0 "R23" V 2880 5300 50  0000 C CNN
F 1 "270" V 2800 5300 50  0000 C CNN
F 2 "" V 2730 5300 50  0001 C CNN
F 3 "" H 2800 5300 50  0001 C CNN
	1    2800 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 5300 2500 5300
Text GLabel 5600 3200 0    60   Input ~ 0
VALVE_POWER
Connection ~ 3100 5300
$EndSCHEMATC
