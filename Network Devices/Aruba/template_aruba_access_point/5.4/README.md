# Template SNMP Aruba Accesspoint

## Overview

Template for monitoring Aruba Access points with SNMP agent. Requires ICMP module.


Collects IP address, Location, System description, System Name, System uptime, Interfaces, Ping data and SSIDs.

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$PING_LOSS_CRIT}|<p>-</p>|`3`|Text macro|
|{$PING_LOSS_WARN}|<p>-</p>|`20`|Text macro|
|{$PING_RESPONSE_TIME_WARN}|<p>-</p>|`0.15`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SSID|<p>discovery{[#SNMPVALUE},.1.3.6.1.4.1.14823.2.2.1.5.2.1.7.1.2] Name/OID: .1.3.6.1.4.1.14823.2.3.3.1.1.7.1.2.0; Value (OctetString): fnsgjest</p>|`SNMP agent`|wlanAPESSID<p>Update: 5m</p>|
|Interfaces|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System Description|<p>-</p>|`SNMP agent`|SysDescr<p>Update: 60s</p>|
|System name|<p>-</p>|`SNMP agent`|SysName<p>Update: 60s</p>|
|Location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 60s</p>|
|MAC Address|<p>-</p>|`SNMP agent`|ifPhysAddress<p>Update: 1h</p>|
|Pingloss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 30s</p>|
|Ping|<p>-</p>|`Simple check`|icmpping<p>Update: 30s</p>|
|IP Address|<p>-</p>|`SNMP agent`|ipAdEntAddr<p>Update: 30s</p>|
|Ping response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 30s</p>|
|System uptime|<p>-</p>|`SNMP agent`|SysUptime<p>Update: 30s</p>|
|SSID $1 (LLD)|<p>-</p>|`SNMP agent`|wlanAPESSID[{#SNMPVALUE}]<p>Update: 5m</p>|
|Incoming traffic on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 10m</p>|
|Interface $1 operational status (LLD)|<p>-</p>|`SNMP agent`|ifOperStatus[{#SNMPVALUE}]<p>Update: 10m</p>|
|Outgoing traffic on interface $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 10m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Operational status was changed on {HOSTNAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: (last(/Template SNMP Aruba Accesspoint/ifOperStatus[{#SNMPVALUE}],#1)<>last(/Template SNMP Aruba Accesspoint/ifOperStatus[{#SNMPVALUE}],#2))=1</p><p>**Recovery expression**: </p>|average|
|SSID on {HOSTNAME} changed {#SNMPVALUE}|<p>-</p>|<p>**Expression**: (last(/Template SNMP Aruba Accesspoint/wlanAPESSID[{#SNMPVALUE}],#1)<>last(/Template SNMP Aruba Accesspoint/wlanAPESSID[{#SNMPVALUE}],#2))=1</p><p>**Recovery expression**: </p>|average|
|SSID on {HOSTNAME} changed {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: (last(/Template SNMP Aruba Accesspoint/wlanAPESSID[{#SNMPVALUE}],#1)<>last(/Template SNMP Aruba Accesspoint/wlanAPESSID[{#SNMPVALUE}],#2))=1</p><p>**Recovery expression**: </p>|average|
|Operational status was changed on {HOSTNAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: (last(/Template SNMP Aruba Accesspoint/ifOperStatus[{#SNMPVALUE}],#1)<>last(/Template SNMP Aruba Accesspoint/ifOperStatus[{#SNMPVALUE}],#2))=1</p><p>**Recovery expression**: </p>|average|
