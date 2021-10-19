# Mikrotik CRS125-24G-1S-2HnD-IN

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MIKROTIK.CPUCORE.LOAD.MAX}|<p>-</p>|`80`|Text macro|
|{$MIKROTIK.MAX.TRAF}|<p>-</p>|`838860800`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interfaces|<p>-</p>|`SNMP agent`|MikInterfaces<p>Update: 5m</p>|
|Processors|<p>-</p>|`SNMP agent`|hrProcessorLoad<p>Update: 5m</p>|
|Disk partitions|<p>-</p>|`SNMP agent`|hrStorageDescr<p>Update: 5m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Voltage|<p>-</p>|`SNMP agent`|voltage<p>Update: 30s</p>|
|Temperature|<p>-</p>|`SNMP agent`|temperature<p>Update: 30s</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 30s</p>|
|Device contact details|<p>-</p>|`SNMP agent`|sysContact<p>Update: 5m</p>|
|Device uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 1m</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 30s</p>|
|Device description|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 5m</p>|
|Device name|<p>-</p>|`SNMP agent`|sysName<p>Update: 5m</p>|
|DHCP Leases|<p>-</p>|`SNMP agent`|mtxrDHCPLeaseCount<p>Update: 30s</p>|
|Wireless Clients|<p>-</p>|`SNMP agent`|mtxrWlApClientCount<p>Update: 30s</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 30s</p>|
|Device location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 5m</p>|
|Interface {#SNMPVALUE} status|<p>1 — up 2 — down</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#SNMPVALUE} bps in|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.6.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} packets in|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.7.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} bps out|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.10.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} packets out|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.11.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} admin status|<p>1 — administratively enabled 2 — administratively disabled</p>|`SNMP agent`|MIkAdminStatus[{#SNMPINDEX}]<p>Update: 5m</p>|
|Utilization of processor #$1|<p>-</p>|`SNMP agent`|hrProcessorLoad[{#SNMPINDEX}]<p>Update: 30s</p>|
|Allocation units for storage $1|<p>-</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 1h</p>|
|Description of storage $1|<p>-</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 1h</p>|
|Total space on $1|<p>-</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 1h</p>|
|Total space on $1 in units|<p>-</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 1h</p>|
|Used space on $1|<p>-</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 1m</p>|
|Used space on $1 in units|<p>-</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Incoming traffic ({ITEM.VALUE}) is too high at {#SNMPVALUE} for last 300 sec|<p>-</p>|disaster|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|high|
|Outgoing traffic ({ITEM.VALUE}) is too high at {#SNMPVALUE} for last 300 sec|<p>-</p>|disaster|
|High CPU Utilization|<p>-</p>|high|
|High CPU Utilization - 100%|<p>-</p>|disaster|
