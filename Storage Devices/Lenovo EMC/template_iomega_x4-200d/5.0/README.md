# IOMEGA ix4-200d

## Overview

* Host Macro


- {$USER} - Username


- {$PASS} - Password


* Features


Discovery Network


Discovery Disk Perfomance


Discover Disk Info.


 

## Author

Levi Pereira

## Macros used

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
|Description|<p>-</p>|`SNMP agent`|deviceDescr<p>Update: 30m</p>|
|Hostname|<p>-</p>|`SNMP agent`|deviceName<p>Update: 30m</p>|
|Internal Fan|<p>-</p>|`SNMP agent`|fanValue<p>Update: 2m</p>|
|Processor|<p>-</p>|`SNMP agent`|hrDeviceDescr.768<p>Update: 30m</p>|
|RAID Status|<p>-</p>|`SNMP agent`|raidStatus<p>Update: 1m</p>|
|Up time|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 1m</p>|
|Temperature|<p>-</p>|`SNMP agent`|tempValue<p>Update: 1m</p>|
|Voltage V1.1|<p>-</p>|`SNMP agent`|volt1.1<p>Update: 2m</p>|
|Voltage V3.3|<p>-</p>|`SNMP agent`|volt3.3<p>Update: 2m</p>|
|Interface {#IFNAME}: Inbound packets discarded (LLD)|<p>-</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Inbound packets with errors (LLD)|<p>-</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Download (LLD)|<p>-</p>|`SNMP agent`|net.if.in[ifInOctets.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: MTU (LLD)|<p>-</p>|`SNMP agent`|net.if.Mtu.[ifMtu.{#SNMPINDEX}]<p>Update: 1h</p>|
|Interface {#IFNAME}: Outbound packets discarded (LLD)|<p>-</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Outbound packets with errors (LLD)|<p>-</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Upload (LLD)|<p>-</p>|`SNMP agent`|net.if.out[ifOutOctets.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Speed (LLD)|<p>-</p>|`SNMP agent`|net.if.speed[ifHighSpeed.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Operational status (LLD)|<p>-</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Interface type (LLD)|<p>-</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1h</p>|
|Capacity of disk - $1 (LLD)|<p>-</p>|`SNMP agent`|diskSize[{#DISKID}]<p>Update: 1m</p>|
|Status of Disk - $1 (LLD)|<p>-</p>|`SNMP agent`|diskStatus[{#DISKID}]<p>Update: 1m</p>|
|Average queue length - $1 (LLD)|<p>-</p>|`SNMP agent`|ioAvgQueue[{#DISKNAME}]<p>Update: 2m</p>|
|Average service time at disk - $1 (LLD)|<p>-</p>|`SNMP agent`|ioAvgSvc[{#DISKNAME}]<p>Update: 1m</p>|
|Average waiting time (queue + service) - $1 (LLD)|<p>-</p>|`SNMP agent`|ioAvgWait[{#DISKNAME}]<p>Update: 1m</p>|
|% of CPU time during I/O  requests  to device - $1 (LLD)|<p>-</p>|`SNMP agent`|ioCpuTime[{#DISKNAME}]<p>Update: 2m</p>|
|Read per second - $1 (LLD)|<p>-</p>|`SNMP agent`|ioKbrs[{#DISKNAME}]<p>Update: 1m</p>|
|Written per second - $1 (LLD)|<p>-</p>|`SNMP agent`|ioKbws[{#DISKNAME}]<p>Update: 1m</p>|
|Read merges per second - $1 (LLD)|<p>-</p>|`SNMP agent`|ioMgrs[{#DISKNAME}]<p>Update: 1m</p>|
|Write merges per second - $1 (LLD)|<p>-</p>|`SNMP agent`|ioMgws[{#DISKNAME}]<p>Update: 1m</p>|
|Read io requests per second - $1 (LLD)|<p>-</p>|`SNMP agent`|ioReqrs[{#DISKNAME}]<p>Update: 1m</p>|
|Write io requests per second - $1 (LLD)|<p>-</p>|`SNMP agent`|ioReqws[{#DISKNAME}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#DISKID} :  Status FAULTED|<p>-</p>|<p>**Expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(FAULTED)}=1</p><p>**Recovery expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(NORMAL)}=1</p>|disaster|
|{#DISKID} :  Status FOREIGN|<p>-</p>|<p>**Expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(FOREIGN)}=1</p><p>**Recovery expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(NORMAL)}=1</p>|high|
|{#DISKID} :  Status MISSING|<p>-</p>|<p>**Expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(MISSING)}=1</p><p>**Recovery expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(NORMAL)}=1</p>|disaster|
|{#DISKID} :  Status FAULTED (LLD)|<p>-</p>|<p>**Expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(FAULTED)}=1</p><p>**Recovery expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(NORMAL)}=1</p>|disaster|
|{#DISKID} :  Status FOREIGN (LLD)|<p>-</p>|<p>**Expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(FOREIGN)}=1</p><p>**Recovery expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(NORMAL)}=1</p>|high|
|{#DISKID} :  Status MISSING (LLD)|<p>-</p>|<p>**Expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(MISSING)}=1</p><p>**Recovery expression**: {IOMEGA ix4-200d:diskStatus[{#DISKID}].str(NORMAL)}=1</p>|disaster|
