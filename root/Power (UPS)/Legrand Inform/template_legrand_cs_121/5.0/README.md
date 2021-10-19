# Halley UPS Legrand cs121

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`MonitorZabbix`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Input line bads|<p>A count of the number of times the input entered an out-of-tolerance condition as defined by the manufacturer. This count is incremented by one each time the input transitions from zero out-of-tolerance lines to one or more input lines out-of-tolerance. A big number show problems with the electricity power where your UPS is connected</p>|`SNMP agent`|upsInputLineBads<p>Update: 30</p>|
|Battery Status|<p>The indication of the capacity remaining in the UPS system's batteries. A value of batteryNormal indicates that the remaining run-time is greater than upsConfigLowBattTime. A value of batteryLow indicates that the remaining battery run-time is less than or equal to upsConfigLowBattTime. A value of batteryDepleted indicates that the UPS will be unable to sustain the present load when and if the utility power is lost (including the possibility that the utility power is currently absent and the UPS is unable to sustain the output).</p>|`SNMP agent`|upsBatteryStatus<p>Update: 30</p>|
|Output Power|<p>The present output true power.</p>|`SNMP agent`|upsOutputPower.1<p>Update: 30</p>|
|Battery temperature|<p>The ambient temperature at or near the UPS Battery casing.</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 60</p>|
|Estimated charge remaining|<p>An estimate of the battery charge remaining expressed as a percent of full charge.</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 60</p>|
|Output load in percent|<p>The percentage of the UPS power capacity presently being used on this output line, i.e., the greater of the percent load of true power capacity and the percent load of VA.</p>|`SNMP agent`|upsOutputPercentLoad.1<p>Update: 30</p>|
|Seconds on battery|<p>If the unit is on battery power, the elapsed time since the UPS last switched to battery power, or the time since the network management subsystem was last restarted, whichever is less. Zero shall be returned if the unit is not on battery power.</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 30</p>|
|Battery voltage|<p>The magnitude of the present battery voltage.</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 60</p>|
|Alarms present on {HOST.NAME}|<p>The present number of active alarm conditions.</p>|`SNMP agent`|upsAlarmsPresent<p>Update: 30</p>|
|Input voltage|<p>The magnitude of the present input voltage.</p>|`SNMP agent`|upsInputVoltage.1<p>Update: 30</p>|
|Device Name|<p>The name of the UPS manufacturer.</p>|`SNMP agent`|upsIdentManufacturer<p>Update: 600</p>|
|Bypass Power|<p>An automatic bypass is used by the UPS to switch its load to the mains if it experiences an overload or internal failure. In other words, this mean that UPS has some problems and switch to the main (wall) power. So, if we have bypass - in bypass time our servers are connected directly to the line power - and are exposed to all electricity hazards This item show the power that we have in bypass time</p>|`SNMP agent`|upsBypassPower.1<p>Update: 30</p>|
|Output Voltage|<p>The present output voltage.</p>|`SNMP agent`|upsOutputVoltage.1<p>Update: 30</p>|
|Device Version|<p>The UPS agent software version.</p>|`SNMP agent`|upsIdentAgentSoftwareVersion<p>Update: 600</p>|
|Estimated minutes remaining if no power|<p>An estimate of the time to battery charge depletion under the present load conditions if the utility power is off and remains off, or if it were to be lost and remain off.</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 30</p>|
|Device Model|<p>The UPS Model designation.</p>|`SNMP agent`|upsIdentModel<p>Update: 86400</p>|
|Bypass Current|<p>An automatic bypass of voltage is used by the UPS to switch its load to the mains if it experiences an overload or internal failure. In other words, this mean that UPS has some problems and switch to the main (wall) power. So, if we have bypass - in bypass time our servers are connected directly to the line power - and are exposed to all electricity hazards. This item show the amperage that we have in bypass time</p>|`SNMP agent`|upsBypassCurrent.1<p>Update: 30</p>|
|Bypass Voltage|<p>An automatic bypass of voltage is used by the UPS to switch its load to the mains if it experiences an overload or internal failure. In other words, this mean that UPS has some problems and switch to the main (wall) power. So, if we have bypass - in bypass time our servers are connected directly to the line power - and are exposed to all electricity hazards</p>|`SNMP agent`|upsBypassVoltage.1<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Battery Charge Depleated|<p>-</p>|high|
|Battery Charge Less Than 80%|<p>-</p>|warning|
|Battery Status on {HOST.NAME} is {ITEM.VALUE}|<p>Battery Status on {HOST.NAME} is {ITEM.VALUE}</p>|high|
|Battery temperature High|<p>-</p>|high|
|Battery Time Remaining Below 10 Minutes|<p>-</p>|warning|
|UPS Alarm Present|<p>On your {HOST.NAME} are activated {ITEM.VALUE} alarms. Please check UPS - usually UPS must produce some sounds now</p>|warning|
|UPS Bypassed on {HOST.NAME}|<p>We have a bypass state. Take actions</p>|warning|
|UPS Input Power Line Bad|<p>Your UPS in 1 minute switch the input transitions from zero out-of-tolerance lines to one or more input lines out-of-tolerance. In other words: you have line power problems (bad frequency, bad voltage - someone near you use a lot of electricity power)</p>|high|
|UPS Load Changed|<p>On {HOST.NAME} we detect a big load change - the power output differential is over 300W</p>|information|
|UPS Low output power|<p>The output power for {HOST.NAME} is under {ITEM.VALUE}. Take actions to prevent this in future</p>|warning|
|UPS Overloaded|<p>-</p>|high|
|UPS Power Voltage outside nominal|<p>The input voltage on {HOST.NAME} is low or high. This can create big problems to your UPS, or, unfortunately to your servers</p>|high|
|UPS Running On Battery|<p>The UPS {HOST.NAME} is running on battery. Please check the battery power</p>|high|
