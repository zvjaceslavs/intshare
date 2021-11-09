# APC_NMC2

## Overview

This is Zabbix 2.0+ template for current models of APC Network Management Cards with or without enviromental sensor.  
   
Supports:


AP9630  
 AP9631 (same as above but with env sensor)


Includes 19 items, 4 applications, 13 triggers


Monitors power parameters like voltage and frequency, battery charge and status, battery temperature, etc. Has triggers for out of range parameters, power loss, low battery. Supports temperature and humidity monitoring if present.


Please set {$SNMP\_COMMUNITY} macro for host.



## Author

Eugene Varnavsky

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Runtime remaining|<p>-</p>|`SNMP agent`|upsAdvBatteryRunTimeRemaining<p>Update: 30</p>|
|Output load current|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent<p>Update: 30</p>|
|Probe temperature|<p>-</p>|`SNMP agent`|iemStatusProbeCurrentTemp<p>Update: 30</p>|
|Output load|<p>-</p>|`SNMP agent`|upsAdvOutputLoad<p>Update: 30</p>|
|Battery status|<p>-</p>|`SNMP agent`|upsBasicBatteryStatus<p>Update: 180</p>|
|UPS software version|<p>-</p>|`SNMP agent`|upsIdentUPSSoftwareVersion<p>Update: 3600</p>|
|Output voltage|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage<p>Update: 30</p>|
|Battery replacement status|<p>-</p>|`SNMP agent`|upsAdvBatteryReplaceIndicator<p>Update: 180</p>|
|Battery replaced on|<p>-</p>|`SNMP agent`|upsBasicBatteryLastReplaceDate<p>Update: 3600</p>|
|Input voltage|<p>-</p>|`SNMP agent`|upsAdvInputLineVoltage<p>Update: 30</p>|
|UPS name|<p>-</p>|`SNMP agent`|upsIdentName<p>Update: 3600</p>|
|Input frequency|<p>-</p>|`SNMP agent`|upsAdvInputFrequency<p>Update: 180</p>|
|Output frequency|<p>-</p>|`SNMP agent`|upsAdvOutputFrequency<p>Update: 180</p>|
|Battery charge|<p>-</p>|`SNMP agent`|upsAdvBatteryCapacity<p>Update: 30</p>|
|UPS serial number|<p>-</p>|`SNMP agent`|upsAdvIdentSerialNumber<p>Update: 3600</p>|
|Battery temperature|<p>-</p>|`SNMP agent`|upsAdvBatteryTemperature<p>Update: 30</p>|
|UPS model|<p>-</p>|`SNMP agent`|upsBasicIdentModel<p>Update: 3600</p>|
|Probe humidity|<p>-</p>|`SNMP agent`|iemStatusProbeCurrentHumid<p>Update: 30</p>|
|Battery voltage|<p>-</p>|`SNMP agent`|upsAdvBatteryActualVoltage<p>Update: 180</p>|
## Triggers

There are no triggers in this template.

