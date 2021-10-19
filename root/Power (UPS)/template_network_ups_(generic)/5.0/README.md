# Template UPS - diogont

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
|UPS output current|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent<p>Update: 60</p>|
|Device Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 60</p>|
|Software version (full)|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 60</p>|
|UPS battery capacity (%)|<p>-</p>|`SNMP agent`|upsAdvBatteryCapacity<p>Update: 60</p>|
|UPS battery temperature|<p>-</p>|`SNMP agent`|upsAdvBatteryTemperature<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|UPS run time remaining|<p>-</p>|`SNMP agent`|upsAdvRunTimeRemaining<p>Update: 60</p>|
|UPS output frequency|<p>-</p>|`SNMP agent`|upsAdvOutputFrequency<p>Update: 60</p>|
|Device Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|UPS input power|<p>-</p>|`SNMP agent`|upsAdvInputPower<p>Update: 60</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|UPS output power|<p>-</p>|`SNMP agent`|upsAdvOutputPower<p>Update: 60</p>|
|UPS output voltage|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage<p>Update: 60</p>|
|UPS time on battery|<p>-</p>|`SNMP agent`|upsBasicBatteryTimeOnBattery<p>Update: 60</p>|
|UPS output load (%)|<p>-</p>|`SNMP agent`|upsAdvOutputLoad<p>Update: 60</p>|
|UPS input current|<p>-</p>|`SNMP agent`|upsAdvInputCurrent<p>Update: 60</p>|
|Contact|<p>-</p>|`SNMP agent`|sysContact<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|UPS input voltage|<p>-</p>|`SNMP agent`|upsAdvInputVoltage<p>Update: 60</p>|
|UPS battery status|<p>-</p>|`SNMP agent`|upsBasicBatteryStatus<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|High battery temperature on {HOST.NAME}|<p>-</p>|high|
|Run time remaining CRITICAL on {HOST.NAME}|<p>-</p>|disaster|
|Run time remaining LOW on {HOST.NAME}|<p>-</p>|high|
|The battery power is too low to support the load on {HOST.NAME}|<p>-</p>|disaster|
|Output load Critical on {HOST.NAME}|<p>-</p>|high|
|Output load High on {HOST.NAME}|<p>-</p>|warning|
