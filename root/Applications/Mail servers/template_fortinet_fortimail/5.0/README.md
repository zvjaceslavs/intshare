# Template Fortimail 60D

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_USAGE_MAX}|<p>-</p>|`90`|Text macro|
|{$LOG_DISK_USAGE_MAX}|<p>-</p>|`90`|Text macro|
|{$MAIL_DISK_USAGE_MAX}|<p>-</p>|`90`|Text macro|
|{$MEMORY_USAGE_MAX}|<p>-</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Mail Queue|<p>-</p>|`SNMP agent`|fmlMailQueueName<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Log Disk Usage|<p>-</p>|`SNMP agent`|fmlSysLogDiskUsage<p>Update: 30s</p>|
|Product Model|<p>-</p>|`SNMP agent`|fmlSysModel<p>Update: 1h</p>|
|Mail Disk Usage|<p>-</p>|`SNMP agent`|fmlSysMailDiskUsage<p>Update: 30s</p>|
|Session count|<p>-</p>|`SNMP agent`|fmlSysSesCount<p>Update: 30s</p>|
|Operational Mode|<p>-</p>|`SNMP agent`|fmlSysOpMode<p>Update: 1h</p>|
|Product Serial Number|<p>-</p>|`SNMP agent`|fmlSysSerial<p>Update: 1h</p>|
|System Load|<p>-</p>|`SNMP agent`|fmlSysSysLoad<p>Update: 30s</p>|
|Antivirus DB Version|<p>-</p>|`SNMP agent`|fmlSysVersionAV<p>Update: 1h</p>|
|Product Firmware Version|<p>-</p>|`SNMP agent`|fmlSysVersion<p>Update: 1h</p>|
|Memory Usage|<p>-</p>|`SNMP agent`|fmlSysMemUsage<p>Update: 30s</p>|
|CPU Usage|<p>-</p>|`SNMP agent`|fmlSysCpuUsage<p>Update: 30s</p>|
|[{#FMLMAILQUEUENAME}] Mail Count|<p>-</p>|`SNMP agent`|fmlMailQueueMailCount.[{#SNMPINDEX}]<p>Update: 30s</p>|
|[{#FMLMAILQUEUENAME}] Mail Size|<p>-</p>|`SNMP agent`|fmlMailQueueMailSize.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Firmware has changed|<p>Last value: {ITEM.LASTVALUE1}. Firmware version has changed. Ack to close</p>|information|
|High CPU Usage|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|High Log Disk Usage|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|High Mail Disk Usage|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|High Memory Usage|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
