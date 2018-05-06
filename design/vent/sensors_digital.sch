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
Sheet 3 5
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
L MS5607-02BA03 U10
U 1 1 5AE13B82
P 6300 5200
F 0 "U10" H 6100 5750 60  0000 C CNN
F 1 "MS5607-02BA03" H 6350 5200 60  0000 C CNN
F 2 "footprints:MS560702BA03" H 6350 5200 60  0001 C CNN
F 3 "" H 6350 5200 60  0001 C CNN
	1    6300 5200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR61
U 1 1 5AE13B89
P 9100 3150
F 0 "#PWR61" H 9100 2900 50  0001 C CNN
F 1 "GND" H 9100 3000 50  0000 C CNN
F 2 "" H 9100 3150 50  0001 C CNN
F 3 "" H 9100 3150 50  0001 C CNN
	1    9100 3150
	1    0    0    -1  
$EndComp
NoConn ~ 9300 3050
NoConn ~ 9300 1850
$Comp
L +3.0V #PWR49
U 1 1 5AE13B91
P 9200 1550
F 0 "#PWR49" H 9200 1400 50  0001 C CNN
F 1 "+3.0V" H 9200 1690 50  0000 C CNN
F 2 "" H 9200 1550 50  0001 C CNN
F 3 "" H 9200 1550 50  0001 C CNN
	1    9200 1550
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5AE13B97
P 9450 1650
F 0 "C12" V 9500 1700 50  0000 L CNN
F 1 "100nF" V 9500 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9488 1500 50  0001 C CNN
F 3 "" H 9450 1650 50  0001 C CNN
	1    9450 1650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR50
U 1 1 5AE13B9E
P 9600 1650
F 0 "#PWR50" H 9600 1400 50  0001 C CNN
F 1 "GND" H 9600 1500 50  0000 C CNN
F 2 "" H 9600 1650 50  0001 C CNN
F 3 "" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR60
U 1 1 5AE13BA4
P 9950 2800
F 0 "#PWR60" H 9950 2550 50  0001 C CNN
F 1 "GND" H 9950 2650 50  0000 C CNN
F 2 "" H 9950 2800 50  0001 C CNN
F 3 "" H 9950 2800 50  0001 C CNN
	1    9950 2800
	1    0    0    -1  
$EndComp
Text Notes 9350 3250 0    60   ~ 0
3 axis IMU - accel & gyro
NoConn ~ 6750 4850
NoConn ~ 5800 5050
$Comp
L C C17
U 1 1 5AE13BC4
P 7150 5100
F 0 "C17" H 7050 5200 50  0000 L CNN
F 1 "100nF" H 6900 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7188 4950 50  0001 C CNN
F 3 "" H 7150 5100 50  0001 C CNN
	1    7150 5100
	-1   0    0    -1  
$EndComp
$Comp
L +3.0V #PWR69
U 1 1 5AE13BCB
P 7150 4700
F 0 "#PWR69" H 7150 4550 50  0001 C CNN
F 1 "+3.0V" H 7150 4840 50  0000 C CNN
F 2 "" H 7150 4700 50  0001 C CNN
F 3 "" H 7150 4700 50  0001 C CNN
	1    7150 4700
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR72
U 1 1 5AE13BD1
P 7150 5250
F 0 "#PWR72" H 7150 5000 50  0001 C CNN
F 1 "GND" H 7150 5100 50  0000 C CNN
F 2 "" H 7150 5250 50  0001 C CNN
F 3 "" H 7150 5250 50  0001 C CNN
	1    7150 5250
	-1   0    0    -1  
$EndComp
Text Notes 6900 5350 2    60   ~ 0
Barometer/Temperature
$Comp
L GND #PWR70
U 1 1 5AE13C37
P 6750 5050
F 0 "#PWR70" H 6750 4800 50  0001 C CNN
F 1 "GND" H 6750 4900 50  0000 C CNN
F 2 "" H 6750 5050 50  0001 C CNN
F 3 "" H 6750 5050 50  0001 C CNN
	1    6750 5050
	-1   0    0    -1  
$EndComp
Text GLabel 8050 2500 0    60   Input ~ 0
SCL_3V
Text GLabel 8050 2600 0    60   Input ~ 0
SDA_3V
Text GLabel 5550 4850 0    60   Input ~ 0
SCL_3V
Text GLabel 5550 4950 0    60   Input ~ 0
SDA_3V
$Comp
L +3.0V #PWR55
U 1 1 5AE13CB0
P 8300 2200
F 0 "#PWR55" H 8300 2050 50  0001 C CNN
F 1 "+3.0V" H 8300 2340 50  0000 C CNN
F 2 "" H 8300 2200 50  0001 C CNN
F 3 "" H 8300 2200 50  0001 C CNN
	1    8300 2200
	1    0    0    -1  
