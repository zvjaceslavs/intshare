Template for HP C7000 Blade chassis (testing on G3)
English and Russian language


Method: SNMP Read


Macros: {$COMMUNITY} - community string for chassis.

Additional: Need create regular expressions:
1) HP_env	1	^[a-zA-Z|+]	[Result TRUE]
2) HP_isPresent	3	 	[Included string]


Value mappings: 
1) C7000 - Health Status
	1 other
	2 ok
	3 degraded
	4 failed

2) C7000 - Input power status
	1 noError
	2 lineOverVoltage
	3 lineUnderVoltage
	4 lineHit
	5 brownOut
	6 linePowerLoss

3) C7000 - Power status
	1 noError
	2 generalFailure
	3 bistFailure
	4 fanFailure
	5 tempFailure
	6 interlockOpen
	7 epromFailed
	8 vrefFailed
	9 dacFailed
	10 ramTestFailed
	11 voltageChannelFailed
	12 orringdiodeFailed
	13 brownOut
	14 giveupOnStartup
	15 nvramInvalid
	16 calibrationTableInvalid

4) C7000 - Power redundancy
	1 Other
	2 Not redundant
	3 Redundant