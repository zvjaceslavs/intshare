# Mikrotik CRS125-24G-1S-2HnD-IN

## Overview

This template has been customized for CRS125-24G-1S-2HnD-IN, but will probably work fine for other Mikrotik routers. It includes interfaces, processors, memory, disk, availability, temperature, voltage, DHCP leases and wireless clients.


Updated in 2019-May-15 to reflect the OID changes implemented by Mikrotik. For some reason, they changed several OIDs and my monitoring stopped working. After some troubleshooting I found out the router was showing the data on different OIDs so I updated the template to reflect them.


If you are experiencing broken graphics and Items showing as "Not supported" since a few weeks ago, please update the template to this one. Im not sure if you will need to clear the data.. I did it during the troubleshooting process because I thought my DB was somehow corrupted, but please try to update the template first.. if it does not work properly, then clean the historical data of your router in your Zabbix.


 


 


 



## Author

Antonio Forster

## Macros used

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
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 30s</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 30s</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 30s</p>|
|DHCP Leases|<p>-</p>|`SNMP agent`|mtxrDHCPLeaseCount<p>Update: 30s</p>|
|Wireless Clients|<p>-</p>|`SNMP agent`|mtxrWlApClientCount<p>Update: 30s</p>|
|Device contact details|<p>-</p>|`SNMP agent`|sysContact<p>Update: 5m</p>|
|Device description|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 5m</p>|
|Device location|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 5m</p>|
|Device name|<p>-</p>|`SNMP agent`|sysName<p>Update: 5m</p>|
|Device uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 1m</p>|
|Temperature|<p>-</p>|`SNMP agent`|temperature<p>Update: 30s</p>|
|Voltage|<p>-</p>|`SNMP agent`|voltage<p>Update: 30s</p>|
|Interface {#SNMPVALUE} status (LLD)|<p>1 — up 2 — down</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#SNMPVALUE} bps in (LLD)|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.6.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} packets in (LLD)|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.7.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} bps out (LLD)|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.10.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} packets out (LLD)|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.31.1.1.1.11.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#SNMPVALUE} admin status (LLD)|<p>1 — administratively enabled 2 — administratively disabled</p>|`SNMP agent`|MIkAdminStatus[{#SNMPINDEX}]<p>Update: 5m</p>|
|Utilization of processor #$1 (LLD)|<p>-</p>|`SNMP agent`|hrProcessorLoad[{#SNMPINDEX}]<p>Update: 30s</p>|
|Allocation units for storage $1 (LLD)|<p>-</p>|`SNMP agent`|hrStorageAllocationUnits[{#SNMPVALUE}]<p>Update: 1h</p>|
|Description of storage $1 (LLD)|<p>-</p>|`SNMP agent`|hrStorageDescr[{#SNMPVALUE}]<p>Update: 1h</p>|
|Total space on $1 (LLD)|<p>-</p>|`Calculated`|hrStorageSizeInBytes[{#SNMPVALUE}]<p>Update: 1h</p>|
|Total space on $1 in units (LLD)|<p>-</p>|`SNMP agent`|hrStorageSize[{#SNMPVALUE}]<p>Update: 1h</p>|
|Used space on $1 (LLD)|<p>-</p>|`Calculated`|hrStorageUsedInBytes[{#SNMPVALUE}]<p>Update: 1m</p>|
|Used space on $1 in units (LLD)|<p>-</p>|`SNMP agent`|hrStorageUsed[{#SNMPVALUE}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|High CPU Utilization|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:hrProcessorLoad[{#SNMPINDEX}].min(#5)}>80</p><p>**Recovery expression**: </p>|high|
|High CPU Utilization - 100%|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:hrProcessorLoad[{#SNMPINDEX}].min(#5)}=100</p><p>**Recovery expression**: </p>|disaster|
|Incoming traffic ({ITEM.VALUE}) is too high at {#SNMPVALUE} for last 300 sec|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:.1.3.6.1.2.1.31.1.1.1.6.[{#SNMPINDEX}].avg(300)}>838860800</p><p>**Recovery expression**: </p>|disaster|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}].diff(0)}=1</p><p>**Recovery expression**: </p>|high|
|Outgoing traffic ({ITEM.VALUE}) is too high at {#SNMPVALUE} for last 300 sec|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:.1.3.6.1.2.1.31.1.1.1.10.[{#SNMPINDEX}].avg(300)}>838860800</p><p>**Recovery expression**: </p>|disaster|
|Incoming traffic ({ITEM.VALUE}) is too high at {#SNMPVALUE} for last 300 sec (LLD)|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:.1.3.6.1.2.1.31.1.1.1.6.[{#SNMPINDEX}].avg(300)}>838860800</p><p>**Recovery expression**: </p>|disaster|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}].diff(0)}=1</p><p>**Recovery expression**: </p>|high|
|Outgoing traffic ({ITEM.VALUE}) is too high at {#SNMPVALUE} for last 300 sec (LLD)|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:.1.3.6.1.2.1.31.1.1.1.10.[{#SNMPINDEX}].avg(300)}>838860800</p><p>**Recovery expression**: </p>|disaster|
|High CPU Utilization (LLD)|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:hrProcessorLoad[{#SNMPINDEX}].min(#5)}>80</p><p>**Recovery expression**: </p>|high|
|High CPU Utilization - 100% (LLD)|<p>-</p>|<p>**Expression**: {Mikrotik CRS125-24G-1S-2HnD-IN:hrProcessorLoad[{#SNMPINDEX}].min(#5)}=100</p><p>**Recovery expression**: </p>|disaster|
