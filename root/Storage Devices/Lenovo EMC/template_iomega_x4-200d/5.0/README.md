# IOMEGA ix4-200d

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interface Discovery|<p>-</p>|`SNMP agent`|net.if.discovery<p>Update: 1m</p>|
|Disks Info|<p>-</p>|`SNMP agent`|diskID<p>Update: 1m</p>|
|I/O Perfomance|<p>-</p>|`SNMP agent`|diskName<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|RAID Status|<p>-</p>|`SNMP agent`|raidStatus<p>Update: 1m</p>|
|Internal Fan|<p>-</p>|`SNMP agent`|fanValue<p>Update: 2m</p>|
|Description|<p>-</p>|`SNMP agent`|deviceDescr<p>Update: 30m</p>|
|Hostname|<p>-</p>|`SNMP agent`|deviceName<p>Update: 30m</p>|
|Temperature|<p>-</p>|`SNMP agent`|tempValue<p>Update: 1m</p>|
|Processor|<p>-</p>|`SNMP agent`|hrDeviceDescr.768<p>Update: 30m</p>|
|Voltage V3.3|<p>-</p>|`SNMP agent`|volt3.3<p>Update: 2m</p>|
|Voltage V1.1|<p>-</p>|`SNMP agent`|volt1.1<p>Update: 2m</p>|
|Up time|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 1m</p>|
|Interface {#IFNAME}: Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Inbound packets with errors|<p>-</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Download|<p>-</p>|`SNMP agent`|net.if.in[ifInOctets.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: MTU|<p>-</p>|`SNMP agent`|net.if.Mtu.[ifMtu.{#SNMPINDEX}]<p>Update: 1h</p>|
|Interface {#IFNAME}: Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Upload|<p>-</p>|`SNMP agent`|net.if.out[ifOutOctets.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Speed|<p>-</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Operational status|<p>-</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Interface type|<p>-</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1h</p>|
|Capacity of disk - $1|<p>-</p>|`SNMP agent`|diskSize[{#DISKID}]<p>Update: 1m</p>|
|Status of Disk - $1|<p>-</p>|`SNMP agent`|diskStatus[{#DISKID}]<p>Update: 1m</p>|
|Average queue length - $1|<p>-</p>|`SNMP agent`|ioAvgQueue[{#DISKNAME}]<p>Update: 2m</p>|
|Average service time at disk - $1|<p>-</p>|`SNMP agent`|ioAvgSvc[{#DISKNAME}]<p>Update: 1m</p>|
|Average waiting time (queue + service) - $1|<p>-</p>|`SNMP agent`|ioAvgWait[{#DISKNAME}]<p>Update: 1m</p>|
|% of CPU time during I/O  requests  to device - $1|<p>-</p>|`SNMP agent`|ioCpuTime[{#DISKNAME}]<p>Update: 2m</p>|
|Read per second - $1|<p>-</p>|`SNMP agent`|ioKbrs[{#DISKNAME}]<p>Update: 1m</p>|
|Written per second - $1|<p>-</p>|`SNMP agent`|ioKbws[{#DISKNAME}]<p>Update: 1m</p>|
|Read merges per second - $1|<p>-</p>|`SNMP agent`|ioMgrs[{#DISKNAME}]<p>Update: 1m</p>|
|Write merges per second - $1|<p>-</p>|`SNMP agent`|ioMgws[{#DISKNAME}]<p>Update: 1m</p>|
|Read io requests per second - $1|<p>-</p>|`SNMP agent`|ioReqrs[{#DISKNAME}]<p>Update: 1m</p>|
|Write io requests per second - $1|<p>-</p>|`SNMP agent`|ioReqws[{#DISKNAME}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Raid Status - DEGRADED|<p>-</p>|high|
|Raid Status - FAULTED|<p>-</p>|disaster|
|Raid Status - REBUILDFS|<p>-</p>|warning|
|Raid Status - REBUILDING|<p>-</p>|warning|
|{#DISKID} :  Status FAULTED|<p>-</p>|disaster|
|{#DISKID} :  Status FOREIGN|<p>-</p>|high|
|{#DISKID} :  Status MISSING|<p>-</p>|disaster|
