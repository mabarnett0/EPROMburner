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
LIBS:special
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
LIBS:EPROMburner
LIBS:TEENSYPP2
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "23 jun 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L M27C160 U4
U 1 1 53A8384E
P 8450 2400
F 0 "U4" H 8450 1100 60  0000 C CNN
F 1 "M27C160" H 8450 3650 60  0000 C CNN
F 2 "~" H 8450 2400 60  0000 C CNN
F 3 "~" H 8450 2400 60  0000 C CNN
	1    8450 2400
	1    0    0    -1  
$EndComp
$Comp
L TEENSYPP2 U1
U 1 1 53A8385D
P 2750 2550
F 0 "U1" H 2750 2450 50  0000 C CNN
F 1 "TEENSYPP2" H 2750 2650 50  0000 C CNN
F 2 "MODULE" H 2750 2550 50  0001 C CNN
F 3 "DOCUMENTATION" H 2750 2550 50  0001 C CNN
	1    2750 2550
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U2
U 1 1 53A8386C
P 3500 5050
F 0 "U2" H 3650 5650 70  0000 C CNN
F 1 "74HC595" H 3500 4450 70  0000 C CNN
F 2 "~" H 3500 5050 60  0000 C CNN
F 3 "~" H 3500 5050 60  0000 C CNN
	1    3500 5050
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U3
U 1 1 53A8387B
P 3500 6450
F 0 "U3" H 3650 7050 70  0000 C CNN
F 1 "74HC595" H 3500 5850 70  0000 C CNN
F 2 "~" H 3500 6450 60  0000 C CNN
F 3 "~" H 3500 6450 60  0000 C CNN
	1    3500 6450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR5
U 1 1 53A838B2
P 4200 1500
F 0 "#PWR5" H 4200 1600 30  0001 C CNN
F 1 "VCC" H 4200 1600 30  0000 C CNN
F 2 "" H 4200 1500 60  0000 C CNN
F 3 "" H 4200 1500 60  0000 C CNN
	1    4200 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 53A838C1
P 1300 3600
F 0 "#PWR1" H 1300 3600 30  0001 C CNN
F 1 "GND" H 1300 3530 30  0001 C CNN
F 2 "" H 1300 3600 60  0000 C CNN
F 3 "" H 1300 3600 60  0000 C CNN
	1    1300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1600 4200 1600
Wire Wire Line
	4200 1600 4200 1500
Wire Wire Line
	1400 1600 1300 1600
Wire Wire Line
	1300 1600 1300 3600
Text Label 1100 2800 0    60   ~ 0
Q0
Text Label 1100 2900 0    60   ~ 0
Q1
Text Label 1100 3100 0    60   ~ 0
Q3
Text Label 1100 3200 0    60   ~ 0
Q4
Text Label 1100 3300 0    60   ~ 0
Q5
Text Label 1100 3400 0    60   ~ 0
Q6
Text Label 1100 3500 0    60   ~ 0
Q7
Text Label 4450 2800 2    60   ~ 0
Q8
Text Label 4450 2900 2    60   ~ 0
Q9
Text Label 4450 3000 2    60   ~ 0
Q10
Text Label 4450 3100 2    60   ~ 0
Q11
Text Label 4450 3200 2    60   ~ 0
Q12
Text Label 4450 3300 2    60   ~ 0
Q13
Text Label 4450 3400 2    60   ~ 0
Q14
Text Label 4450 3500 2    60   ~ 0
Q15
Text Label 9100 1650 2    60   ~ 0
Q0
Text Label 9100 1750 2    60   ~ 0
Q1
Text Label 9100 1850 2    60   ~ 0
Q2
Text Label 9100 1950 2    60   ~ 0
Q3
Text Label 9100 2050 2    60   ~ 0
Q4
Text Label 9100 2150 2    60   ~ 0
Q5
Text Label 9100 2250 2    60   ~ 0
Q6
Text Label 9100 2350 2    60   ~ 0
Q7
Text Label 9100 2450 2    60   ~ 0
Q8
Text Label 9100 2550 2    60   ~ 0
Q9
Text Label 9100 2650 2    60   ~ 0
Q10
Text Label 9100 2750 2    60   ~ 0
Q11
Text Label 9100 2850 2    60   ~ 0
Q12
Text Label 9100 2950 2    60   ~ 0
Q13
Text Label 9100 3050 2    60   ~ 0
Q14
Text Label 9100 3150 2    60   ~ 0
Q15
Entry Wire Line
	9100 1650 9200 1550
