EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_01x06 J1
U 1 1 5FE8895E
P 1550 1650
F 0 "J1" H 1468 1125 50  0000 C CNN
F 1 "Charge Controller" H 1468 1216 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Sr_42819-62XX_1x06_P10.00mm_Vertical_ThermalVias" H 1550 1650 50  0001 C CNN
F 3 "~" H 1550 1650 50  0001 C CNN
	1    1550 1650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5FE89794
P 4350 1550
F 0 "J2" H 4300 1950 50  0000 L BNN
F 1 "Devices" H 4200 1850 50  0000 L BNN
F 2 "Connector_Molex:Molex_Mini-Fit_Sr_42819-62XX_1x06_P10.00mm_Vertical_ThermalVias" H 4350 1550 50  0001 C CNN
F 3 "~" H 4350 1550 50  0001 C CNN
	1    4350 1550
	1    0    0    -1  
$EndComp
Text Notes 1450 1850 2    50   ~ 0
PV+
Text Notes 1450 1750 2    50   ~ 0
PV-
Text Notes 1450 1650 2    50   ~ 0
BATT+
Text Notes 1450 1550 2    50   ~ 0
BATT-
Text Notes 1450 1450 2    50   ~ 0
LOAD+
Text Notes 1450 1350 2    50   ~ 0
LOAD-
$Comp
L SparkFun-PowerSymbols:GND #GND01
U 1 1 5FE8A971
P 1900 2050
F 0 "#GND01" H 1950 2000 45  0001 L BNN
F 1 "GND" H 1900 1880 45  0000 C CNN
F 2 "" H 1900 1950 60  0001 C CNN
F 3 "" H 1900 1950 60  0001 C CNN
	1    1900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1350 1900 1350
Wire Wire Line
	1900 1350 1900 1550
Wire Wire Line
	1750 1550 1900 1550
Connection ~ 1900 1550
Wire Wire Line
	1900 1550 1900 1750
Wire Wire Line
	1750 1450 2650 1450
Wire Wire Line
	1750 1750 1900 1750
Connection ~ 1900 1750
Wire Wire Line
	1900 1750 1900 2050
Wire Wire Line
	1750 1650 2650 1650
Wire Wire Line
	1750 1850 2650 1850
Text Label 2600 1450 2    50   ~ 0
CHG_LOAD_POS
Text Label 2600 1650 2    50   ~ 0
CHG_BATT_POS
Text Label 2600 1850 2    50   ~ 0
CHG_PV_POS
$Comp
L SparkFun-PowerSymbols:GND #GND05
U 1 1 5FE8B77B
P 4000 2050
F 0 "#GND05" H 4050 2000 45  0001 L BNN
F 1 "GND" H 4000 1880 45  0000 C CNN
F 2 "" H 4000 1950 60  0001 C CNN
F 3 "" H 4000 1950 60  0001 C CNN
	1    4000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2050 4000 1750
Wire Wire Line
	4000 1750 4150 1750
Wire Wire Line
	4000 1750 4000 1550
Wire Wire Line
	4000 1550 4150 1550
Connection ~ 4000 1750
Wire Wire Line
	4000 1550 4000 1350
Wire Wire Line
	4000 1350 4150 1350
Connection ~ 4000 1550
Wire Wire Line
	4150 1450 3250 1450
Wire Wire Line
	4150 1650 3250 1650
Wire Wire Line
	4150 1850 3250 1850
Text Label 3300 1450 0    50   ~ 0
DEV_LOAD_POS
Text Label 3300 1650 0    50   ~ 0
DEV_BATT_POS
Text Label 3300 1850 0    50   ~ 0
DEV_PV_POS
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5FE8D0FB
P 2450 2950
F 0 "U1" H 2450 3192 50  0000 C CNN
F 1 "LM7805_TO220" H 2450 3101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2450 3175 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 2450 2900 50  0001 C CNN
	1    2450 2950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C1
U 1 1 5FE90E33
P 1900 3450
F 0 "C1" H 2008 3595 45  0000 L CNN
F 1 "0.33UF-1206" H 2008 3511 45  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 3700 20  0001 C CNN
F 3 "" H 1900 3450 50  0001 C CNN
F 4 "CAP-09822" H 2008 3416 60  0000 L CNN "Field4"
	1    1900 3450
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-1206-50V-10% C2
U 1 1 5FE916E0
P 3000 3450
F 0 "C2" H 3108 3595 45  0000 L CNN
F 1 "0.1UF-1206" H 3108 3511 45  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3000 3700 20  0001 C CNN
F 3 "" H 3000 3450 50  0001 C CNN
F 4 "CAP-09822" H 3108 3416 60  0000 L CNN "Field4"
	1    3000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2950 1900 3250
