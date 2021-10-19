# Template Eaton UPS

## Overview

This template was tested on zabbix 5.4.1 with Eaton 9SX3000iR and Eaton 5PX1500


 


1. Discovery Rules:
	1. Alarms ( Item will be generate is the item alarms.present is not equal 0 )
		* Item Prototype:  
		Alarms ID and Alarms Description
	2. Bypass
		* Item Prototype:  
		Bypass {#INDEX}: A  
		Bypass {#INDEX}: Voltage
	3. Input
		* Item Prototype:  
		Input {#INDEX}: A  
		Input {#INDEX}: Voltage  
		Input {#INDEX}: Voltage Min  
		Input {#INDEX}: Voltage Max
		* Graph Prototype ( Voltage Max, Voltage, Voltage Min )
		* Trigger Prototype if voltage is equal to 0
	4. Ouput
		* Item Prototype:  
		Ouput {#INDEX}: A  
		Ouput {#INDEX}: kVa  
		Ouput {#INDEX}: Percentage Load  
		Ouput {#INDEX}: Voltage
		* Graph Prototype ( Voltage, Percentage Load )
		* Trigger Prototype if output is overloaded (85%)
2. Items (Fix)
	1. Alarms Present
	2. Battery Frequency
	3. Bypass Frequency
	4. Bypass Number of Lines
	5. Estimated Charge Remaining
	6. Estimated Minutes Remaining
	7. Input Frequency
	8. Input Number of lines
	9. Output Frequency
	10. Output Number of Lines
	11. Output Source Status
	12. Seconds on Battery
	13. Serial Number
	14. Model
	15. UPS Alive


 

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Output|<p>-</p>|`SNMP agent`|get.output.nbrlines<p>Update: 1m</p>|
|Discovery Input|<p>-</p>|`SNMP agent`|input.discovery<p>Update: 1m</p>|
|Discovery Alarms|<p>The present number of active alarm conditions.</p>|`SNMP agent`|alarms.discovery<p>Update: 1m</p>|
|Discovery Bypass|<p>-</p>|`SNMP agent`|bypass.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Manufacturer|<p>-</p>|`SNMP agent`|get.upsIdentManufacturer<p>Update: 1d</p>|
|Estimated Minuted Remaining|<p>-</p>|`SNMP agent`|get.estimated.minutes<p>Update: 1m</p>|
|Agent Software Version|<p>-</p>|`SNMP agent`|get.agentsoftwareversion<p>Update: 1d</p>|
|Estimated Charge Remaining|<p>-</p>|`SNMP agent`|get.estimated.charge<p>Update: 1m</p>|
|Model|<p>-</p>|`SNMP agent`|get.upsModel<p>Update: 1d</p>|
|Battery Status|<p>-</p>|`SNMP agent`|get.battery.status<p>Update: 1m</p>|
|Alarms Present|<p>-</p>|`SNMP agent`|get.alarms.present<p>Update: 1m</p>|
|UPS Software Version|<p>-</p>|`SNMP agent`|get.upssoftversion<p>Update: 1d</p>|
|Battery Voltage|<p>-</p>|`SNMP agent`|get.battery.voltage<p>Update: 1m</p>|
|Output Source Status|<p>-</p>|`SNMP agent`|get.output.status<p>Update: 1m</p>|
|Output Frequency|<p>-</p>|`SNMP agent`|get.output.frequency<p>Update: 1m</p>|
|Seconds on Battery|<p>-</p>|`SNMP agent`|get.battery.seconds<p>Update: 1m</p>|
|Serial Number|<p>-</p>|`SNMP agent`|get.upserial<p>Update: 1d</p>|
|Output {#INDEX}: Amps (LLD)|<p>The present output current.</p>|`SNMP agent`|get.output.amps[{#INDEX}]<p>Update: 1m</p>|
|Output {#INDEX}: Percentage Load (LLD)|<p>-</p>|`SNMP agent`|get.output.load[{#INDEX}]<p>Update: 1m</p>|
|Output {#INDEX}: Power (LLD)|<p>The present output true power.</p>|`SNMP agent`|get.output.power[{#INDEX}]<p>Update: 1m</p>|
|Output {#INDEX}: Voltage (LLD)|<p>The present output voltage.</p>|`SNMP agent`|get.output.voltage[{#INDEX}]<p>Update: 1m</p>|
|Input {#INDEX}: Frequency (LLD)|<p>-</p>|`SNMP agent`|get.input.frequency[{#INDEX}]<p>Update: 1m</p>|
|Input {#INDEX}: Voltage (LLD)|<p>-</p>|`SNMP agent`|get.input.voltage[{#INDEX}]<p>Update: 1m</p>|
|Alarms Description (LLD)|<p>A reference to an alarm description object. The object referenced should not be accessible, but rather be used to provide a unique description of the alarm condition.</p>|`SNMP agent`|get.alarms.description[{#ALARM}]<p>Update: 1m</p>|
|Alarms ID (LLD)|<p>A reference to an alarm description object. The object referenced should not be accessible, but rather be used to provide a unique description of the alarm condition.</p>|`SNMP agent`|get.alarms.id[{#ALARM}]<p>Update: 1m</p>|
|Alarms Time (LLD)|<p>The value of sysUpTime when the alarm condition was detected. If the alarm condition was detected at the time of agent startup and presumably existed before agent startup, the value of upsAlarmTime shall equal 0.</p>|`SNMP agent`|get.alarms.time[{#ALARM}]<p>Update: 1m</p>|
|Bypass {#INDEX}:  Amps (LLD)|<p>The present bypass current.</p>|`SNMP agent`|get.bypass.amps[{#INDEX}]<p>Update: 1m</p>|
|Bypass {#INDEX}: Voltage (LLD)|<p>-</p>|`SNMP agent`|get.bypass.voltage[{#INDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|An Alarm has been detected: ID {last(/Template Eaton UPS/get.alarms.id[{#ALARM}])}|<p>{last(/Template Eaton UPS/get.alarms.description[{#ALARM}])} {last(/Template Eaton UPS/get.alarms.time[{#ALARM}])}</p>|<p>**Expression**: last(/Template Eaton UPS/get.alarms.id[{#ALARM}])>0</p><p>**Recovery expression**: </p>|warning|
|Output {#INDEX} is overloaded|<p>-</p>|<p>**Expression**: last(/Template Eaton UPS/get.output.load[{#INDEX}])>=85</p><p>**Recovery expression**: </p>|average|
|No power has been detected on input n°{#INDEX}|<p>-</p>|<p>**Expression**: last(/Template Eaton UPS/get.input.voltage[{#INDEX}])<=0</p><p>**Recovery expression**: </p>|average|
|Output {#INDEX} is overloaded (LLD)|<p>-</p>|<p>**Expression**: last(/Template Eaton UPS/get.output.load[{#INDEX}])>=85</p><p>**Recovery expression**: </p>|average|
|No power has been detected on input n°{#INDEX} (LLD)|<p>-</p>|<p>**Expression**: last(/Template Eaton UPS/get.input.voltage[{#INDEX}])<=0</p><p>**Recovery expression**: </p>|average|
|An Alarm has been detected: ID {last(/Template Eaton UPS/get.alarms.id[{#ALARM}])} (LLD)|<p>{last(/Template Eaton UPS/get.alarms.description[{#ALARM}])} {last(/Template Eaton UPS/get.alarms.time[{#ALARM}])}</p>|<p>**Expression**: last(/Template Eaton UPS/get.alarms.id[{#ALARM}])>0</p><p>**Recovery expression**: </p>|warning|