Entry Wire Line
	9100 1750 9200 1650
Entry Wire Line
	9100 1850 9200 1750
Entry Wire Line
	9100 1950 9200 1850
Entry Wire Line
	9100 2050 9200 1950
Entry Wire Line
	9100 2150 9200 2050
Entry Wire Line
	9100 2250 9200 2150
Entry Wire Line
	9100 2350 9200 2250
Entry Wire Line
	9100 2450 9200 2350
Entry Wire Line
	9100 2550 9200 2450
Entry Wire Line
	9100 2650 9200 2550
Entry Wire Line
	9100 2750 9200 2650
Entry Wire Line
	9100 2850 9200 2750
Entry Wire Line
	9100 2950 9200 2850
Entry Wire Line
	9100 3050 9200 2950
Entry Wire Line
	9100 3150 9200 3050
Wire Wire Line
	1100 2800 1400 2800
Wire Wire Line
	1100 2900 1400 2900
Wire Wire Line
	1100 3000 1400 3000
Wire Wire Line
	1100 3100 1400 3100
Wire Wire Line
	1100 3200 1400 3200
Wire Wire Line
	1100 3300 1400 3300
Wire Wire Line
	1100 3400 1400 3400
Wire Wire Line
	1100 3500 1400 3500
Wire Wire Line
	4100 2800 4450 2800
Wire Wire Line
	4100 2900 4450 2900
Wire Wire Line
	4100 3000 4450 3000
Wire Wire Line
	4100 3100 4450 3100
Wire Wire Line
	4100 3200 4450 3200
Wire Wire Line
	4100 3300 4450 3300
Wire Wire Line
	4100 3400 4450 3400
Wire Wire Line
	4100 3500 4450 3500
Wire Bus Line
	9200 750  9200 3050
Wire Wire Line
	8900 1650 9100 1650
Wire Wire Line
	8900 1750 9100 1750
Wire Wire Line
	8900 1850 9100 1850
Wire Wire Line
	8900 1950 9100 1950
Wire Wire Line
	8900 2050 9100 2050
Wire Wire Line
	8900 2150 9100 2150
Wire Wire Line
	8900 2250 9100 2250
Wire Wire Line
	8900 2350 9100 2350
Wire Wire Line
	8900 2450 9100 2450
Wire Wire Line
	8900 2550 9100 2550
Wire Wire Line
	8900 2650 9100 2650
Wire Wire Line
	8900 2750 9100 2750
Wire Wire Line
	8900 2850 9100 2850
Wire Wire Line
	8900 2950 9100 2950
Wire Wire Line
	8900 3050 9100 3050
Wire Wire Line
	8900 3150 9100 3150
Text Label 7750 1300 0    60   ~ 0
A0
Text Label 7750 1400 0    60   ~ 0
A1
Text Label 7750 1500 0    60   ~ 0
A2
Text Label 7750 1600 0    60   ~ 0
A3
Text Label 7750 1700 0    60   ~ 0
A4
Text Label 7750 1800 0    60   ~ 0
A5
Text Label 7750 1900 0    60   ~ 0
A6
Text Label 7750 2000 0    60   ~ 0
A7
Text Label 7750 2100 0    60   ~ 0
A8
Text Label 7750 2200 0    60   ~ 0
A9
Text Label 7750 2300 0    60   ~ 0
A10
Text Label 7750 2400 0    60   ~ 0
A11
Text Label 7750 2500 0    60   ~ 0
A12
Text Label 7750 2600 0    60   ~ 0
A13
Text Label 7750 2700 0    60   ~ 0
A14
Text Label 7750 2800 0    60   ~ 0
A15
Text Label 7750 2900 0    60   ~ 0
A16
Text Label 7750 3000 0    60   ~ 0
A17
Text Label 7750 3100 0    60   ~ 0
A18
Text Label 7750 3200 0    60   ~ 0
A19
Text Label 4450 6000 2    60   ~ 0
A0
Text Label 4450 6100 2    60   ~ 0
A1
Text Label 4450 6200 2    60   ~ 0
A2
Text Label 4450 6300 2    60   ~ 0
A3
Text Label 4450 6400 2    60   ~ 0
A4
Text Label 4450 6500 2    60   ~ 0
A5
Text Label 4450 6600 2    60   ~ 0
A6
Text Label 4450 6700 2    60   ~ 0
A7
Text Label 4450 4600 2    60   ~ 0
A8
Text Label 4450 4700 2    60   ~ 0
A9
Text Label 4450 4800 2    60   ~ 0
A10
Text Label 4450 4900 2    60   ~ 0
A11
Text Label 4450 5000 2    60   ~ 0
A12
Text Label 4450 5100 2    60   ~ 0
A13
Text Label 4450 5200 2    60   ~ 0
A14
Text Label 4450 5300 2    60   ~ 0
A15
Entry Wire Line
	4450 5300 4550 5200