$EndComp
$Comp
L +3.0V #PWR67
U 1 1 5AE13CD6
P 5800 4600
F 0 "#PWR67" H 5800 4450 50  0001 C CNN
F 1 "+3.0V" H 5800 4740 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR63
U 1 1 5AE13CF8
P 6150 3550
F 0 "#PWR63" H 6150 3300 50  0001 C CNN
F 1 "GND" H 6150 3400 50  0000 C CNN
F 2 "" H 6150 3550 50  0001 C CNN
F 3 "" H 6150 3550 50  0001 C CNN
	1    6150 3550
	1    0    0    -1  
$EndComp
NoConn ~ 6750 2750
NoConn ~ 6750 2850
NoConn ~ 6750 2950
NoConn ~ 6750 3050
$Comp
L +3.0V #PWR51
U 1 1 5AE13D04
P 6200 1800
F 0 "#PWR51" H 6200 1650 50  0001 C CNN
F 1 "+3.0V" H 6200 1940 50  0000 C CNN
F 2 "" H 6200 1800 50  0001 C CNN
F 3 "" H 6200 1800 50  0001 C CNN
	1    6200 1800
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5AE13D0A
P 6750 2050
F 0 "C13" H 6775 2150 50  0000 L CNN
F 1 "100nF" H 6775 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6788 1900 50  0001 C CNN
F 3 "" H 6750 2050 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR54
U 1 1 5AE13D11
P 6750 2200
F 0 "#PWR54" H 6750 1950 50  0001 C CNN
F 1 "GND" H 6750 2050 50  0000 C CNN
F 2 "" H 6750 2200 50  0001 C CNN
F 3 "" H 6750 2200 50  0001 C CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
$Comp
L +3.0V #PWR59
U 1 1 5AE13D7F
P 5500 2450
F 0 "#PWR59" H 5500 2300 50  0001 C CNN
F 1 "+3.0V" H 5500 2590 50  0000 C CNN
F 2 "" H 5500 2450 50  0001 C CNN
F 3 "" H 5500 2450 50  0001 C CNN
	1    5500 2450
	1    0    0    -1  
$EndComp
Text Notes 6300 3400 0    60   ~ 0
3 Axis Gyro
Text GLabel 5400 2750 0    60   Input ~ 0
SCL_3V
Text GLabel 5400 2850 0    60   Input ~ 0
SDA_3V
$Comp
L BMG250 U8
U 1 1 5AE13DA2
P 6250 2950
F 0 "U8" H 5950 3700 60  0000 C CNN
F 1 "BMG250" H 6450 2650 60  0000 C CNN
F 2 "footprints:Bosch_LGA-14" H 6150 2950 60  0001 C CNN
F 3 "" H 6150 2950 60  0001 C CNN
	1    6250 2950
	1    0    0    -1  
$EndComp
$Comp
L LSM6DS3HTR U7
U 1 1 5AE13B7B
P 9200 2550
F 0 "U7" H 8800 3150 60  0000 C CNN
F 1 "LSM6DS3HTR" H 9650 2000 60  0000 C CNN
F 2 "LSM6DS3:PQFN50P300X250X86-14N" H 9100 2300 60  0001 C CNN
F 3 "" H 9100 2300 60  0001 C CNN
	1    9200 2550
	1    0    0    -1  
$EndComp
NoConn ~ 9850 2500
NoConn ~ 9850 2400
NoConn ~ 6750 2550
NoConn ~ 6750 2650
$Comp
L Q_NMOS_GSD Q1
U 1 1 5AE7C8D9
P 2250 3900
F 0 "Q1" H 2450 3950 50  0000 L CNN
F 1 "DMG2302UK" H 2450 3850 50  0000 L CNN
F 2 "" H 2450 4000 50  0001 C CNN
F 3 "" H 2250 3900 50  0001 C CNN
	1    2250 3900
	0    -1   1    0   
$EndComp
$Comp
L R R13
U 1 1 5AE7CA68
P 2750 3750
F 0 "R13" V 2830 3750 50  0000 C CNN
F 1 "10K" V 2750 3750 50  0000 C CNN
F 2 "" V 2680 3750 50  0001 C CNN
F 3 "" H 2750 3750 50  0001 C CNN
	1    2750 3750
	-1   0    0    -1  
