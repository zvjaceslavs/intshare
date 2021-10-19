# Packetflux

## Overview

Monitoring of UP/Down of device.


 


Discovery of interfaces


 


Generation of triggers for port speed



## Author

klheuser

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMPCOMMUNITY}|<p>-</p>|`ruralwave`|Text macro|
## Template links

|Name|
|----|
|ICMP Ping|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface Discovery|<p>-</p>|`SNMP agent`|inName<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 1d</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName<p>Update: 1d</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1m</p>|
|System Description|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 1d</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 1m</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1m</p>|
|Interface {#IFNAME} Admin Status (LLD)|<p>-</p>|`SNMP agent`|ifAdminStatus.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME} speed (LLD)|<p>-</p>|`SNMP agent`|ifSpeed.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#IFNAME}: Ethernet has changed to lower speed than it was before|<p>-</p>|<p>**Expression**: change(/Packetflux/ifSpeed.[{#SNMPINDEX}])>0 and last(/Packetflux/ifSpeed.[{#SNMPINDEX}])>0</p><p>**Recovery expression**: change(/Packetflux/ifSpeed.[{#SNMPINDEX}])>0 and last(/Packetflux/ifSpeed.[{#SNMPINDEX}],#2)>0</p>|warning|
|Interface {#IFNAME}: Ethernet has changed to lower speed than it was before (LLD)|<p>-</p>|<p>**Expression**: change(/Packetflux/ifSpeed.[{#SNMPINDEX}])>0 and last(/Packetflux/ifSpeed.[{#SNMPINDEX}])>0</p><p>**Recovery expression**: change(/Packetflux/ifSpeed.[{#SNMPINDEX}])>0 and last(/Packetflux/ifSpeed.[{#SNMPINDEX}],#2)>0</p>|warning|