Entry Wire Line
	4450 6000 4550 5900
Entry Wire Line
	4450 6100 4550 6000
Entry Wire Line
	4450 6200 4550 6100
Entry Wire Line
	4450 6300 4550 6200
Entry Wire Line
	4450 6400 4550 6300
Entry Wire Line
	4450 6500 4550 6400
Entry Wire Line
	4450 6600 4550 6500
Entry Wire Line
	4450 6700 4550 6600
Entry Wire Line
	4450 4600 4550 4500
Entry Wire Line
	4450 4700 4550 4600
Entry Wire Line
	4450 4800 4550 4700
Entry Wire Line
	4450 4900 4550 4800
Entry Wire Line
	4450 5000 4550 4900
Entry Wire Line
	4450 5100 4550 5000
Entry Wire Line
	4450 5200 4550 5100
Wire Wire Line
	4200 6000 4450 6000
Wire Wire Line
	4200 6100 4450 6100
Wire Wire Line
	4200 6200 4450 6200
Wire Wire Line
	4200 6300 4450 6300
Wire Wire Line
	4200 6400 4450 6400
Wire Wire Line
	4200 6500 4450 6500
Wire Wire Line
	4200 6600 4450 6600
Wire Wire Line
	4200 6700 4450 6700
Wire Wire Line
	4200 4600 4450 4600
Wire Wire Line
	4200 4700 4450 4700
Wire Wire Line
	4200 4800 4450 4800
Wire Wire Line
	4200 4900 4450 4900
Wire Wire Line
	4200 5000 4450 5000
Wire Wire Line
	4200 5100 4450 5100
Wire Wire Line
	4200 5200 4450 5200
Wire Wire Line
	4200 5300 4450 5300
Wire Wire Line
	2700 5750 2700 6000
Wire Wire Line
	2700 6000 2800 6000
Wire Wire Line
	2700 5750 4300 5750
Wire Wire Line
	4300 5750 4300 5500
Wire Wire Line
	4300 5500 4200 5500
Entry Wire Line
	7650 3100 7750 3200
Entry Wire Line
	7650 1200 7750 1300
Entry Wire Line
	7650 1300 7750 1400
Entry Wire Line
	7650 1400 7750 1500
Entry Wire Line
	7650 1500 7750 1600
Entry Wire Line
	7650 1600 7750 1700
Entry Wire Line
	7650 1700 7750 1800
Entry Wire Line
	7650 1800 7750 1900
Entry Wire Line
	7650 1900 7750 2000
Entry Wire Line
	7650 2000 7750 2100
Entry Wire Line
	7650 2100 7750 2200
Entry Wire Line
	7650 2200 7750 2300
Entry Wire Line
	7650 2300 7750 2400
Entry Wire Line
	7650 2400 7750 2500
Entry Wire Line
	7650 2500 7750 2600
Entry Wire Line
	7650 2600 7750 2700
Entry Wire Line
	7650 2700 7750 2800
Entry Wire Line
	7650 2800 7750 2900
Entry Wire Line
	7650 2900 7750 3000
Entry Wire Line
	7650 3000 7750 3100
Wire Wire Line
	7750 1300 8000 1300
Wire Wire Line
	7750 1400 8000 1400
Wire Wire Line
	7750 1500 8000 1500
Wire Wire Line
	7750 1600 8000 1600
Wire Wire Line
	7750 1700 8000 1700
Wire Wire Line
	7750 1800 8000 1800
Wire Wire Line
	7750 1900 8000 1900
Wire Wire Line
	7750 2000 8000 2000
Wire Wire Line
	7750 2100 8000 2100
Wire Wire Line
	7750 2200 8000 2200
Wire Wire Line
	7750 2300 8000 2300