$EndComp
$Comp
L +3.0V #PWR62
U 1 1 5AE7CAE8
P 2750 3400
F 0 "#PWR62" H 2750 3250 50  0001 C CNN
F 1 "+3.0V" H 2750 3540 50  0000 C CNN
F 2 "" H 2750 3400 50  0001 C CNN
F 3 "" H 2750 3400 50  0001 C CNN
	1    2750 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 2450 5500 2650
Wire Wire Line
	5800 4600 5800 4750
Wire Wire Line
	8500 2600 8050 2600
Wire Wire Line
	8050 2500 8500 2500
Connection ~ 8300 2400
Wire Wire Line
	8500 2400 8300 2400
Wire Wire Line
	8300 2700 8500 2700
Wire Wire Line
	5400 2850 5700 2850
Wire Wire Line
	5400 2750 5700 2750
Connection ~ 6300 1900
Wire Wire Line
	6300 2050 6300 1900
Connection ~ 6200 1900
Wire Wire Line
	6200 1900 6750 1900
Wire Wire Line
	6200 1800 6200 2050
Connection ~ 6150 3450
Wire Wire Line
	6250 3450 6150 3450
Wire Wire Line
	6250 3400 6250 3450
Wire Wire Line
	6150 3400 6150 3550
Wire Wire Line
	8300 2200 8300 2700
Connection ~ 7150 4950
Wire Wire Line
	7150 4950 6750 4950
Connection ~ 7150 4750
Wire Wire Line
	6750 4750 7150 4750
Wire Wire Line
	7150 4700 7150 4950
Wire Wire Line
	5800 4950 5550 4950
Wire Wire Line
	5800 4850 5550 4850
Connection ~ 9950 2700
Wire Wire Line
	9850 2700 9950 2700
Wire Wire Line
	9950 2600 9850 2600
Wire Wire Line
	9950 2600 9950 2800
Connection ~ 9200 1650
Wire Wire Line
	9300 1650 9200 1650
Connection ~ 9200 1750
Wire Wire Line
	9200 1750 9100 1750
Wire Wire Line
	9100 1750 9100 1850
Wire Wire Line
	9200 1550 9200 1850
Connection ~ 9100 3100
Wire Wire Line
	9200 3100 9100 3100
Wire Wire Line
	9200 3050 9200 3100
Wire Wire Line
	9100 3050 9100 3150
Wire Wire Line
	5500 2650 5700 2650
Wire Wire Line
	5700 2550 5500 2550
Connection ~ 5500 2550
Wire Wire Line
	2750 3900 2750 4000
Wire Wire Line
	2450 4000 3400 4000
Wire Wire Line
	2750 3400 2750 3600
Wire Wire Line
	2250 3700 2250 3500
Wire Wire Line
	2250 3500 2750 3500
Connection ~ 2750 3500
Text GLabel 3400 4000 2    60   Input ~ 0
SCL_3V
Connection ~ 2750 4000
Wire Wire Line
	1700 4000 2050 4000
$Comp
L Q_NMOS_GSD Q2
U 1 1 5AE7D3DB
P 2250 5200
F 0 "Q2" H 2450 5250 50  0000 L CNN
F 1 "DMG2302UK" H 2450 5150 50  0000 L CNN
F 2 "" H 2450 5300 50  0001 C CNN
F 3 "" H 2250 5200 50  0001 C CNN
	1    2250 5200
	0    -1   1    0   
$EndComp
$Comp
L R R14
U 1 1 5AE7D3E2
P 2750 5050
F 0 "R14" V 2830 5050 50  0000 C CNN
F 1 "10K" V 2750 5050 50  0000 C CNN
F 2 "" V 2680 5050 50  0001 C CNN
F 3 "" H 2750 5050 50  0001 C CNN
	1    2750 5050
	-1   0    0    -1  
$EndComp
$Comp
L +3.0V #PWR68
U 1 1 5AE7D3E9
P 2750 4700
F 0 "#PWR68" H 2750 4550 50  0001 C CNN
F 1 "+3.0V" H 2750 4840 50  0000 C CNN
F 2 "" H 2750 4700 50  0001 C CNN
F 3 "" H 2750 4700 50  0001 C CNN
	1    2750 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2750 5200 2750 5300
Wire Wire Line
	2450 5300 3400 5300
Wire Wire Line
	2750 4700 2750 4900
Wire Wire Line
	2250 5000 2250 4800
Wire Wire Line
	2250 4800 2750 4800