Wire Wire Line
	1900 2950 2150 2950
Connection ~ 1900 2950
Wire Wire Line
	2750 2950 3000 2950
Wire Wire Line
	3000 2950 3000 3250
Wire Wire Line
	3000 2950 3600 2950
Connection ~ 3000 2950
Wire Wire Line
	1900 3550 1900 3650
Wire Wire Line
	2450 3250 2450 3650
Wire Wire Line
	3000 3550 3000 3650
$Comp
L SparkFun-PowerSymbols:GND #GND02
U 1 1 5FE94424
P 1900 3650
F 0 "#GND02" H 1950 3600 45  0001 L BNN
F 1 "GND" H 1900 3480 45  0000 C CNN
F 2 "" H 1900 3550 60  0001 C CNN
F 3 "" H 1900 3550 60  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND03
U 1 1 5FE94AB0
P 2450 3650
F 0 "#GND03" H 2500 3600 45  0001 L BNN
F 1 "GND" H 2450 3480 45  0000 C CNN
F 2 "" H 2450 3550 60  0001 C CNN
F 3 "" H 2450 3550 60  0001 C CNN
	1    2450 3650
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND04
U 1 1 5FE94E09
P 3000 3650
F 0 "#GND04" H 3050 3600 45  0001 L BNN
F 1 "GND" H 3000 3480 45  0000 C CNN
F 2 "" H 3000 3550 60  0001 C CNN
F 3 "" H 3000 3550 60  0001 C CNN
	1    3000 3650
	1    0    0    -1  
$EndComp
Text Label 1250 2950 0    50   ~ 0
CHG_LOAD_POS
Text Label 3350 2950 0    50   ~ 0
5V
$Comp
L PV-Monitor:ACS758LCB-050B U2
U 1 1 5FEA1F08
P 6000 1600
F 0 "U2" H 5700 1950 50  0000 C CNN
F 1 "ACS758LCB-050B" H 5550 1250 50  0000 C CNN
F 2 "PV-Monitor:ACS758LCB-050B" H 6000 1600 50  0001 C CNN
F 3 "" H 6000 1600 50  0001 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND06
U 1 1 5FEA2E3D
P 6000 2350
F 0 "#GND06" H 6050 2300 45  0001 L BNN
F 1 "GND" H 6000 2180 45  0000 C CNN
F 2 "" H 6000 2250 60  0001 C CNN
F 3 "" H 6000 2250 60  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1200 6000 1000
Wire Wire Line
	6000 1000 5450 1000
Wire Wire Line
	6000 2000 6000 2350
Wire Wire Line
	5550 1600 4850 1600
Text Label 5500 1000 0    50   ~ 0
5V
$Comp
L PV-Monitor:ACS758LCB-050B U3
U 1 1 5FEA7577
P 6000 3450
F 0 "U3" H 5700 3800 50  0000 C CNN
F 1 "ACS758LCB-050B" H 5550 3100 50  0000 C CNN
F 2 "PV-Monitor:ACS758LCB-050B" H 6000 3450 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND07
U 1 1 5FEA757D
P 6000 4200
F 0 "#GND07" H 6050 4150 45  0001 L BNN
F 1 "GND" H 6000 4030 45  0000 C CNN
F 2 "" H 6000 4100 60  0001 C CNN
F 3 "" H 6000 4100 60  0001 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3050 6000 2850
Wire Wire Line
	6000 2850 5450 2850
Wire Wire Line
	6000 3850 6000 4200
Wire Wire Line
	5550 3450 4850 3450
Wire Wire Line
	6500 3450 7700 3450
Text Label 5500 2850 0    50   ~ 0
5V
$Comp
L PV-Monitor:ACS758LCB-050B U4
U 1 1 5FEA8623
P 6000 5300
F 0 "U4" H 5700 5650 50  0000 C CNN
F 1 "ACS758LCB-050B" H 5550 4950 50  0000 C CNN
F 2 "PV-Monitor:ACS758LCB-050B" H 6000 5300 50  0001 C CNN
F 3 "" H 6000 5300 50  0001 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND08
U 1 1 5FEA8629
P 6000 6050
F 0 "#GND08" H 6050 6000 45  0001 L BNN
F 1 "GND" H 6000 5880 45  0000 C CNN
F 2 "" H 6000 5950 60  0001 C CNN
F 3 "" H 6000 5950 60  0001 C CNN
	1    6000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4900 6000 4700