Wire Wire Line
	7750 2400 8000 2400
Wire Wire Line
	7750 2500 8000 2500
Wire Wire Line
	7750 2600 8000 2600
Wire Wire Line
	7750 2700 8000 2700
Wire Wire Line
	7750 2800 8000 2800
Wire Wire Line
	7750 2900 8000 2900
Wire Wire Line
	7750 3000 8000 3000
Wire Wire Line
	7750 3100 8000 3100
Wire Wire Line
	7750 3200 8000 3200
Text Label 1100 3000 0    60   ~ 0
Q2
Entry Wire Line
	1000 2700 1100 2800
Entry Wire Line
	1000 2800 1100 2900
Entry Wire Line
	1000 2900 1100 3000
Entry Wire Line
	1000 3000 1100 3100
Entry Wire Line
	1000 3100 1100 3200
Entry Wire Line
	1000 3200 1100 3300
Entry Wire Line
	1000 3300 1100 3400
Entry Wire Line
	1000 3400 1100 3500
Entry Wire Line
	4450 2800 4550 2700
Entry Wire Line
	4450 2900 4550 2800
Entry Wire Line
	4450 3000 4550 2900
Entry Wire Line
	4450 3100 4550 3000
Entry Wire Line
	4450 3200 4550 3100
Entry Wire Line
	4450 3300 4550 3200
Entry Wire Line
	4450 3400 4550 3300
Entry Wire Line
	4450 3500 4550 3400
Wire Bus Line
	1000 3400 1000 750 
Wire Bus Line
	1000 750  9200 750 
Wire Bus Line
	4550 750  4550 6600
Text Label 1100 2600 0    60   ~ 0
A16
Text Label 1100 2700 0    60   ~ 0
A17
Text Label 4450 2400 2    60   ~ 0
A18
Text Label 4450 2500 2    60   ~ 0
A19
Entry Wire Line
	4450 2400 4550 2500
Entry Wire Line
	4450 2500 4550 2600
Entry Wire Line
	1000 2500 1100 2600
Entry Wire Line
	1000 2600 1100 2700
Wire Wire Line
	4100 2400 4450 2400
Wire Wire Line
	4100 2500 4450 2500
Wire Wire Line
	1100 2600 1400 2600
Wire Wire Line
	1100 2700 1400 2700
Wire Wire Line
	4100 1900 4650 1900
Wire Wire Line
	4650 1900 4650 4150
Wire Wire Line
	4650 4150 2700 4150
Wire Wire Line
	2700 4150 2700 4600
Wire Wire Line
	2700 4600 2800 4600
Wire Wire Line
	2800 5100 2600 5100
Wire Wire Line
	2600 4250 2600 6500
Wire Wire Line
	2600 6500 2800 6500
Wire Wire Line
	2800 4800 2500 4800
Wire Wire Line
	2500 4350 2500 6200
Wire Wire Line
	2500 6200 2800 6200
Wire Wire Line
	2600 4250 4750 4250
Wire Wire Line
	4750 4250 4750 1800
Wire Wire Line
	4750 1800 4100 1800
Connection ~ 2600 5100
Wire Wire Line
	4100 1700 4850 1700
Wire Wire Line
	4850 1700 4850 4350
Wire Wire Line
	4850 4350 2500 4350
Connection ~ 2500 4800
$Comp
L GND #PWR3
U 1 1 53A84186
P 2700 5300
F 0 "#PWR3" H 2700 5300 30  0001 C CNN
F 1 "GND" H 2700 5230 30  0001 C CNN
F 2 "" H 2700 5300 60  0000 C CNN
F 3 "" H 2700 5300 60  0000 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 53A84195
P 2700 6700
F 0 "#PWR4" H 2700 6700 30  0001 C CNN
F 1 "GND" H 2700 6630 30  0001 C CNN
F 2 "" H 2700 6700 60  0000 C CNN
F 3 "" H 2700 6700 60  0000 C CNN
	1    2700 6700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 53A841A4
P 2400 4800
F 0 "#PWR2" H 2400 4900 30  0001 C CNN
F 1 "VCC" H 2400 4900 30  0000 C CNN
F 2 "" H 2400 4800 60  0000 C CNN
F 3 "" H 2400 4800 60  0000 C CNN
	1    2400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4900 2400 4900
Wire Wire Line
	2400 4800 2400 6300
