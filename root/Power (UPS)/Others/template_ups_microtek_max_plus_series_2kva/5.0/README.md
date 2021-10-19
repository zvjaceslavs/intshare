# Template UPS Microtek MAX plus SERIES 2kVA

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$UPS_BATT_VOLT_LOW}|<p>95.8% of 72</p>|`69`|Text macro|
|{$UPS_BATT_VOLT_VERY_LOW}|<p>91.7% of 72</p>|`66`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|UPS output current|<p>-</p>|`SNMP agent`|upsAdvOutputCurrent<p>Update: 60</p>|
|UPS input voltage|<p>-</p>|`SNMP agent`|upsAdvInputVoltage<p>Update: 60</p>|
|Device Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 24h</p>|
|UPS output load (%)|<p>-</p>|`SNMP agent`|upsAdvOutputLoad<p>Update: 60</p>|
|Device Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 24h</p>|
|UPS battery voltage|<p>-</p>|`SNMP agent`|upsBasicBatteryVoltage<p>Update: 60</p>|
|UPS output frequency|<p>-</p>|`SNMP agent`|upsAdvOutputFrequency<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|UPS battery status|<p>-</p>|`SNMP agent`|upsBasicBatteryStatus<p>Update: 300</p>|
|UPS output voltage|<p>-</p>|`SNMP agent`|upsAdvOutputVoltage<p>Update: 60</p>|
|Contact|<p>-</p>|`SNMP agent`|sysContact<p>Update: 24h</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Software version (full)|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 60</p>|
|UPS output power|<p>-</p>|`SNMP agent`|upsAdvOutputPower<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|Output load Critical on {HOST.NAME}|<p>-</p>|high|
|Output load High on {HOST.NAME}|<p>-</p>|warning|
|The battery power is too low to support the load on {HOST.NAME}|<p>-</p>|disaster|
|low|<p>-</p>|warning|
|very low|<p>-</p>|disaster|
