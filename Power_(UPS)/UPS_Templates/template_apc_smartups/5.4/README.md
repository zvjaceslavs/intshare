# Template Schneider UPS

## Overview

This template was tested on zabbix 5.4.1 with a Schneider Electric ( APC SmartUPS 3000 )


 


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
|Discovery Bypass|<p>-</p>|`SNMP agent`|upsBypassNumLines<p>Update: 1m</p>|
|Discovery Output|<p>-</p>|`SNMP agent`|upsOutputNumLines<p>Update: 1m</p>|
|Discovery Alarms|<p>-</p>|`SNMP agent`|alarms.discovery<p>Update: 1m</p>|
|Discovery Input|<p>-</p>|`SNMP agent`|upsInputNumLines<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|UPS Manufacture Date|<p>-</p>|`SNMP agent`|mib_ups_manufacture_date<p>Update: 1d</p>|
|Battery Temperature|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 1m</p>|
|Battery Status|<p>-</p>|`SNMP agent`|get.battery.status<p>Update: 1m</p>|
|Output Frequency|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 1m</p>|
|Time on Battery|<p>-</p>|`SNMP agent`|mib_time_on_battery<p>Update: 1m</p>|
|Battery Replacement|<p>-</p>|`SNMP agent`|mib_battery_replace<p>Update: 1m</p>|
|Last Transfer Event|<p>-</p>|`SNMP agent`|mib_reason_for_last_transfer<p>Update: 1m</p>|
|UPS BIOS Serial Number|<p>-</p>|`SNMP agent`|mib_bios_serial_number<p>Update: 1d</p>|
|UPS Software Version|<p>-</p>|`SNMP agent`|get.ident.soft<p>Update: 1d</p>|
|Output Energy Usage|<p>The output energy usage of the UPS in tenths of kWh.</p>|`SNMP agent`|upsHighPrecOutputEnergyUsage<p>Update: 1m</p>|
|UPS Model Number|<p>-</p>|`SNMP agent`|get.ident.model<p>Update: 1d</p>|
|UPS Up Time|<p>-</p>|`SNMP agent`|mib_ups_uptime<p>Update: 1m</p>|
|Name|<p>-</p>|`SNMP agent`|get.ident.name<p>Update: 1d</p>|
|Battery Voltage|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 1m</p>|
|Manufacturer|<p>-</p>|`SNMP agent`|get.ident.manu<p>Update: 1d</p>|
|Output Efficiency|<p>The efficiency of the UPS in tenths of percent. Result is -1 if UPS supports this oid but the result is not available.</p>|`SNMP agent`|upsHighPrecOutputEfficiency<p>Update: 1m</p>|
|Estimated Charge Remaining|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 1m</p>|
|Output Voltage|<p>-</p>|`SNMP agent`|upsHighPrecOutputVoltage<p>Update: 1m</p>|
|Runtime Remaining|<p>-</p>|`SNMP agent`|mib_battery_runtime_remain<p>Update: 1m</p>|
|Bypass {#INDEX}: Index|<p>-</p>|`SNMP agent`|upsBypassLineIndex<p>Update: 1m</p><p>LLD</p>|
|Bypass {#INDEX}: Voltage|<p>-</p>|`SNMP agent`|upsBypassVoltage<p>Update: 1m</p><p>LLD</p>|
|Output {#INDEX}: Amps|<p>-</p>|`SNMP agent`|upsOutputCurrent[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Output {#INDEX}: Index|<p>-</p>|`SNMP agent`|upsOutputLineIndex[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Output {#INDEX}: Percentage Load|<p>-</p>|`SNMP agent`|upsOutputPercentLoad[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Output {#INDEX}: Power|<p>-</p>|`SNMP agent`|upsOutputPower[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Output {#INDEX}: Voltages|<p>-</p>|`SNMP agent`|upsOutputVoltage[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Alarm {#ALARM}: Description|<p>-</p>|`SNMP agent`|upsAlarmDescr[{#ALARM}]<p>Update: 1m</p><p>LLD</p>|
|Alarm {#ALARM}|<p>-</p>|`SNMP agent`|upsAlarmId[{#ALARM}]<p>Update: 1m</p><p>LLD</p>|
|Alarm {#ALARM}: Time|<p>The value of sysUpTime when the alarm condition was detected. If the alarm condition was detected at the time of agent startup and presumably existed before agent startup, the value of upsAlarmTime shall equal 0.</p>|`SNMP agent`|upsAlarmTime[{#ALARM}]<p>Update: 1m</p><p>LLD</p>|
|Input {#INDEX}: Amp|<p>The magnitude of the present input current.</p>|`SNMP agent`|upsInputCurren[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Input {#INDEX}: Frequency|<p>The present input frequency.</p>|`SNMP agent`|upsInputFrequency[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Input {#INDEX}: Index|<p>-</p>|`SNMP agent`|upsInputLineIndex[{#INDEX}]<p>Update: 1d</p><p>LLD</p>|
|Input {#INDEX}: Power|<p>The magnitude of the present input true power.</p>|`SNMP agent`|upsInputTruePower[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
|Input {#INDEX}: Voltage|<p>The magnitude of the present input voltage.</p>|`SNMP agent`|upsInputVoltage[{#INDEX}]<p>Update: 1m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|An Alarm has been detected: ID {last(/Template Schneider UPS/upsAlarmId[{#ALARM}])}|<p>{last(/Template Schneider UPS/upsAlarmDescr[{#ALARM}])} {last(/Template Schneider UPS/upsAlarmTime[{#ALARM}])}</p>|<p>**Expression**: last(/Template Schneider UPS/upsAlarmId[{#ALARM}])>0</p><p>**Recovery expression**: </p>|warning|
|No power has been detected on input n°{#INDEX}|<p>-</p>|<p>**Expression**: last(/Template Schneider UPS/upsInputVoltage[{#INDEX}])=0</p><p>**Recovery expression**: </p>|high|
|An Alarm has been detected: ID {last(/Template Schneider UPS/upsAlarmId[{#ALARM}])} (LLD)|<p>{last(/Template Schneider UPS/upsAlarmDescr[{#ALARM}])} {last(/Template Schneider UPS/upsAlarmTime[{#ALARM}])}</p>|<p>**Expression**: last(/Template Schneider UPS/upsAlarmId[{#ALARM}])>0</p><p>**Recovery expression**: </p>|warning|
|No power has been detected on input n°{#INDEX} (LLD)|<p>-</p>|<p>**Expression**: last(/Template Schneider UPS/upsInputVoltage[{#INDEX}])=0</p><p>**Recovery expression**: </p>|high|
