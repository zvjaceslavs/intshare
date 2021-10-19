# UPS CyberPower PR1000RT2U

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
|UPS-FailCause|<p>DESCRIPTION "The reason of UPS power failure. This value is set to: - noTransfer(1), if UPS is in utility mode. - highLineVoltage(2), if UPS switch to battery mode by reason of input voltage over the high transfer vloltage. - brownout(3), if UPS switch to battery mode by reason of input voltage under the low transfer vloltage. - selfTest(4), if the UPS was commanded to do a self test."</p>|`SNMP agent`|UPS-FailCause<p>Update: 30s</p>|
|UPS-BatteryMinutesRemaining|<p>-</p>|`SNMP agent`|UPS-BatteryMinutesRemaining<p>Update: 30s</p>|
|UPS-BatteryLevelPercent|<p>-</p>|`SNMP agent`|UPS-BatteryLevelPercent<p>Update: 30s</p>|
|UPS-SerialNumber|<p>-</p>|`SNMP agent`|UPS-SerialNumber<p>Update: 12h</p>|
|UPS-LoadPower|<p>-</p>|`SNMP agent`|UPS-LoadPower<p>Update: 12h</p>|
|UPS-FirmwareRevision|<p>-</p>|`SNMP agent`|UPS-FirmwareRevision<p>Update: 12h</p>|
|UPS-InputFrequency|<p>-</p>|`SNMP agent`|UPS-InputFrequency<p>Update: 30s</p>|
|UPS-BatteryReplaceStatus|<p>-</p>|`SNMP agent`|UPS-BatteryReplaceStatus<p>Update: 30s</p>|
|UPS-PowerRating|<p>-</p>|`SNMP agent`|UPS-PowerRating<p>Update: 12h</p>|
|UPS-OutputVoltage|<p>-</p>|`SNMP agent`|UPS-OutputVoltage<p>Update: 60s</p>|
|UPS-CurrentRating|<p>-</p>|`SNMP agent`|UPS-CurrentRating<p>Update: 12h</p>|
|UPS-InputStatus|<p>1 ⇒ normal 2 ⇒ overVoltage 3 ⇒ underVoltage 4 ⇒ frequencyFailure 5 ⇒ blackout</p>|`SNMP agent`|UPS-InputStatus<p>Update: 30s</p>|
|UPS-OutputPower|<p>-</p>|`SNMP agent`|UPS-OutputPower<p>Update: 60s</p>|
|UPS-BatteryVoltage|<p>-</p>|`SNMP agent`|UPS-BatteryVoltage<p>Update: 30s</p>|
|UPS-OutputWorkingFreq|<p>-</p>|`SNMP agent`|UPS-OutputWorkingFreq<p>Update: 60s</p>|
|UPS-Model|<p>-</p>|`SNMP agent`|UPS-Model<p>Update: 12h</p>|
|UPS-OutputStatus|<p>1 ⇒ unknown 2 ⇒ onLine 3 ⇒ onBattery 4 ⇒ onBoost 5 ⇒ onSleep 6 ⇒ off 7 ⇒ rebooting</p>|`SNMP agent`|UPS-OutputStatus<p>Update: 60s</p>|
|UPS-TimeOnBattery|<p>-</p>|`SNMP agent`|UPS-TimeOnBattery<p>Update: 30s</p>|
|UPS-TemperatureLevelF|<p>-</p>|`Calculated`|UPS-TemperatureLevelF<p>Update: 30s</p>|
|UPS-Name|<p>-</p>|`SNMP agent`|UPS-Name<p>Update: 12h</p>|
|UPS-OutputCurrent|<p>-</p>|`SNMP agent`|UPS-OutputCurrent<p>Update: 60s</p>|
|UPS-OutputLoad|<p>-</p>|`SNMP agent`|UPS-OutputLoad<p>Update: 30s</p>|
|UPS-DateLastReplacedBattery|<p>-</p>|`SNMP agent`|UPS-DateLastReplaced<p>Update: 30s</p>|
|UPS-InputVoltage|<p>-</p>|`SNMP agent`|UPS-InputVoltage<p>Update: 30s</p>|
|UPS-Temperature|<p>1.3.6.1.4.1.3808.1.1.1.2.2.3.0</p>|`SNMP agent`|UPS-TemperatureLevel<p>Update: 30s</p>|
|UPS-OutputFrequency|<p>-</p>|`SNMP agent`|UPS-OutputFrequency<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Blackout on {HOST.NAME}|<p>-</p>|disaster|
|Frequency Failure on {HOST.NAME}|<p>-</p>|disaster|
|LESS than 20 minutes battery remaining on {HOST.NAME}|<p>-</p>|disaster|
|No Electricity on {HOST.NAME}|<p>-</p>|disaster|
|Output is power by UPS Battery on {HOST.NAME}|<p>-</p>|disaster|
|Temperature is above 82F on {HOST.NAME}|<p>-</p>|high|
|Temperature is above 90F on {HOST.NAME}|<p>-</p>|disaster|
|Temperature is below 59F on {HOST.NAME}|<p>-</p>|high|
|Under Voltage on {HOST.NAME}|<p>-</p>|disaster|
|UPS Battery Replacement Needed|<p>-</p>|disaster|
|UPS Overloaded|<p>-</p>|high|
