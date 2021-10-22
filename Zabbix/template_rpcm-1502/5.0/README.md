# rpcm_1502_template

## Overview

rcpm - over voltage state


0 - NO OVERVOLTAGE TURN OFF DETECTED


1 - OVERVOLTAGE TURN OFF FIRED


 


rpcm - admin state


0 - off


1 - on


 


rpcm - breaker state


0 - NO SHORT CIRCUIT DETECTED


1 - SHORT CIRCUIT DETECTED


 


rpcm - force fallback


0 - enabled


1 - disabled


 


rpcm - frequency


0 - absent


1 - present


 


rpcm - ground good


0 - Ground is Bad


1 - Ground is Good


 


rpcm - indicator flashing


0 - disabled


1 - enabled


 


rpcm - overcurent turn off state


0 - NO OVERCURRENT TURN OFF DETECTED


1 - OVERCURRENT TURN OFF FIRED


 


rpcm - overcurrent alarm state


0 - NO ALARM


1 - OVERCURRENT ALARM FIRED



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discover Outputs|<p>-</p>|`SNMP agent`|outputEntry<p>Update: 1h</p>|
|Discover Inputs|<p>-</p>|`SNMP agent`|inputEntry<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Active Input|<p>Automatic Transfer Switch Currently Active Input</p>|`SNMP agent`|activeInput.0<p>Update: 30s</p>|
|Contact Information|<p>Contact Information</p>|`SNMP agent`|contact.0<p>Update: 1h</p>|
|System Name|<p>System Name</p>|`SNMP agent`|description.0<p>Update: 1h</p>|
|Firmware Release Date and Time|<p>Firmware Release Date and Time</p>|`SNMP agent`|firmwareReleaseDate.0<p>Update: 1h</p>|
|Firmware Version|<p>Firmware Version</p>|`SNMP agent`|firmwareVersion.0<p>Update: 1h</p>|
|Force Failback|<p>Automatic Transfer Switch Force Failback Setting (1 =enabled, 0 =disabled)</p>|`SNMP agent`|forceFailback.0<p>Update: 30s</p>|
|Seconds Before Forcing Failback|<p>Automatic Transfer Switch Delay in Seconds Before Forcing Failback</p>|`SNMP agent`|forceFailbackDelaySeconds.0<p>Update: 30s</p>|
|Ground Connected State|<p>Good Ground Connected State (1 =Ground is Good, 0 =Ground is Bad)</p>|`SNMP agent`|groundGood.0<p>Update: 30s</p>|
|Location|<p>Location</p>|`SNMP agent`|location.0<p>Update: 1h</p>|
|Name|<p>Name (usually FQDN)</p>|`SNMP agent`|name.0<p>Update: 1h</p>|
|Vendor Identifier|<p>Vendor Identifier (RCNTEC)</p>|`SNMP agent`|objectID.0<p>Update: 1h</p>|
|Priority Input|<p>Automatic Transfer Switch Priority Input</p>|`SNMP agent`|priorityInput.0<p>Update: 30s</p>|
|Serial Number|<p>Serial Number</p>|`SNMP agent`|serialNumber.0<p>Update: 1h</p>|
|Services Field|<p>Services Field</p>|`SNMP agent`|services.0<p>Update: 1h</p>|
|Temperature|<p>Temperature</p>|`SNMP agent`|temperature.0<p>Update: 30s</p>|
|Uptime in Seconds|<p>Uptime in Seconds</p>|`SNMP agent`|uptime.0<p>Update: 30s</p>|
|{#SNMPVALUE} Accumulated KVA/h|<p>Output Accumulated KVA/h</p>|`SNMP agent`|outputAccumulatedKVAhFloat.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Alarm State|<p>Output Overcurrent Alarm State (1 =OVERCURRENT ALARM FIRED, 0 =NO ALARM)</p>|`SNMP agent`|outputOvercurrentAlarmFiredState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Turn Off Priority On Input Overload|<p>Output Turn Off Priority On Input Overload (Outputs with higher priority values will turn off first)</p>|`SNMP agent`|outputTurnOffPriorityOnInputOverload.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overvoltage Recovery interval, Seconds|<p>Output Overvoltage Recovery interval, Seconds</p>|`SNMP agent`|outputRecoverAfterOvervoltageSeconds.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Indicator Flashing|<p>Output Indicator Flashing for Physical Recognition/Indication (1 =enabled, 0 =disabled)</p>|`SNMP agent`|outputRecognitionState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overvoltage Turn Off Fired State|<p>Output Overvoltage Turn Off Fired State (1 =OVERVOLTAGE TURN OFF FIRED, 0 =NO OVERVOLTAGE TURN OFF DETECTED)</p>|`SNMP agent`|outputOvervoltageTurnOffFiredState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overvoltage Turn Off Facts|<p>Output Overvoltage Turn Off Facts</p>|`SNMP agent`|outputOvervoltageTurnOffFacts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Turn Off Limit Seconds|<p>Output Overcurrent Turn Off Limit Seconds</p>|`SNMP agent`|outputOvercurrentTurnOffLimitSeconds.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Turn Off Limit Reached Facts|<p>Output Overcurrent Turn Off Limit Reached Facts</p>|`SNMP agent`|outputOvercurrentTurnOffLimitReachedFacts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Turn Off Limit Milliamps|<p>Output Overcurrent Turn Off Limit Milliamps</p>|`SNMP agent`|outputOvercurrentTurnOffLimitMilliamps.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Turn Off State|<p>Output Overcurrent Turn Off State (1 =OVERCURRENT TURN OFF FIRED, 0 =NO OVERCURRENT TURN OFF DETECTED)</p>|`SNMP agent`|outputOvercurrentTurnOffFiredState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Turn Off Fired Facts|<p>Output Overcurrent Turn Off Fired Facts</p>|`SNMP agent`|outputOvercurrentTurnOffFiredFacts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Alarm Limit Seconds|<p>Output Overcurrent Alarm Limit Seconds</p>|`SNMP agent`|outputOvercurrentAlarmLimitSeconds.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Alarm Limit Reached Facts|<p>Output Overcurrent Alarm Limit Reached Facts</p>|`SNMP agent`|outputOvercurrentAlarmLimitReachedFacts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Alarm Limit Milliamps|<p>Output Overcurrent Alarm Limit Milliamps</p>|`SNMP agent`|outputOvercurrentAlarmLimitMilliamps.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Overcurrent Alarm Fired Facts|<p>Output Overcurrent Alarm Fired Facts</p>|`SNMP agent`|outputOvercurrentAlarmFiredFacts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVA/h|<p>Output Accumulated KVA/h</p>|`SNMP agent`|outputAccumulatedKVAhString.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Watts Value|<p>Output Instant Watts Value</p>|`SNMP agent`|outputInstantWatts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant VAs Value|<p>Output Instant VAs Value</p>|`SNMP agent`|outputInstantVAs.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Vars Value|<p>Output Instant Vars Value</p>|`SNMP agent`|outputInstantVars.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Milliamps Value|<p>Output Instant Milliamps Value</p>|`SNMP agent`|outputInstantMilliamps.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Turn Off Due to Input Overcurrent State|<p>Output Turn Off Due to Input Overcurrent State (1 =OVERCURRENT TURN OFF FIRED, 0 =NO OVERCURRENT TURN OFF DETECTED)</p>|`SNMP agent`|outputInputOvercurrentTurnOffFiredState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Description|<p>Output Description</p>|`SNMP agent`|outputDescription.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|{#SNMPVALUE} Circuit Breaker Short Circuit Firing Facts|<p>Output Circuit Breaker Short Circuit Firing Facts</p>|`SNMP agent`|outputCircuitBreakerFiringFacts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Circuit Breaker State|<p>Output Circuit Breaker State (1 =SHORT CIRCUIT DETECTED, 0 =NO SHORT CIRCUIT DETECTED)</p>|`SNMP agent`|outputCircuitBreakerFiredState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Administrative State|<p>Output Administrative State (1 =on, 0 =off)</p>|`SNMP agent`|outputAdminState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Actual State|<p>Output Actual State (1 =on, 0 =off)</p>|`SNMP agent`|outputActualState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KWatt/h|<p>Output Accumulated KWatt/h</p>|`SNMP agent`|outputAccumulatedKWhString.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KWatt/h|<p>Output Accumulated KWatt/h</p>|`SNMP agent`|outputAccumulatedKWhFloat.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVar/h|<p>Output Accumulated KVar/h</p>|`SNMP agent`|outputAccumulatedKVarhString.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVar/h|<p>Output Accumulated KVar/h</p>|`SNMP agent`|outputAccumulatedKVarhFloat.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Turn On Delay After RPCM Device Startup|<p>Output Turn On Delay After RPCM Device Startup</p>|`SNMP agent`|outputTurnOnDelayOnStartup.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVA/h|<p>Input Accumulated KVA/h</p>|`SNMP agent`|inputAccumulatedKVAhFloat.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Minimum Allowed Frequency|<p>Input Minimum Allowed Frequency Multiplied by 100</p>|`SNMP agent`|inputFrequencyAllowedMin.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Maximum Allowed Voltage|<p>Input Maximum Allowed Voltage</p>|`SNMP agent`|inputVoltageAllowedMax.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Voltage Value|<p>Input Instant Voltage Value</p>|`SNMP agent`|inputVoltage.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Recognition State|<p>Input Indicator Flashing for Physical Recognition/Indication (1 =enabled, 0 =disabled)</p>|`SNMP agent`|inputRecognitionState.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Watts Value|<p>Input Instant Watts Value</p>|`SNMP agent`|inputInstantWatts.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Milliamps Value|<p>Input Instant Milliamps Value</p>|`SNMP agent`|inputInstantMilliamps.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Presence of Frequency|<p>Presence of Frequency on Input (1 =present, 0 =absent)</p>|`SNMP agent`|inputFrequencyAvailable.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Maximum Allowed Frequency|<p>Input Maximum Allowed Frequency Multiplied by 100</p>|`SNMP agent`|inputFrequencyAllowedMax.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVA/h|<p>Input Accumulated KVA/h</p>|`SNMP agent`|inputAccumulatedKVAhString.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Instant Frequency Value|<p>Input Instant Frequency Value</p>|`SNMP agent`|inputFrequency.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Description|<p>Input Description</p>|`SNMP agent`|inputDescription.[{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|{#SNMPVALUE} Maximum Alloed Ampers|<p>Input Maximum Alloed Ampers</p>|`SNMP agent`|inputAmpsAllowedMax.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KWatt/h|<p>Input Accumulated KWatt/h</p>|`SNMP agent`|inputAccumulatedKWhString.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KWatt/h|<p>Input Accumulated KWatt/h</p>|`SNMP agent`|inputAccumulatedKWhFloat.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVar/h|<p>Input Accumulated KVar/h</p>|`SNMP agent`|inputAccumulatedKVarhString.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Accumulated KVar/h|<p>Input Accumulated KVar/h</p>|`SNMP agent`|inputAccumulatedKVarhFloat.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#SNMPVALUE} Minimum Allowed Voltage|<p>Input Minimum Allowed Voltage</p>|`SNMP agent`|inputVoltageAllowedMin.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Frequency on {#SNMPVALUE} is absent|<p>-</p>|<p>**Expression**: {rpcm_1502_template:inputFrequencyAvailable.[{#SNMPINDEX}].last()}=0</p><p>**Recovery expression**: </p>|high|
|Frequency on {#SNMPVALUE} is absent (LLD)|<p>-</p>|<p>**Expression**: {rpcm_1502_template:inputFrequencyAvailable.[{#SNMPINDEX}].last()}=0</p><p>**Recovery expression**: </p>|high|
