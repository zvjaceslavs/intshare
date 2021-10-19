# Template UPS TRIPH - diogont

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
|UPS input voltage L1|<p>-</p>|`SNMP agent`|upsAdvInputVoltage1<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|UPS output voltage L3|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage3<p>Update: 60</p>|
|UPS input voltage L3|<p>-</p>|`SNMP agent`|upsAdvInputVoltage3<p>Update: 60</p>|
|UPS output power L2|<p>-</p>|`SNMP agent`|upsAdvOutputPower2<p>Update: 60</p>|
|UPS output current L3|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent3<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|UPS output voltage L2|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage2<p>Update: 60</p>|
|UPS time on battery|<p>-</p>|`SNMP agent`|upsBasicBatteryTimeOnBattery<p>Update: 60</p>|
|UPS output power L1|<p>-</p>|`SNMP agent`|upsAdvOutputPower1<p>Update: 60</p>|
|UPS input voltage L2|<p>-</p>|`SNMP agent`|upsAdvInputVoltage2<p>Update: 60</p>|
|UPS output current L1|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent1<p>Update: 60</p>|
|UPS battery status|<p>-</p>|`SNMP agent`|upsBasicBatteryStatus<p>Update: 60</p>|
|Device Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 60</p>|
|Contact|<p>-</p>|`SNMP agent`|sysContact<p>Update: 60</p>|
|UPS battery capacity (%)|<p>-</p>|`SNMP agent`|upsAdvBatteryCapacity<p>Update: 60</p>|
|Device Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 60</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Software version (full)|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 60</p>|
|UPS output load (%)|<p>-</p>|`SNMP agent`|upsAdvOutputLoad<p>Update: 60</p>|
|UPS output current L2|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent2<p>Update: 60</p>|
|UPS output power L3|<p>-</p>|`SNMP agent`|upsAdvOutputPower3<p>Update: 60</p>|
|UPS battery temperature|<p>-</p>|`SNMP agent`|upsAdvBatteryTemperature<p>Update: 60</p>|
|UPS output voltage L1|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage1<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|Battery Capacity|<p>-</p>|high|
|High battery temperature on {HOST.NAME}|<p>-</p>|high|
|Output load Critical on {HOST.NAME}|<p>-</p>|high|
|Output load High on {HOST.NAME}|<p>-</p>|warning|
|The battery power is too low to support the load on {HOST.NAME}|<p>-</p>|disaster|