Wire Wire Line
	2400 6300 2800 6300
Connection ~ 2400 4900
Wire Wire Line
	2800 6600 2700 6600
Wire Wire Line
	2700 6600 2700 6700
Wire Wire Line
	2800 5200 2700 5200
Wire Wire Line
	2700 5200 2700 5300
NoConn ~ 4200 6900
$Comp
L GND #PWR11
U 1 1 53A84367
P 9000 3600
F 0 "#PWR11" H 9000 3600 30  0001 C CNN
F 1 "GND" H 9000 3530 30  0001 C CNN
F 2 "" H 9000 3600 60  0000 C CNN
F 3 "" H 9000 3600 60  0000 C CNN
	1    9000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3400 9000 3400
Wire Wire Line
	9000 3400 9000 3600
Wire Wire Line
	8900 3500 9000 3500
Connection ~ 9000 3500
Text Label 1100 2400 0    60   ~ 0
~G
Text Label 1100 2500 0    60   ~ 0
~E
Entry Wire Line
	1000 2300 1100 2400
Entry Wire Line
	1000 2400 1100 2500
Wire Wire Line
	1100 2400 1400 2400
Wire Wire Line
	1400 2500 1100 2500
Text Label 7750 3400 0    60   ~ 0
~E
Text Label 7750 3500 0    60   ~ 0
~G
Entry Wire Line
	7650 3300 7750 3400
Entry Wire Line
	7650 3400 7750 3500
Wire Bus Line
	7650 3400 7650 750 
Wire Wire Line
	7750 3400 8000 3400
Wire Wire Line
	8000 3500 7750 3500
$Comp
L LM317AT U5
U 1 1 53A846B1
P 8800 4250
F 0 "U5" H 8600 4450 40  0000 C CNN
F 1 "LM317AT" H 8800 4450 40  0000 L CNN
F 2 "TO-220" H 8800 4350 30  0000 C CIN
F 3 "~" H 8800 4250 60  0000 C CNN
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 53A846C0
P 9150 4600
F 0 "R5" V 9230 4600 40  0000 C CNN
F 1 "240" V 9157 4601 40  0000 C CNN
F 2 "~" V 9080 4600 30  0000 C CNN
F 3 "~" H 9150 4600 30  0000 C CNN
	1    9150 4600
	0    -1   -1   0   
$EndComp
$Comp
L VEE #PWR9
U 1 1 53A847CA
P 8300 4100
F 0 "#PWR9" H 8300 4300 40  0001 C CNN
F 1 "VEE" H 8300 4250 40  0000 C CNN
F 2 "" H 8300 4100 60  0000 C CNN
F 3 "" H 8300 4100 60  0000 C CNN
	1    8300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4100 8300 4200
Wire Wire Line
	8300 4200 8400 4200
Wire Wire Line
	8800 4500 8800 4600
Wire Wire Line
	8700 4600 8900 4600
$Comp
L R R3
U 1 1 53A84A65
P 8450 4600
F 0 "R3" V 8530 4600 40  0000 C CNN
F 1 "150" V 8457 4601 40  0000 C CNN
F 2 "~" V 8380 4600 30  0000 C CNN
F 3 "~" H 8450 4600 30  0000 C CNN
	1    8450 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 53A84A74
P 7850 4600
F 0 "R1" V 7930 4600 40  0000 C CNN
F 1 "820" V 7857 4601 40  0000 C CNN
F 2 "~" V 7780 4600 30  0000 C CNN
F 3 "~" H 7850 4600 30  0000 C CNN
	1    7850 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 4600 7600 4600
Wire Wire Line
	8100 4600 8200 4600
Connection ~ 8800 4600
$Comp
L LM317AT U6
U 1 1 53A84CAD
P 8800 5050
F 0 "U6" H 8600 5250 40  0000 C CNN
F 1 "LM317AT" H 8800 5250 40  0000 L CNN
F 2 "TO-220" H 8800 5150 30  0000 C CIN
F 3 "~" H 8800 5050 60  0000 C CNN
	1    8800 5050
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 53A84CB3
P 9150 5400
F 0 "R6" V 9230 5400 40  0000 C CNN
F 1 "240" V 9157 5401 40  0000 C CNN
F 2 "~" V 9080 5400 30  0000 C CNN
F 3 "~" H 9150 5400 30  0000 C CNN
	1    9150 5400
	0    -1   -1   0   
