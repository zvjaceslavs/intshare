# Socomec UPS

## Overview

This template was tested on Zabbix 5.4.1 with a Socomec UPS Modulys GP 2.0.


 


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
3. Dashboard ( included )  
Input, Output, Bypass, Clock and Status of the output


 


 Update: Value Mapping on item Output Source Status



## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Output|<p>-</p>|`SNMP agent`|output.discovery<p>Update: 1m</p>|
|Alarms|<p>-</p>|`SNMP agent`|alarms.discovery<p>Update: 1m</p>|
|Bypass|<p>-</p>|`SNMP agent`|bypass.discovery<p>Update: 1m</p>|
|Input|<p>-</p>|`SNMP agent`|input.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Seconds on Battery|<p>-</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 1m</p>|
|Input Num Lines|<p>-</p>|`SNMP agent`|upsInputNumLines<p>Update: 30m</p>|
|Output Frequency|<p>-</p>|`SNMP agent`|get.output.frequency<p>Update: 1m</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 30m</p>|
|Output Number Lines|<p>-</p>|`SNMP agent`|get.output.lines[]<p>Update: 30m</p>|
|Alarms Present|<p>-</p>|`SNMP agent`|get.alarms.status<p>Update: 1m</p>|
|Output Source Status|<p>-</p>|`SNMP agent`|upsOutputSource<p>Update: 30m</p>|
|Bypass Frequency|<p>-</p>|`SNMP agent`|get.bypass.frequency<p>Update: 30m</p>|
|Estimated  Minutes Remaining|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 30m</p>|
|Bypass Number of Lines|<p>-</p>|`SNMP agent`|get.bypass.nbrlines<p>Update: 30m</p>|
|Input Frequency|<p>Hz * 10</p>|`SNMP agent`|upsInputFrequency<p>Update: 30m</p>|
|UPS Alive|<p>-</p>|`Simple check`|icmpping[]<p>Update: 30s</p>|
|Estimated Charge Remaining|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 30m</p>|
|Serial Number|<p>-</p>|`SNMP agent`|get.ident.serial<p>Update: 1d</p>|
|Model|<p>-</p>|`SNMP agent`|get.ident.model<p>Update: 1h</p>|
|Output {#INDEX}: A|<p>-</p>|`SNMP agent`|get.output.current[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Output {#INDEX}: kVA|<p>-</p>|`SNMP agent`|get.output.kva[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Output {#INDEX}: Percentage Load|<p>-</p>|`SNMP agent`|get.output.percload[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Output {#INDEX}: Voltage|<p>-</p>|`SNMP agent`|get.output.voltage[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Alarms Description|<p>-</p>|`SNMP agent`|get.alarms.description[{#ALARM}]<p>Update: 1m</p><p>LLD</p>|
|Alarms ID|<p>-</p>|`SNMP agent`|get.alarms.id[{#ALARM}]<p>Update: 1m</p><p>LLD</p>|
|Bypass {#INDEX}: A|<p>-</p>|`SNMP agent`|get.bypass.amps[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Bypass {#INDEX}: Voltage|<p>-</p>|`SNMP agent`|get.bypass.voltage[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Input {#INDEX}: A|<p>-</p>|`SNMP agent`|get.input.current[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Input {#INDEX}: Votage Max|<p>-</p>|`SNMP agent`|get.input.voltage.max[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Input {#INDEX}: Votage Min|<p>-</p>|`SNMP agent`|get.input.voltage.min[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
|Input {#INDEX}: Voltage|<p>-</p>|`SNMP agent`|get.input.voltage[{#INDEX}]<p>Update: 30m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|No power has been detected on input n°{#INDEX}|<p>-</p>|<p>**Expression**: last(/Socomec UPS/get.input.voltage[{#INDEX}])=0</p><p>**Recovery expression**: </p>|average|
|Output {#INDEX} is overloaded|<p>-</p>|<p>**Expression**: last(/Socomec UPS/get.output.percload[{#INDEX}])>=85</p><p>**Recovery expression**: </p>|warning|
|Output {#INDEX} is overloaded (LLD)|<p>-</p>|<p>**Expression**: last(/Socomec UPS/get.output.percload[{#INDEX}])>=85</p><p>**Recovery expression**: </p>|warning|
|No power has been detected on input n°{#INDEX} (LLD)|<p>-</p>|<p>**Expression**: last(/Socomec UPS/get.input.voltage[{#INDEX}])=0</p><p>**Recovery expression**: </p>|average|
