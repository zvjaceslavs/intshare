# Template SNMP Tripp Lite PDU 15

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAX_INPUTVOLTAGE}|<p>-</p>|`125`|Text macro|
|{$MAX_OUTPUTCURRENT_CRITICAL}|<p>-</p>|`12`|Text macro|
|{$MAX_OUTPUTCURRENT_WARNING}|<p>-</p>|`10`|Text macro|
|{$MIN_INPUTVOLTAGE}|<p>-</p>|`115`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`zabbix`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Outlets|<p>-</p>|`SNMP agent`|tlpAtsOutletIndex<p>Update: 86400</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Minimum Input Voltage|<p>The number of input voltages. Phase to phase or phase to neutral. This variable indicates the number of rows in the input table.</p>|`SNMP agent`|tlpAtsOutputCurrentMin<p>Update: {$UPDATEINT}</p>|
|SNMP traps (fallback)|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|Output Current|<p>-</p>|`SNMP agent`|tlpAtsOutputCurrent<p>Update: {$UPDATEINT}</p>|
|Device Name|<p>A string identifying the UPS. This object should be set by the administrator.</p>|`SNMP agent`|tlpDeviceName<p>Update: 86400</p>|
|Device Location|<p>The device location string.</p>|`SNMP agent`|tlpDeviceLocation<p>Update: 86400</p>|
|Agent Software Version|<p>The UPS agent software version. This variable may or may not have the same value as upsIdentUPSSoftwareVersion in some implementations.</p>|`SNMP agent`|tlpAgentVersion<p>Update: 86400</p>|
|Model Identification|<p>The UPS Model designation.</p>|`SNMP agent`|tlpDeviceModel<p>Update: 86400</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Input - Voltage|<p>The number of input voltages. Phase to phase or phase to neutral. This variable indicates the number of rows in the input table.</p>|`SNMP agent`|tlpAtsInputPhaseVoltage<p>Update: {$UPDATEINT}</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Manufacturer Identification|<p>The name of the UPS manufacturer.</p>|`SNMP agent`|tlpDeviceManufacturer<p>Update: 86400</p>|
|Input - Frequency|<p>-</p>|`SNMP agent`|tlpAtsInputPhaseFrequency<p>Update: {$UPDATEINT}</p>|
|PDU  Software Version|<p>The UPS firmware/software version(s). This variable may or may not have the same value as upsIdentAgentSoftwareVersion in some implementations.</p>|`SNMP agent`|tlpDeviceIdentFirmwareVersion<p>Update: 86400</p>|
|PDU Serial Number|<p>Serial number for the UPS.</p>|`SNMP agent`|tlpDeviceIdentSerialNum<p>Update: 86400</p>|
|Maximum Output Current|<p>-</p>|`SNMP agent`|tlpAtsOutputCurrentMax<p>Update: {$UPDATEINT}</p>|
|Low Transfer Voltage|<p>The number of input voltages. Phase to phase or phase to neutral. This variable indicates the number of rows in the input table.</p>|`SNMP agent`|tlpAtsConfigLowVoltageTransfer<p>Update: {$UPDATEINT}</p>|
|Input - Source Availability|<p>Reports power input sources for PDU.</p>|`SNMP agent`|tlpAtsInputSourceAvailability<p>Update: 30s</p>|
|Maximum Input Voltage|<p>The number of input voltages. Phase to phase or phase to neutral. This variable indicates the number of rows in the input table.</p>|`SNMP agent`|tlpAtsInputPhaseVoltageMax<p>Update: {$UPDATEINT}</p>|
|Outlet - Ramp data type of outlet $1|<p>The type of data associated with ramp action.</p>|`SNMP agent`|tlAtsOutletRampDataType[{#SNMPVALUE}]<p>Update: 1d</p>|
|Outlet - Ndx group of outlet $1|<p>tlPDUOutletGroupIndex of corresponding outlet group, or 0 if ungrouped.</p>|`SNMP agent`|tlpAtsOutletGroup[{#SNMPVALUE}]<p>Update: 1d</p>|
|Outlet - Name of outlet $1|<p>A string identifying the devices attached to the output(s) of the device.</p>|`SNMP agent`|tlpAtsOutletName[{#SNMPVALUE}]<p>Update: 1d</p>|
|Outlet - Ramp action of outlet $1|<p>The ramp action to take on the Outlet.</p>|`SNMP agent`|tlpAtsOutletRampAction[{#SNMPVALUE}]<p>Update: 1d</p>|
|Outlet - Shed action of outlet $1|<p>The shed action to take on the Outlet.</p>|`SNMP agent`|tlpAtsOutletShedAction[{#SNMPVALUE}]<p>Update: 1d</p>|
|Outlet - Shed action data type of outlet $1|<p>The type of data associated with shed action.</p>|`SNMP agent`|tlpAtsOutletShedDataType[{#SNMPVALUE}]<p>Update: 1d</p>|
|Outlet - State of outlet $1|<p>The current state of the Outlet.</p>|`SNMP agent`|tlpAtsOutletState[{#SNMPVALUE}]<p>Update: 2m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|PDU Current Output Reaching Limit|<p>-</p>|high|
|PDU Current Output Too High|<p>-</p>|warning|
|PDU Lost Input Redundancy|<p>PDU has lost power redundancy. An input has failed.</p>|high|
|PDU Power Voltage Too High|<p>-</p>|high|
|PDU Power Voltage Too Low|<p>-</p>|high|
