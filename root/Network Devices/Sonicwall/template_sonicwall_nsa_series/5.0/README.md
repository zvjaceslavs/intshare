# Template SNMP Sonicwall 4600

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interfaces |<p>-</p>|`SNMP agent`|sonicwallifDescr<p>Update: 90</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Current CPU Util|<p>-</p>|`SNMP agent`|sonicwallCurrentCPUUtil<p>Update: 60</p>|
|Current Connections|<p>-</p>|`SNMP agent`|sonicwallCurrentConnections<p>Update: 60</p>|
|Sonicwall Model|<p>-</p>|`SNMP agent`|SysmModel<p>Update: 3600</p>|
|Current RAM Usage|<p>-</p>|`SNMP agent`|sonicwallCurrentRAMUtil<p>Update: 60</p>|
|Sonicwall Serial Number|<p>-</p>|`SNMP agent`|SysmSerialNumber<p>Update: 3600</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|SysmFirmwareVersion<p>Update: 3600</p>|
|Incoming Traffic on interface $1|<p>-</p>|`SNMP agent`|ifInOctets.[{#SNMPVALUE}]<p>Update: 30</p>|
|Outgoing Traffic on interface $1|<p>-</p>|`SNMP agent`|ifOutOctets.[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Sonicwall {HOSTNAME} - Usage of CPU over 95%|<p>CPU activity on Sonicwall is more than 95% during the last five checks</p>|average|
|Sonicwall {HOSTNAME} - Memory Usage Over 100%|<p>Memory usage on Sonicwall is more than 100% during the last five checks</p>|average|