$EndComp
$Comp
L VEE #PWR10
U 1 1 53A84CB9
P 8300 4900
F 0 "#PWR10" H 8300 5100 40  0001 C CNN
F 1 "VEE" H 8300 5050 40  0000 C CNN
F 2 "" H 8300 4900 60  0000 C CNN
F 3 "" H 8300 4900 60  0000 C CNN
	1    8300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4900 8300 5000
Wire Wire Line
	8300 5000 8400 5000
Wire Wire Line
	8800 5300 8800 5400
Wire Wire Line
	8700 5400 8900 5400
$Comp
L R R4
U 1 1 53A84CC6
P 8450 5400
F 0 "R4" V 8530 5400 40  0000 C CNN
F 1 "390" V 8457 5401 40  0000 C CNN
F 2 "~" V 8380 5400 30  0000 C CNN
F 3 "~" H 8450 5400 30  0000 C CNN
	1    8450 5400
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 53A84CCC
P 7850 5400
F 0 "R2" V 7930 5400 40  0000 C CNN
F 1 "1K8" V 7857 5401 40  0000 C CNN
F 2 "~" V 7780 5400 30  0000 C CNN
F 3 "~" H 7850 5400 30  0000 C CNN
	1    7850 5400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR8
U 1 1 53A84CD2
P 7500 5500
F 0 "#PWR8" H 7500 5500 30  0001 C CNN
F 1 "GND" H 7500 5430 30  0001 C CNN
F 2 "" H 7500 5500 60  0000 C CNN
F 3 "" H 7500 5500 60  0000 C CNN
	1    7500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4600 7500 5500
Wire Wire Line
	7500 5400 7600 5400
Wire Wire Line
	8100 5400 8200 5400
Connection ~ 8800 5400
Wire Wire Line
	9200 4200 9550 4200
Wire Wire Line
	9400 4200 9400 4600
Wire Wire Line
	9200 5000 9650 5000
Wire Wire Line
	9400 5000 9400 5400
Connection ~ 7500 5400
$Comp
L JUMPER3 JP2
U 1 1 53A84E8B
P 10000 1600
F 0 "JP2" H 10050 1500 40  0000 L CNN
F 1 "JUMPER3" H 10000 1700 40  0000 C CNN
F 2 "~" H 10000 1600 60  0000 C CNN
F 3 "~" H 10000 1600 60  0000 C CNN
	1    10000 1600
	-1   0    0    1   
$EndComp
$Comp
L JUMPER3 JP1
U 1 1 53A84E9A
P 10000 1250
F 0 "JP1" H 10050 1150 40  0000 L CNN
F 1 "JUMPER3" H 10000 1350 40  0000 C CNN
F 2 "~" H 10000 1250 60  0000 C CNN
F 3 "~" H 10000 1250 60  0000 C CNN
	1    10000 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 1300 9300 1300
Wire Wire Line
	9300 1300 9300 1050
Wire Wire Line
	9300 1050 10000 1050
Wire Wire Line
	10000 1050 10000 1150
Wire Wire Line
	10000 1500 10000 1400
Wire Wire Line
	10000 1400 8900 1400
Wire Wire Line
	10350 1600 10250 1600
Wire Wire Line
	10350 1150 10350 1600
Wire Wire Line
	10350 1250 10250 1250
$Comp
L VCC #PWR14
U 1 1 53A85108
P 10350 1150
F 0 "#PWR14" H 10350 1250 30  0001 C CNN
F 1 "VCC" H 10350 1250 30  0000 C CNN
F 2 "" H 10350 1150 60  0000 C CNN
F 3 "" H 10350 1150 60  0000 C CNN
	1    10350 1150
	1    0    0    -1  
$EndComp
Connection ~ 10350 1250
Wire Wire Line
	9750 1600 9650 1600
Wire Wire Line
	9650 1600 9650 5000
Connection ~ 9400 5000
Wire Wire Line
	9550 4200 9550 1250
Wire Wire Line
	9550 1250 9750 1250
Connection ~ 9400 4200
$Comp
L CONN_4X2 P1
U 1 1 53A852E3
P 6200 2650
F 0 "P1" H 6200 2900 50  0000 C CNN
F 1 "SDRAMPS" V 6200 2650 40  0000 C CNN
F 2 "~" H 6200 2650 60  0000 C CNN
F 3 "~" H 6200 2650 60  0000 C CNN
	1    6200 2650
	1    0    0    1   
