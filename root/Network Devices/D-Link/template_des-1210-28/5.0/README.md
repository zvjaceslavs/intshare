# Template SNMP D-Link DES-1210-28

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
|LLD Interfaces|<p>-</p>|`SNMP agent`|dlink.des1210.snmp.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of network interfaces|<p>-</p>|`SNMP agent`|dlink.des1210.ifNumber<p>Update: 3600</p>|
|Device name|<p>-</p>|`SNMP agent`|dlink.des1210.sysName<p>Update: 3600</p>|
|Device description|<p>-</p>|`SNMP agent`|dlink.des1210.sysDescr<p>Update: 3600</p>|
|Device location|<p>-</p>|`SNMP agent`|dlink.des1210.sysLocation<p>Update: 3600</p>|
|Device uptime|<p>-</p>|`SNMP agent`|dlink.des1210.sysUpTime<p>Update: 60</p>|
|Interface {#SNMPINDEX} DuplexStatus|<p>unknown(1) halfDuplex(2) fullDuplex(3)</p>|`SNMP agent`|dlink.des1210.duplexstatus[{#SNMPINDEX}]<p>Update: 60</p>|
|Interface $1 Inbound errors|<p>-</p>|`SNMP agent`|dlink.des1210.ifInErrors[{#SNMPINDEX}]<p>Update: 60</p>|
|Interface $1 In|<p>Incoming traffic on interface</p>|`SNMP agent`|dlink.des1210.ifInOctets[{#SNMPINDEX}]<p>Update: 30</p>|
|Interface $1 Operational status|<p>-</p>|`SNMP agent`|dlink.des1210.ifOperStatus[{#SNMPINDEX}]<p>Update: 30</p>|
|interface $1 Outbound errors|<p>-</p>|`SNMP agent`|dlink.des1210.ifOutErrors[{#SNMPINDEX}]<p>Update: 60</p>|
|Interface $1 Out|<p>Outgoing traffic on interface</p>|`SNMP agent`|dlink.des1210.ifOutOctets[{#SNMPINDEX}]<p>Update: 30</p>|
|Interface $1 Speed|<p>-</p>|`SNMP agent`|dlink.des1210.ifSpeed[{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Has been restarted|<p>-</p>|information|
|{HOST.NAME} Errors on network interface {#SNMPINDEX}|<p>-</p>|average|
|{HOST.NAME} Interface {#SNMPINDEX} is down.|<p>-</p>|warning|
|{HOST.NAME} Interface {#SNMPINDEX} is up.|<p>-</p>|warning|
|{HOST.NAME} Operational status was changed on interface {#SNMPINDEX}|<p>-</p>|information|
