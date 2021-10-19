# Template SNMP Tripplite

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
|upsAlarmsPresent|<p>-</p>|`SNMP agent`|upsAlarmsPresent<p>Update: 30</p>|
|upsBatteryStatus|<p>-</p>|`SNMP agent`|upsBatteryStatus<p>Update: 30</p>|
|upsBatteryTemperature|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 60</p>|
|upsBatteryVoltage|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 60</p>|
|upsBypassCurrent.1|<p>-</p>|`SNMP agent`|upsBypassCurrent.1<p>Update: 30</p>|
|upsBypassFrequency|<p>-</p>|`SNMP agent`|upsBypassFrequency<p>Update: 30</p>|
|upsBypassPower.1|<p>-</p>|`SNMP agent`|upsBypassPower.1<p>Update: 30</p>|
|upsBypassVoltage.1|<p>-</p>|`SNMP agent`|upsBypassVoltage.1<p>Update: 30</p>|
|upsEstimatedChargeRemaining|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 60</p>|
|upsEstimatedMinutesRemaining|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 30</p>|
|upsIdentAgentSoftwareVersion|<p>-</p>|`SNMP agent`|upsIdentAgentSoftwareVersion<p>Update: 600</p>|
|upsIdentModel|<p>-</p>|`SNMP agent`|upsIdentModel<p>Update: 86400</p>|
|upsIdentUPSSoftwareVersion|<p>-</p>|`SNMP agent`|upsIdentUPSSoftwareVersion<p>Update: 600</p>|
|upsInputFrequency.1|<p>-</p>|`SNMP agent`|upsInputFrequency.1<p>Update: 30</p>|
|upsInputLineBads|<p>-</p>|`SNMP agent`|upsInputLineBads<p>Update: 30</p>|
|upsInputVoltage.1|<p>-</p>|`SNMP agent`|upsInputVoltage.1<p>Update: 30</p>|
|upsOutputCurrent.1|<p>-</p>|`SNMP agent`|upsOutputCurrent.1<p>Update: 30</p>|
|upsOutputFrequency|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 30</p>|
|upsOutputPercentLoad.1|<p>-</p>|`SNMP agent`|upsOutputPercentLoad.1<p>Update: 30</p>|
|upsOutputPower.1|<p>-</p>|`SNMP agent`|upsOutputPower.1<p>Update: 30</p>|
|upsOutputSource|<p>-</p>|`SNMP agent`|upsOutputSource<p>Update: 30</p>|
|upsOutputVoltage.1|<p>-</p>|`SNMP agent`|upsOutputVoltage.1<p>Update: 30</p>|
|upsSecondsOnBattery|<p>-</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Battery Charge Depleated|<p>-</p>|high|
|Battery Charge Less Than 80%|<p>-</p>|warning|
|Battery Status Not Normal|<p>-</p>|high|
|Battery Temperature Over Nominal|<p>-</p>|high|
|Battery Time Remaining Below 10 Minutes|<p>-</p>|warning|
|UPS Alarm Present|<p>-</p>|warning|
|UPS Bypassed|<p>-</p>|warning|
|UPS Input Power Line Bad|<p>-</p>|disaster|
|UPS Load Changed|<p>-</p>|information|
|UPS Low Load|<p>-</p>|warning|
|UPS Output Source Not Normal|<p>-</p>|high|
|UPS Overloaded|<p>-</p>|high|
|UPS Power Voltage Outside Nominal|<p>-</p>|high|
|UPS Running On Battery|<p>-</p>|high|
# Template SNMP APC PDU

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Outlets|<p>-</p>|`SNMP agent`|rPDU2Outlet<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|rPDU2DevicePropertiesMaxPhaseCurrentRating.1|<p>-</p>|`SNMP agent`|rPDU2DevicePropertiesMaxPhaseCurrentRating.1<p>Update: 86400</p>|
|rPDU2DeviceStatusLoadState.1|<p>-</p>|`SNMP agent`|rPDU2DeviceStatusLoadState.1<p>Update: 30</p>|
|rPDU2DeviceStatusPeakPower.1|<p>-</p>|`SNMP agent`|rPDU2DeviceStatusPeakPower.1<p>Update: 300</p>|
|rPDU2DeviceStatusPeakPowerTimestamp.1|<p>-</p>|`SNMP agent`|rPDU2DeviceStatusPeakPowerTimestamp.1<p>Update: 300</p>|
|rPDU2DeviceStatusPower.1|<p>-</p>|`SNMP agent`|rPDU2DeviceStatusPower.1<p>Update: 30</p>|
|rPDU2DeviceStatusPowerSupplyAlarm.1|<p>-</p>|`SNMP agent`|rPDU2DeviceStatusPowerSupplyAlarm.1<p>Update: 30</p>|
|rPDU2GroupTotalEnergy.0|<p>-</p>|`SNMP agent`|rPDU2GroupTotalEnergy.0<p>Update: 30</p>|
|rPDU2IdentFirmwareRev.1|<p>-</p>|`SNMP agent`|rPDU2IdentFirmwareRev.1<p>Update: 600</p>|
|rPDU2IdentLocation.1|<p>-</p>|`SNMP agent`|rPDU2IdentLocation.1<p>Update: 86400</p>|
|rPDU2IdentModelNumber.1|<p>-</p>|`SNMP agent`|rPDU2IdentModelNumber.1<p>Update: 86400</p>|
|rPDU2IdentName.1|<p>-</p>|`SNMP agent`|rPDU2IdentName.1<p>Update: 86400</p>|
|rPDU2IdentSerialNumber.1|<p>-</p>|`SNMP agent`|rPDU2IdentSerialNumber.1<p>Update: 86400</p>|
|rPDU2PhaseStatusCurrent.1|<p>-</p>|`SNMP agent`|rPDU2PhaseStatusCurrent.1<p>Update: 30</p>|
|rPDU2PhaseStatusPeakCurrent.1|<p>-</p>|`SNMP agent`|rPDU2PhaseStatusPeakCurrent.1<p>Update: 30</p>|
|rPDU2PhaseStatusPeakCurrentTimestamp.1|<p>-</p>|`SNMP agent`|rPDU2PhaseStatusPeakCurrentTimestamp.1<p>Update: 300</p>|
|rPDU2PhaseStatusVoltage.1|<p>-</p>|`SNMP agent`|rPDU2PhaseStatusVoltage.1<p>Update: 30</p>|
|sPDUIdentFirmwareRev.0|<p>-</p>|`SNMP agent`|sPDUIdentFirmwareRev.0<p>Update: 600</p>|
|sPDUIdentModelNumber.0|<p>-</p>|`SNMP agent`|sPDUIdentModelNumber.0<p>Update: 86400</p>|
|sPDUMasterPending.0|<p>-</p>|`SNMP agent`|sPDUMasterPending.0<p>Update: 60</p>|
|sPDUMasterState.0|<p>-</p>|`SNMP agent`|sPDUMasterState.0<p>Update: 60</p>|
|Outlet $1 Name|<p>-</p>|`SNMP agent`|rPDU2OutletSwitchedConfigName[{#SNMPINDEX}]<p>Update: 3600</p>|
|Outlet $1 Bank|<p>-</p>|`SNMP agent`|rPDU2OutletSwitchedPropertiesBank[{#SNMPINDEX}]<p>Update: 86400</p>|
|Outlet $1 State|<p>-</p>|`SNMP agent`|rPDU2OutletSwitchedStatusState[{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|APC PDU Load Change|<p>-</p>|information|
|APC PDU Load State|<p>-</p>|high|
|APC PDU Power Alarm|<p>-</p>|high|
|Outlet {#SNMPVALUE} State Change|<p>-</p>|information|
