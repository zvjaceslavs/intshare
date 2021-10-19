# HW UPS Legrand CS141

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|UPS Output Phses|<p>-</p>|`SNMP agent`|upsOutputPower<p>Update: 1h</p>|
|UPS Bypass Phases|<p>-</p>|`SNMP agent`|upsBypassCurrent<p>Update: 1h</p>|
|UPS Input Phases|<p>-</p>|`SNMP agent`|upsInputFrequency<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device Model|<p>The UPS Model designation.</p>|`SNMP agent`|upsIdentModel<p>Update: 86400</p>|
|Input line bads|<p>A count of the number of times the input entered an out-of-tolerance condition as defined by the manufacturer. This count is incremented by one each time the input transitions from zero out-of-tolerance lines to one or more input lines out-of-tolerance. A big number show problems with the electricity power where your UPS is connected</p>|`SNMP agent`|upsInputLineBads<p>Update: 30</p>|
|Device Version|<p>The UPS agent software version.</p>|`SNMP agent`|upsIdentAgentSoftwareVersion<p>Update: 600</p>|
|Seconds on battery|<p>If the unit is on battery power, the elapsed time since the UPS last switched to battery power, or the time since the network management subsystem was last restarted, whichever is less. Zero shall be returned if the unit is not on battery power.</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 30</p>|
|Device Location|<p>The name of the UPS manufacturer.</p>|`SNMP agent`|upsIdentLocation<p>Update: 600</p>|
|Battery temperature|<p>The ambient temperature at or near the UPS Battery casing.</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 60</p>|
|Device Name|<p>The name of the UPS manufacturer.</p>|`SNMP agent`|upsIdentName<p>Update: 600</p>|
|Battery Status|<p>The indication of the capacity remaining in the UPS system's batteries. A value of batteryNormal indicates that the remaining run-time is greater than upsConfigLowBattTime. A value of batteryLow indicates that the remaining battery run-time is less than or equal to upsConfigLowBattTime. A value of batteryDepleted indicates that the UPS will be unable to sustain the present load when and if the utility power is lost (including the possibility that the utility power is currently absent and the UPS is unable to sustain the output).</p>|`SNMP agent`|upsBatteryStatus<p>Update: 30</p>|
|Device Uptime|<p>The name of the UPS manufacturer.</p>|`SNMP agent`|upsIdentUptime<p>Update: 1m</p>|
|Device Vendor|<p>The name of the UPS manufacturer.</p>|`SNMP agent`|upsIdentManufacturer<p>Update: 600</p>|
|Battery voltage|<p>The magnitude of the present battery voltage.</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 60</p>|
|Alarms present on {HOST.NAME}|<p>The present number of active alarm conditions.</p>|`SNMP agent`|upsAlarmsPresent<p>Update: 30</p>|
|Estimated charge remaining|<p>An estimate of the battery charge remaining expressed as a percent of full charge.</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 60</p>|
|Estimated minutes remaining if no power|<p>An estimate of the time to battery charge depletion under the present load conditions if the utility power is off and remains off, or if it were to be lost and remain off.</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 30</p>|
|Output load in percent Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsOutputPercentLoad.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Output Power Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsOutputPower.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Output Voltage Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsOutputVoltage.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Bypass Current Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsBypassCurrent.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Bypass Power Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsBypassPower.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Bypass Voltage Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsBypassVoltage.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input current Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsInputCurrent.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input Frequency phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsInputFrequency.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input power Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsInputPower.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Input voltage Phase {#SNMPINDEX}|<p>-</p>|`SNMP agent`|upsInputVoltage.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|UPS Alarm Present|<p>On your {HOST.NAME} are activated {ITEM.VALUE} alarms. Please check UPS - usually UPS must produce some sounds now</p>|warning|
|Battery Status on {HOST.NAME} is {ITEM.VALUE}|<p>Battery Status on {HOST.NAME} is {ITEM.VALUE}</p>|high|
|Battery temperature High|<p>-</p>|high|
|Battery temperature Warning|<p>-</p>|warning|
|Battery Charge Depleated|<p>-</p>|high|
|Battery Charge Less Than 80%|<p>-</p>|warning|
|Battery Time Remaining Below 10 Minutes|<p>-</p>|warning|
|Device rebooted|<p>-</p>|information|
|UPS Input Power Line Bad|<p>Your UPS in 1 minute switch the input transitions from zero out-of-tolerance lines to one or more input lines out-of-tolerance. In other words: you have line power problems (bad frequency, bad voltage - someone near you use a lot of electricity power)</p>|high|
|UPS Running On Battery|<p>The UPS {HOST.NAME} is running on battery. Please check the battery power</p>|high|
|UPS Overloaded phase {#SNMPINDEX} (>60%)|<p>-</p>|high|
|UPS Load Changed phase {#SNMPINDEX} (+/-300W)|<p>On {HOST.NAME} we detect a big load change - the power output differential is over 300W</p>|information|
|UPS Low output power phase {#SNMPINDEX}  (<10 W)|<p>The output power for {HOST.NAME} is under {ITEM.VALUE}. Take actions to prevent this in future</p>|warning|
|UPS Power Voltage outside nominal phase {#SNMPINDEX}|<p>-</p>|high|
|UPS Bypassed phase {#SNMPINDEX}|<p>-</p>|warning|
|UPS Input frequency outside nominal {#SNMPINDEX}|<p>-</p>|warning|