Wire Wire Line
	6000 4700 5450 4700
Wire Wire Line
	6000 5700 6000 6050
Wire Wire Line
	5550 5300 4850 5300
Wire Wire Line
	6500 5300 7700 5300
Text Label 5500 4700 0    50   ~ 0
5V
Text Label 4900 1600 0    50   ~ 0
CHG_LOAD_POS
Text Label 4900 3450 0    50   ~ 0
CHG_BATT_POS
Text Label 4900 5300 0    50   ~ 0
CHG_PV_POS
Text Label 7150 5300 0    50   ~ 0
DEV_PV_POS
Text Label 7150 3450 0    50   ~ 0
DEV_BATT_POS
$Comp
L Device:R R3
U 1 1 5FEAEE02
P 9100 1600
F 0 "R3" V 8893 1600 50  0000 C CNN
F 1 "12k" V 8984 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9030 1600 50  0001 C CNN
F 3 "~" H 9100 1600 50  0001 C CNN
	1    9100 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FEAF40E
P 9350 1900
F 0 "R6" H 9420 1946 50  0000 L CNN
F 1 "3k" H 9420 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9280 1900 50  0001 C CNN
F 3 "~" H 9350 1900 50  0001 C CNN
	1    9350 1900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND011
U 1 1 5FEAFC6C
P 9350 2150
F 0 "#GND011" H 9400 2100 45  0001 L BNN
F 1 "GND" H 9350 1980 45  0000 C CNN
F 2 "" H 9350 2050 60  0001 C CNN
F 3 "" H 9350 2050 60  0001 C CNN
	1    9350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1600 9350 1600
Wire Wire Line
	9350 1600 9350 1750
Connection ~ 9350 1600
Wire Wire Line
	9350 2050 9350 2150
$Comp
L Device:C C5
U 1 1 5FEB236A
P 9750 1900
F 0 "C5" H 9865 1946 50  0000 L CNN
F 1 "10n" H 9865 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9788 1750 50  0001 C CNN
F 3 "~" H 9750 1900 50  0001 C CNN
	1    9750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1750 9750 1600
Wire Wire Line
	9750 2050 9750 2150
$Comp
L SparkFun-PowerSymbols:GND #GND014
U 1 1 5FEB3BD2
P 9750 2150
F 0 "#GND014" H 9800 2100 45  0001 L BNN
F 1 "GND" H 9750 1980 45  0000 C CNN
F 2 "" H 9750 2050 60  0001 C CNN
F 3 "" H 9750 2050 60  0001 C CNN
	1    9750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1600 10500 1600
Wire Wire Line
	9350 1600 9750 1600
Connection ~ 9750 1600
Wire Wire Line
	8950 1600 8150 1600
Wire Wire Line
	7050 1800 7400 1800
Wire Wire Line
	7050 3650 7400 3650
Text Label 7150 3650 0    50   ~ 0
I_SENSE_BATT
Text Label 7150 5500 0    50   ~ 0
I_SENSE_PV
Text Label 7150 1800 0    50   ~ 0
I_SENSE_LOAD
$Comp
L Device:R R2
U 1 1 5FEBFDDA
P 9050 3450
F 0 "R2" V 8843 3450 50  0000 C CNN
F 1 "12k" V 8934 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8980 3450 50  0001 C CNN
F 3 "~" H 9050 3450 50  0001 C CNN
	1    9050 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FEBFDE0
P 9300 3750
F 0 "R5" H 9370 3796 50  0000 L CNN
F 1 "3k" H 9370 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9230 3750 50  0001 C CNN
F 3 "~" H 9300 3750 50  0001 C CNN
	1    9300 3750
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND010
U 1 1 5FEBFDE6
P 9300 4000
F 0 "#GND010" H 9350 3950 45  0001 L BNN
F 1 "GND" H 9300 3830 45  0000 C CNN
F 2 "" H 9300 3900 60  0001 C CNN
F 3 "" H 9300 3900 60  0001 C CNN
	1    9300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3450 9300 3450
Wire Wire Line
	9300 3450 9300 3600
Connection ~ 9300 3450
Wire Wire Line
	9300 3900 9300 4000
$Comp
L Device:C C4
U 1 1 5FEBFDF0
P 9700 3750
F 0 "C4" H 9815 3796 50  0000 L CNN
F 1 "10n" H 9815 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9738 3600 50  0001 C CNN
F 3 "~" H 9700 3750 50  0001 C CNN
	1    9700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3600 9700 3450