Connection ~ 2750 4800
Text GLabel 3400 5300 2    60   Input ~ 0
SDA_3V
Connection ~ 2750 5300
Wire Wire Line
	1700 5300 2050 5300
$Comp
L LP2980AIM5-3.0 U6
U 1 1 5AE808B1
P 2450 2100
F 0 "U6" H 2200 2300 60  0000 C CNN
F 1 "LP2980AIM5-3.0" H 2450 1800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 2400 2100 60  0001 C CNN
F 3 "" H 2400 2100 60  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR57
U 1 1 5AE808B8
P 1850 2350
F 0 "#PWR57" H 1850 2100 50  0001 C CNN
F 1 "GND" H 1850 2200 50  0000 C CNN
F 2 "" H 1850 2350 50  0001 C CNN
F 3 "" H 1850 2350 50  0001 C CNN
	1    1850 2350
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5AE808BE
P 1600 2200
F 0 "C14" H 1625 2300 50  0000 L CNN
F 1 "1uF" H 1625 2100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_Tantal_D5.0mm_P2.50mm" H 1638 2050 50  0001 C CNN
F 3 "" H 1600 2200 50  0001 C CNN
	1    1600 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR56
U 1 1 5AE808C5
P 1600 2350
F 0 "#PWR56" H 1600 2100 50  0001 C CNN
F 1 "GND" H 1600 2200 50  0000 C CNN
F 2 "" H 1600 2350 50  0001 C CNN
F 3 "" H 1600 2350 50  0001 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
$Comp
L +3.0V #PWR53
U 1 1 5AE808CB
P 3200 1950
F 0 "#PWR53" H 3200 1800 50  0001 C CNN
F 1 "+3.0V" H 3200 2090 50  0000 C CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
NoConn ~ 2900 2250
$Comp
L C C15
U 1 1 5AE808D2
P 3200 2200
F 0 "C15" H 3225 2300 50  0000 L CNN
F 1 "2.2uF" H 3225 2100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_Tantal_D5.0mm_P2.50mm" H 3238 2050 50  0001 C CNN
F 3 "" H 3200 2200 50  0001 C CNN
	1    3200 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR58
U 1 1 5AE808D9
P 3200 2350
F 0 "#PWR58" H 3200 2100 50  0001 C CNN
F 1 "GND" H 3200 2200 50  0000 C CNN
F 2 "" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0001 C CNN
	1    3200 2350
	1    0    0    -1  
$EndComp
Text Notes 3350 2200 0    60   ~ 0
Al/Ta
Text Notes 1350 2250 0    60   ~ 0
Al
Wire Wire Line
	1850 2350 1850 2250
Wire Wire Line
	1850 2250 1950 2250
Wire Wire Line
	1600 1950 1600 2050
Wire Wire Line
	1600 2050 1950 2050
Connection ~ 1600 2050
Wire Wire Line
	1950 2150 1850 2150
Wire Wire Line
	1850 2150 1850 2050
Connection ~ 1850 2050
Wire Wire Line
	3200 1950 3200 2050
Wire Wire Line
	3200 2050 2900 2050
Connection ~ 3200 2050
$Comp
L +11.1V #PWR52
U 1 1 5AE808ED
P 1600 1950
F 0 "#PWR52" H 1600 1800 50  0001 C CNN
F 1 "+11.1V" H 1600 2090 50  0000 C CNN
F 2 "" H 1600 1950 50  0001 C CNN
F 3 "" H 1600 1950 50  0001 C CNN
	1    1600 1950
	1    0    0    -1  
$EndComp
Text HLabel 1700 4000 0    60   Input ~ 0
SCL_5V
Text HLabel 1700 5300 0    60   Input ~ 0
SDA_5V
$Comp
L TEST_1P J12
U 1 1 5AEBBCFA
P 3250 3850
F 0 "J12" H 3250 4120 50  0000 C CNN
F 1 "TEST_1P" H 3250 4050 50  0000 C CNN
F 2 "" H 3450 3850 50  0001 C CNN
F 3 "" H 3450 3850 50  0001 C CNN
	1    3250 3850
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J13
U 1 1 5AEBBD4E
P 3250 5150
F 0 "J13" H 3250 5420 50  0000 C CNN
F 1 "TEST_1P" H 3250 5350 50  0000 C CNN
F 2 "" H 3450 5150 50  0001 C CNN
F 3 "" H 3450 5150 50  0001 C CNN
	1    3250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3850 3250 4000
Connection ~ 3250 4000
Wire Wire Line
	3250 5150 3250 5300
