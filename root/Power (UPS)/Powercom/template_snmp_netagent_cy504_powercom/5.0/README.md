# Template_PowerCom

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
|PowerCom: Battery Capacity (%)|<p>-</p>|`SNMP agent`|BatteryCapacity<p>Update: 30s</p>|
|PowerCom: Battery Status|<p>-</p>|`SNMP agent`|BatteryStatus<p>Update: 30s</p>|
|PowerCom: Battery Voltage|<p>-</p>|`SNMP agent`|BatteryVoltage<p>Update: 30s</p>|
|PowerCom: Firmware Version UPS|<p>-</p>|`SNMP agent`|FirmwareUPS<p>Update: 40320s</p>|
|PowerCom: Firmware Version Card|<p>-</p>|`SNMP agent`|FirmwareVersionCard<p>Update: 40320s</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|PowerCom: Input Frequency|<p>-</p>|`SNMP agent`|InputFrequency<p>Update: 30s</p>|
|PowerCom: Input Voltage|<p>-</p>|`SNMP agent`|InputVoltage<p>Update: 30s</p>|
|PowerCom: Model|<p>-</p>|`SNMP agent`|ModelUPS<p>Update: 40320s</p>|
|PowerCom: Output Frequency|<p>-</p>|`SNMP agent`|OutputFrequency<p>Update: 30s</p>|
|PowerCom: Output Load (%)|<p>-</p>|`SNMP agent`|OutputLoad<p>Update: 30s</p>|
|PowerCom: Output Power|<p>-</p>|`SNMP agent`|OutputPower<p>Update: 5s</p>|
|PowerCom: Output Voltage|<p>-</p>|`SNMP agent`|OutputVoltage<p>Update: 30s</p>|
|PowerCom: Run Time Remaining|<p>-</p>|`SNMP agent`|RunTimeRemaining<p>Update: 30s</p>|
|PowerCom: SysUpTime|<p>-</p>|`SNMP agent`|SysUpTime<p>Update: 30s</p>|
|PowerCom: Temperature|<p>-</p>|`SNMP agent`|Temperature<p>Update: 30s</p>|
|PowerCom: TimeOnBattery|<p>-</p>|`SNMP agent`|TimeOnBattery<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|PowerCom: Battary Status|<p>unknown (1), batteryNormal (2), batteryLow (3), batteryDepleted (4)</p>|disaster|
|PowerCom: No Input Voltage|<p>-</p>|disaster|
|PowerCom: Output Load Too High - {HOST.NAME}|<p>-</p>|warning|
|PowerCom: Battary ieft: < 5 minutes - {HOST.NAME}|<p>-</p>|disaster|
|PowerCom: Battary ieft: < 10 minutes - {HOST.NAME}|<p>-</p>|high|
|PowerCom: MAX Temperature Overhead - {HOST.NAME}|<p>-</p>|disaster|