Wire Wire Line
	9700 3900 9700 4000
$Comp
L SparkFun-PowerSymbols:GND #GND013
U 1 1 5FEBFDF8
P 9700 4000
F 0 "#GND013" H 9750 3950 45  0001 L BNN
F 1 "GND" H 9700 3830 45  0000 C CNN
F 2 "" H 9700 3900 60  0001 C CNN
F 3 "" H 9700 3900 60  0001 C CNN
	1    9700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3450 10250 3450
Wire Wire Line
	9300 3450 9700 3450
Connection ~ 9700 3450
Wire Wire Line
	8900 3450 8100 3450
$Comp
L Device:R R1
U 1 1 5FEC23F9
P 9000 5300
F 0 "R1" V 8793 5300 50  0000 C CNN
F 1 "16k" V 8884 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8930 5300 50  0001 C CNN
F 3 "~" H 9000 5300 50  0001 C CNN
	1    9000 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FEC23FF
P 9250 5600
F 0 "R4" H 9320 5646 50  0000 L CNN
F 1 "1k3" H 9320 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9180 5600 50  0001 C CNN
F 3 "~" H 9250 5600 50  0001 C CNN
	1    9250 5600
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND09
U 1 1 5FEC2405
P 9250 5850
F 0 "#GND09" H 9300 5800 45  0001 L BNN
F 1 "GND" H 9250 5680 45  0000 C CNN
F 2 "" H 9250 5750 60  0001 C CNN
F 3 "" H 9250 5750 60  0001 C CNN
	1    9250 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5300 9250 5300
Wire Wire Line
	9250 5300 9250 5450
Connection ~ 9250 5300
Wire Wire Line
	9250 5750 9250 5850
$Comp
L Device:C C3
U 1 1 5FEC240F
P 9650 5600
F 0 "C3" H 9765 5646 50  0000 L CNN
F 1 "10n" H 9765 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9688 5450 50  0001 C CNN
F 3 "~" H 9650 5600 50  0001 C CNN
	1    9650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5450 9650 5300
Wire Wire Line
	9650 5750 9650 5850
$Comp
L SparkFun-PowerSymbols:GND #GND012
U 1 1 5FEC2417
P 9650 5850
F 0 "#GND012" H 9700 5800 45  0001 L BNN
F 1 "GND" H 9650 5680 45  0000 C CNN
F 2 "" H 9650 5750 60  0001 C CNN
F 3 "" H 9650 5750 60  0001 C CNN
	1    9650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5300 10350 5300
Wire Wire Line
	9250 5300 9650 5300
Connection ~ 9650 5300
Wire Wire Line
	8850 5300 8100 5300
Text Label 8150 5300 0    50   ~ 0
CHG_PV_POS
Text Label 8150 3450 0    50   ~ 0
CHG_BATT_POS
Text Label 8200 1600 0    50   ~ 0
CHG_LOAD_POS
Text Label 9900 1600 0    50   ~ 0
V_SENSE_LOAD
Text Label 9900 3450 0    50   ~ 0
V_SENSE_BATT
Text Label 9850 5300 0    50   ~ 0
V_SENSE_PV
$Comp
L SparkFun-Boards:ARDUINO_PRO_MINI B1
U 1 1 5FEC493B
P 3000 6050
F 0 "B1" H 3000 7110 45  0000 C CNN
F 1 "ARDUINO_PRO_MINI" H 3000 7026 45  0000 C CNN
F 2 "ARDUINO_PRO_MINI" H 3000 7000 20  0001 C CNN
F 3 "" H 3000 6050 50  0001 C CNN
F 4 "XXX-00000" H 3000 6931 60  0000 C CNN "Field4"
	1    3000 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5350 4150 5350
Wire Wire Line
	3450 5450 4150 5450
Wire Wire Line
	3450 5850 4150 5850
Wire Wire Line
	3450 5950 4150 5950
Wire Wire Line
	3450 5750 4150 5750
Wire Wire Line
	2550 6650 2000 6650
Wire Wire Line
	2550 6750 2000 6750
Wire Wire Line
	3450 6750 4150 6750
Text Label 3550 5350 0    50   ~ 0
5V
Text Label 3550 5450 0    50   ~ 0
GND
Wire Wire Line
	2550 5650 2000 5650
