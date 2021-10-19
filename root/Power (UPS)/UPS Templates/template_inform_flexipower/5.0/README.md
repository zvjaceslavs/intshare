# Template_UPS_Inform-flexipower

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|UPS name|<p>-</p>|`SNMP agent`|upsIdentName<p>Update: 3600</p>|
|Output load current|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent<p>Update: 30</p>|
|Output voltage|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage<p>Update: 30</p>|
|UPS serial number|<p>-</p>|`SNMP agent`|upsAdvIdentSerialNumber<p>Update: 3600</p>|
|UPS software version|<p>-</p>|`SNMP agent`|upsIdentUPSSoftwareVersion<p>Update: 3600</p>|
|Input frequency|<p>-</p>|`SNMP agent`|upsAdvInputFrequency<p>Update: 180</p>|
|Battery replacement status|<p>-</p>|`SNMP agent`|upsAdvBatteryReplaceIndicator<p>Update: 180</p>|
|Battery status|<p>-</p>|`SNMP agent`|upsBasicBatteryStatus<p>Update: 180</p>|
|Battery temperature|<p>-</p>|`SNMP agent`|upsAdvBatteryTemperature<p>Update: 30</p>|
|Runtime remaining|<p>-</p>|`SNMP agent`|upsAdvBatteryRunTimeRemaining<p>Update: 30</p>|
|Battery voltage|<p>-</p>|`SNMP agent`|upsAdvBatteryActualVoltage<p>Update: 180</p>|
|Battery replaced on|<p>-</p>|`SNMP agent`|upsBasicBatteryLastReplaceDate<p>Update: 3600</p>|
|Output frequency|<p>-</p>|`SNMP agent`|upsAdvOutputFrequency<p>Update: 180</p>|
|Probe temperature|<p>-</p>|`SNMP agent`|iemStatusProbeCurrentTemp<p>Update: 30</p>|
|UPS model|<p>-</p>|`SNMP agent`|upsBasicIdentModel<p>Update: 3600</p>|
|Input voltage|<p>-</p>|`SNMP agent`|upsAdvInputLineVoltage<p>Update: 30</p>|
|Output load|<p>-</p>|`SNMP agent`|upsAdvOutputLoad<p>Update: 30</p>|
|Probe humidity|<p>-</p>|`SNMP agent`|iemStatusProbeCurrentHumid<p>Update: 30</p>|
|Battery charge|<p>-</p>|`SNMP agent`|upsAdvBatteryCapacity<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Ambient temperature critical|<p>-</p>|high|
|Ambient temperature high|<p>-</p>|warning|
|Ambient temperature too low|<p>-</p>|average|
|Battery charge critically low|<p>-</p>|high|
|Battery charge low|<p>-</p>|warning|
|Battery failed|<p>-</p>|high|
|Battery needs replacement|<p>-</p>|warning|
|Battery overheat|<p>-</p>|high|
|Input voltage low|<p>-</p>|warning|
|Input voltage too high|<p>-</p>|warning|
|No battery|<p>-</p>|warning|
|No power input|<p>Input voltage is zero</p>|high|
|Overload|<p>-</p>|average|