Connection ~ 3250 5300
$Comp
L GND #PWR74
U 1 1 5AEFCE16
P 9100 5450
F 0 "#PWR74" H 9100 5200 50  0001 C CNN
F 1 "GND" H 9100 5300 50  0000 C CNN
F 2 "" H 9100 5450 50  0001 C CNN
F 3 "" H 9100 5450 50  0001 C CNN
	1    9100 5450
	1    0    0    -1  
$EndComp
NoConn ~ 9300 5350
NoConn ~ 9300 4150
$Comp
L +3.0V #PWR64
U 1 1 5AEFCE1E
P 9200 3850
F 0 "#PWR64" H 9200 3700 50  0001 C CNN
F 1 "+3.0V" H 9200 3990 50  0000 C CNN
F 2 "" H 9200 3850 50  0001 C CNN
F 3 "" H 9200 3850 50  0001 C CNN
	1    9200 3850
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5AEFCE24
P 9450 3950
F 0 "C16" V 9500 4000 50  0000 L CNN
F 1 "100nF" V 9500 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9488 3800 50  0001 C CNN
F 3 "" H 9450 3950 50  0001 C CNN
	1    9450 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR65
U 1 1 5AEFCE2B
P 9600 3950
F 0 "#PWR65" H 9600 3700 50  0001 C CNN
F 1 "GND" H 9600 3800 50  0000 C CNN
F 2 "" H 9600 3950 50  0001 C CNN
F 3 "" H 9600 3950 50  0001 C CNN
	1    9600 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR71
U 1 1 5AEFCE31
P 9950 5100
F 0 "#PWR71" H 9950 4850 50  0001 C CNN
F 1 "GND" H 9950 4950 50  0000 C CNN
F 2 "" H 9950 5100 50  0001 C CNN
F 3 "" H 9950 5100 50  0001 C CNN
	1    9950 5100
	1    0    0    -1  
$EndComp
Text Notes 9350 5550 0    60   ~ 0
3 axis IMU - accel & gyro
Text GLabel 8050 4800 0    60   Input ~ 0
SCL_3V
Text GLabel 8050 4900 0    60   Input ~ 0
SDA_3V
$Comp
L +3.0V #PWR73
U 1 1 5AEFCE3A
P 7950 5250
F 0 "#PWR73" H 7950 5100 50  0001 C CNN
F 1 "+3.0V" H 7950 5390 50  0000 C CNN
F 2 "" H 7950 5250 50  0001 C CNN
F 3 "" H 7950 5250 50  0001 C CNN
	1    7950 5250
	1    0    0    -1  
$EndComp
$Comp
L LSM6DS3HTR U9
U 1 1 5AEFCE40
P 9200 4850
F 0 "U9" H 8800 5450 60  0000 C CNN
F 1 "LSM6DS3HTR" H 9650 4300 60  0000 C CNN
F 2 "LSM6DS3:PQFN50P300X250X86-14N" H 9100 4600 60  0001 C CNN
F 3 "" H 9100 4600 60  0001 C CNN
	1    9200 4850
	1    0    0    -1  
$EndComp
NoConn ~ 9850 4800
NoConn ~ 9850 4700
Wire Wire Line
	8500 4900 8050 4900
Wire Wire Line
	8050 4800 8500 4800
Wire Wire Line
	8500 4700 8300 4700
Wire Wire Line
	8300 5000 8500 5000
Connection ~ 9950 5000
Wire Wire Line
	9850 5000 9950 5000
Wire Wire Line
	9950 4900 9850 4900
Wire Wire Line
	9950 4900 9950 5100
Connection ~ 9200 3950
Wire Wire Line
	9300 3950 9200 3950
Connection ~ 9200 4050
Wire Wire Line
	9200 4050 9100 4050
Wire Wire Line
	9100 4050 9100 4150
Wire Wire Line
	9200 3850 9200 4150
Connection ~ 9100 5400
Wire Wire Line
	9200 5400 9100 5400
Wire Wire Line
	9200 5350 9200 5400
Wire Wire Line
	9100 5350 9100 5450
Wire Wire Line
	7950 5250 8300 5250
Wire Wire Line
	8300 5250 8300 5000
$Comp
L GND #PWR66
U 1 1 5AF03E59
P 7950 4450
F 0 "#PWR66" H 7950 4200 50  0001 C CNN
F 1 "GND" H 7950 4300 50  0000 C CNN
F 2 "" H 7950 4450 50  0001 C CNN
F 3 "" H 7950 4450 50  0001 C CNN
	1    7950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4450 8300 4450
Wire Wire Line
	8300 4450 8300 4700
$EndSCHEMATC