Text Label 2000 5650 0    50   ~ 0
GND
Text Label 3550 5950 0    50   ~ 0
V_SENSE_PV
Text Label 3550 5850 0    50   ~ 0
V_SENSE_BATT
Text Label 3550 5750 0    50   ~ 0
V_SENSE_LOAD
Text Label 2000 6650 0    50   ~ 0
I_SENSE_PV
Text Label 2000 6750 0    50   ~ 0
I_SENSE_BATT
Text Label 3550 6750 0    50   ~ 0
I_SENSE_LOAD
Text Notes 8400 4700 0    50   ~ 0
https://www.ti.com/download/kbase/volt/volt_div3.htm
Wire Wire Line
	7050 5500 7400 5500
$Comp
L Device:R R7
U 1 1 5FEE000F
P 6800 1800
F 0 "R7" V 6900 1800 50  0000 C CNN
F 1 "2k2" V 6700 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6730 1800 50  0001 C CNN
F 3 "~" H 6800 1800 50  0001 C CNN
	1    6800 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FEE0019
P 7050 2100
F 0 "R10" H 7120 2146 50  0000 L CNN
F 1 "3k3" H 7120 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6980 2100 50  0001 C CNN
F 3 "~" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND018
U 1 1 5FEE0023
P 7050 2350
F 0 "#GND018" H 7100 2300 45  0001 L BNN
F 1 "GND" H 7050 2180 45  0000 C CNN
F 2 "" H 7050 2250 60  0001 C CNN
F 3 "" H 7050 2250 60  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1800 7050 1800
Wire Wire Line
	7050 1800 7050 1950
Wire Wire Line
	7050 2250 7050 2350
$Comp
L Device:R R8
U 1 1 5FEE437D
P 6800 3650
F 0 "R8" V 6900 3650 50  0000 C CNN
F 1 "2k2" V 6700 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6730 3650 50  0001 C CNN
F 3 "~" H 6800 3650 50  0001 C CNN
	1    6800 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5FEE4387
P 7050 3950
F 0 "R11" H 7120 3996 50  0000 L CNN
F 1 "3k3" H 7120 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6980 3950 50  0001 C CNN
F 3 "~" H 7050 3950 50  0001 C CNN
	1    7050 3950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND019
U 1 1 5FEE4391
P 7050 4200
F 0 "#GND019" H 7100 4150 45  0001 L BNN
F 1 "GND" H 7050 4030 45  0000 C CNN
F 2 "" H 7050 4100 60  0001 C CNN
F 3 "" H 7050 4100 60  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3650 7050 3650
Wire Wire Line
	7050 3650 7050 3800
Wire Wire Line
	7050 4100 7050 4200
Connection ~ 7050 3650
$Comp
L Device:R R9
U 1 1 5FEE7770
P 6800 5500
F 0 "R9" V 6900 5500 50  0000 C CNN
F 1 "2k2" V 6700 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6730 5500 50  0001 C CNN
F 3 "~" H 6800 5500 50  0001 C CNN
	1    6800 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5FEE777A
P 7050 5800
F 0 "R12" H 7120 5846 50  0000 L CNN
F 1 "3k3" H 7120 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6980 5800 50  0001 C CNN
F 3 "~" H 7050 5800 50  0001 C CNN
	1    7050 5800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND020
U 1 1 5FEE7784
P 7050 6050
F 0 "#GND020" H 7100 6000 45  0001 L BNN
F 1 "GND" H 7050 5880 45  0000 C CNN
F 2 "" H 7050 5950 60  0001 C CNN
F 3 "" H 7050 5950 60  0001 C CNN
	1    7050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5500 7050 5500
Wire Wire Line
	7050 5500 7050 5650
Wire Wire Line
	7050 5950 7050 6050
Connection ~ 7050 5500
Wire Wire Line
	6650 5500 6500 5500
Wire Wire Line
	6650 3650 6500 3650
Connection ~ 7050 1800
Wire Wire Line
	6500 1800 6650 1800
$Comp
L Device:C C8
U 1 1 5FF05815
P 6550 5800
F 0 "C8" H 6665 5846 50  0000 L CNN
F 1 "10n" H 6665 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6588 5650 50  0001 C CNN
F 3 "~" H 6550 5800 50  0001 C CNN
	1    6550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5950 6550 6050
$Comp
L SparkFun-PowerSymbols:GND #GND017
U 1 1 5FF0581C
P 6550 6050
F 0 "#GND017" H 6600 6000 45  0001 L BNN
F 1 "GND" H 6550 5880 45  0000 C CNN
F 2 "" H 6550 5950 60  0001 C CNN
F 3 "" H 6550 5950 60  0001 C CNN
	1    6550 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5FF07F73
