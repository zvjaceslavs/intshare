# Template Windows ICMP Macro Discovery Active

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ICMP_DEVICES}|<p>-</p>|`127.0.0.1,localhost ! 127.0.1.1,camera1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP Macro Discovery|<p>-</p>|`Zabbix agent (active)`|system.run["echo {$ICMP_DEVICES} && break"]<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP Devices Macros Content|<p>-</p>|`Zabbix agent (active)`|system.run["echo {$ICMP_DEVICES}"]<p>Update: 1h</p>|
|Overall ICMP hosts status|<p>-</p>|`External check`|zbx_app_worst_trigger.php["{HOST.HOST}", "/ICMP/"]<p>Update: 1m</p>|
|Response for ICMP agent ping {#ICMPDEVICENAME}|<p>-</p>|`Zabbix agent (active)`|system.run["ping -n 4 {#ICMPDEVICEIP}"]<p>Update: 5m</p>|
|{#ICMPDEVICENAME} ICMP availability|<p>-</p>|`Zabbix agent (active)`|system.run["ping -n 4 {#ICMPDEVICEIP} | find /v /c \"\""]<p>Update: 1m</p>|
|{#ICMPDEVICENAME} ICMP packet loss|<p>-</p>|`Zabbix agent (active)`|system.run["ping -n 4 {#ICMPDEVICEIP} | findstr [0-9]"]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Недоступен узел {#ARPADDRESS} во внутренней сети|<p>-</p>|information|