$EndComp
$Comp
L GND #PWR6
U 1 1 53A852FC
P 6600 3050
F 0 "#PWR6" H 6600 3050 30  0001 C CNN
F 1 "GND" H 6600 2980 30  0001 C CNN
F 2 "" H 6600 3050 60  0000 C CNN
F 3 "" H 6600 3050 60  0000 C CNN
	1    6600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2800 6600 3050
Wire Wire Line
	5800 2800 5800 2950
Wire Wire Line
	5800 2950 6600 2950
Connection ~ 6600 2950
Text Label 5600 2700 0    60   ~ 0
CS
Text Label 6800 2700 2    60   ~ 0
SCK
Text Label 5600 2600 0    60   ~ 0
DI
Text Label 6800 2600 2    60   ~ 0
DO
NoConn ~ 5800 2500
$Comp
L VCC #PWR7
U 1 1 53A854EF
P 6700 2400
F 0 "#PWR7" H 6700 2500 30  0001 C CNN
F 1 "VCC" H 6700 2500 30  0000 C CNN
F 2 "" H 6700 2400 60  0000 C CNN
F 3 "" H 6700 2400 60  0000 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2400 6700 2500
Wire Wire Line
	6700 2500 6600 2500
Wire Wire Line
	5800 2600 5150 2600
Wire Wire Line
	5050 2700 5800 2700
Wire Wire Line
	6900 2700 6600 2700
Wire Wire Line
	6600 2600 7000 2600
Wire Wire Line
	5150 2600 5150 2100
Wire Wire Line
	5150 2100 4100 2100
Wire Wire Line
	4100 2200 6900 2200
Wire Wire Line
	6900 2200 6900 2700
Wire Wire Line
	7000 2600 7000 2000
Wire Wire Line
	7000 2000 4100 2000
Wire Wire Line
	4100 2300 5050 2300
Wire Wire Line
	5050 2300 5050 2700
Text Notes 9750 1600 1    60   ~ 0
PROGRAM
Text Notes 10350 1600 1    60   ~ 0
READ
$Comp
L BARREL_JACK CON1
U 1 1 53A85C8D
P 8750 6450
F 0 "CON1" H 8750 6700 60  0000 C CNN
F 1 "BARREL_JACK" H 8750 6250 60  0000 C CNN
F 2 "~" H 8750 6450 60  0000 C CNN
F 3 "~" H 8750 6450 60  0000 C CNN
	1    8750 6450
	1    0    0    -1  
$EndComp
$Comp
L VEE #PWR12
U 1 1 53A85C9C
P 9150 6250
F 0 "#PWR12" H 9150 6450 40  0001 C CNN
F 1 "VEE" H 9150 6400 40  0000 C CNN
F 2 "" H 9150 6250 60  0000 C CNN
F 3 "" H 9150 6250 60  0000 C CNN
	1    9150 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 53A85CAB
P 9150 6650
F 0 "#PWR13" H 9150 6650 30  0001 C CNN
F 1 "GND" H 9150 6580 30  0001 C CNN
F 2 "" H 9150 6650 60  0000 C CNN
F 3 "" H 9150 6650 60  0000 C CNN
	1    9150 6650
	1    0    0    -1  
$EndComp
NoConn ~ 9050 6450
Wire Wire Line
	9050 6350 9150 6350
Wire Wire Line
	9150 6350 9150 6250
Wire Wire Line
	9050 6550 9150 6550
Wire Wire Line
	9150 6550 9150 6650
NoConn ~ 4100 2600
NoConn ~ 4100 2700
NoConn ~ 2200 4000
NoConn ~ 2300 4000
NoConn ~ 2400 4000
NoConn ~ 2500 4000
NoConn ~ 2600 4000
NoConn ~ 2700 4000
NoConn ~ 2800 4000
NoConn ~ 2900 4000
NoConn ~ 3000 4000
NoConn ~ 3100 4000
NoConn ~ 3200 4000
NoConn ~ 3300 4000
NoConn ~ 3200 1100
NoConn ~ 3300 1100
NoConn ~ 1400 1700
NoConn ~ 1400 1800
NoConn ~ 1400 1900
NoConn ~ 1400 2000
NoConn ~ 1400 2100
NoConn ~ 1400 2200
NoConn ~ 1400 2300
$EndSCHEMATC