P 7400 5800
F 0 "C11" H 7515 5846 50  0000 L CNN
F 1 "10n" H 7515 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7438 5650 50  0001 C CNN
F 3 "~" H 7400 5800 50  0001 C CNN
	1    7400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5950 7400 6050
$Comp
L SparkFun-PowerSymbols:GND #GND023
U 1 1 5FF07F7A
P 7400 6050
F 0 "#GND023" H 7450 6000 45  0001 L BNN
F 1 "GND" H 7400 5880 45  0000 C CNN
F 2 "" H 7400 5950 60  0001 C CNN
F 3 "" H 7400 5950 60  0001 C CNN
	1    7400 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FF0AA24
P 6550 3950
F 0 "C7" H 6665 3996 50  0000 L CNN
F 1 "10n" H 6665 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6588 3800 50  0001 C CNN
F 3 "~" H 6550 3950 50  0001 C CNN
	1    6550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4100 6550 4200
$Comp
L SparkFun-PowerSymbols:GND #GND016
U 1 1 5FF0AA2B
P 6550 4200
F 0 "#GND016" H 6600 4150 45  0001 L BNN
F 1 "GND" H 6550 4030 45  0000 C CNN
F 2 "" H 6550 4100 60  0001 C CNN
F 3 "" H 6550 4100 60  0001 C CNN
	1    6550 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5FF0D47D
P 7400 3950
F 0 "C10" H 7515 3996 50  0000 L CNN
F 1 "10n" H 7515 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7438 3800 50  0001 C CNN
F 3 "~" H 7400 3950 50  0001 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4100 7400 4200
$Comp
L SparkFun-PowerSymbols:GND #GND022
U 1 1 5FF0D484
P 7400 4200
F 0 "#GND022" H 7450 4150 45  0001 L BNN
F 1 "GND" H 7400 4030 45  0000 C CNN
F 2 "" H 7400 4100 60  0001 C CNN
F 3 "" H 7400 4100 60  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5FF0FCE0
P 7400 2100
F 0 "C9" H 7515 2146 50  0000 L CNN
F 1 "10n" H 7515 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7438 1950 50  0001 C CNN
F 3 "~" H 7400 2100 50  0001 C CNN
	1    7400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2250 7400 2350
$Comp
L SparkFun-PowerSymbols:GND #GND021
U 1 1 5FF0FCE7
P 7400 2350
F 0 "#GND021" H 7450 2300 45  0001 L BNN
F 1 "GND" H 7400 2180 45  0000 C CNN
F 2 "" H 7400 2250 60  0001 C CNN
F 3 "" H 7400 2250 60  0001 C CNN
	1    7400 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FF12431
P 6550 2100
F 0 "C6" H 6665 2146 50  0000 L CNN
F 1 "10n" H 6665 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6588 1950 50  0001 C CNN
F 3 "~" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2250 6550 2350
$Comp
L SparkFun-PowerSymbols:GND #GND015
U 1 1 5FF12438
P 6550 2350
F 0 "#GND015" H 6600 2300 45  0001 L BNN
F 1 "GND" H 6550 2180 45  0000 C CNN
F 2 "" H 6550 2250 60  0001 C CNN
F 3 "" H 6550 2250 60  0001 C CNN
	1    6550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4700 6550 4700
Wire Wire Line
	6550 4700 6550 5650
Connection ~ 6000 4700
Wire Wire Line
	7400 5650 7400 5500
Connection ~ 7400 5500
Wire Wire Line
	7400 5500 7700 5500
Wire Wire Line
	7400 3800 7400 3650
Connection ~ 7400 3650
Wire Wire Line
	7400 3650 7700 3650
Wire Wire Line
	6550 3800 6550 2850
Wire Wire Line
	6550 2850 6000 2850
Connection ~ 6000 2850
Wire Wire Line
	6000 1000 6550 1000
Wire Wire Line
	6550 1000 6550 1950
Connection ~ 6000 1000
Wire Wire Line
	7400 1950 7400 1800
Connection ~ 7400 1800
Wire Wire Line
	7400 1800 7750 1800
Text Notes 8200 900  0    50   ~ 0
https://www.best-microcontroller-projects.com/acs758.html
Wire Wire Line
	6500 1600 7750 1600
Text Label 7150 1600 0    50   ~ 0
DEV_LOAD_POS
Wire Wire Line
	1450 2950 1900 2950
$EndSCHEMATC