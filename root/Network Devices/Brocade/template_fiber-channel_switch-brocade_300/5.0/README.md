# BROCADE FIBER CHANNEL SWITCH

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
|Temperature on Sensor 1|<p>-</p>|`SNMP agent`|swSensorInfo.1<p>Update: 300</p>|
|Status of Power Supply|<p>-</p>|`SNMP agent`|swSensorStatus.7<p>Update: 300</p>|
|Status of Temperature Sensor 2|<p>-</p>|`SNMP agent`|swSensorStatus.2<p>Update: 300</p>|
|Speed of FAN 1|<p>-</p>|`SNMP agent`|swSensorInfo.4<p>Update: 300</p>|
|System uptime|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 300</p>|
|Speed of FAN 3|<p>-</p>|`SNMP agent`|swSensorInfo.6<p>Update: 300</p>|
|Status of Temperature Sensor 3|<p>-</p>|`SNMP agent`|swSensorStatus.3<p>Update: 300</p>|
|Status of FAN 2|<p>-</p>|`SNMP agent`|swSensorStatus.5<p>Update: 300</p>|
|Status of Temperature Sensor 1|<p>-</p>|`SNMP agent`|swSensorStatus.1<p>Update: 300</p>|
|Speed of FAN 2|<p>-</p>|`SNMP agent`|swSensorInfo.5<p>Update: 300</p>|
|Status of FAN 3|<p>-</p>|`SNMP agent`|swSensorStatus.6<p>Update: 300</p>|
|Temperature on Sensor 2|<p>-</p>|`SNMP agent`|swSensorInfo.2<p>Update: 300</p>|
|Status of FAN 1|<p>-</p>|`SNMP agent`|swSensorStatus.4<p>Update: 300</p>|
|Temperature on Sensor 3|<p>-</p>|`SNMP agent`|swSensorInfo.3<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} is above limit|<p>-</p>|high|
|{HOST.NAME} is above limit|<p>-</p>|high|
|{HOST.NAME} is above limit|<p>-</p>|high|
|{HOST.NAME} is faulty|<p>-</p>|high|
|{HOST.NAME} is faulty|<p>-</p>|high|
|{HOST.NAME} is faulty|<p>-</p>|high|
|{HOST.NAME} is faulty|<p>-</p>|high|
|{HOST.NAME} is faulty|<p>-</p>|high|
|{HOST.NAME} is faulty|<p>-</p>|high|
