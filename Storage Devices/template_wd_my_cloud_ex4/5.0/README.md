# WD My Cloud EX4 Template

## Overview

Zabbix SNMP Template for (Western Digital) WD My Cloud EX4


In WD My Cloud EX4 is simple (MIBs here http://downloads.wdc.com/nas/WDMYCLOUDEX4-MIB.txt). 


Because some OID return not-clear-byte values (150.3G, 2.3T) - in items used "regex-magic". Loosing some precision (i try to beat this problem), for flexiable data:


Prerequisites:
--------------


* Enable SNMP on WD My Cloud EX4
* Zabbix 3.4+ with preproccessing support for regex-magic on item


Feautres:
---------


Low Level Discovery:


* physical disks
* logical disks
* UPS


Notice:
-------


In my env this NAS is "lazy" and have problems with BULK SNMP queries from Zabbix.


Template uses vars set on host-level:


* {$SNMP\_PORT}
* {$SNMP\_COMMUNITY}
## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|UPSs|<p>-</p>|`SNMP agent`|upsDiscovery<p>Update: 1h</p>|
|Physical Disks|<p>-</p>|`SNMP agent`|pdDiscovery<p>Update: 1h</p>|
|Logical Disks|<p>-</p>|`SNMP agent`|ldDiscovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Agent Version|<p>-</p>|`SNMP agent`|agentVer<p>Update: 1h</p>|
|Fan status|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 1m</p>|
|FTP status|<p>-</p>|`SNMP agent`|ftpServer<p>Update: 1h</p>|
|Hostname|<p>-</p>|`SNMP agent`|hostName<p>Update: 1h</p>|
|Net type|<p>-</p>|`SNMP agent`|netType<p>Update: 1h</p>|
|Software version|<p>-</p>|`SNMP agent`|softwareVersion<p>Update: 1h</p>|
|Temperature|<p>-</p>|`SNMP agent`|temperature<p>Update: 1m</p>|
|UPS No{#SNMPINDEX} Battery Charge (LLD)|<p>-</p>|`SNMP agent`|upsBattery[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS No{#SNMPINDEX} Manufacturer (LLD)|<p>-</p>|`SNMP agent`|upsManufacturer[{#SNMPINDEX}]<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Mode (LLD)|<p>-</p>|`SNMP agent`|upsMode[{#SNMPINDEX}]<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Product (LLD)|<p>-</p>|`SNMP agent`|upsProduct[{#SNMPINDEX}]<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Status (LLD)|<p>-</p>|`SNMP agent`|upsStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk capacity in slot {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|pd.capacity[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk model in slot {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|pd.model[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk SN in slot {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|pd.SN[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk temperature in slot {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|pd.temperature[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk vendor in slot {#SNMPINDEX} (LLD)|<p>-</p>|`SNMP agent`|pd.Vendor[{#SNMPINDEX}]<p>Update: 1h</p>|
|Logical disk {#VOLUMENAME} free space (LLD)|<p>-</p>|`SNMP agent`|ld.freespace[{#VOLUMENAME}]<p>Update: 1m</p>|
|Logical disk {#VOLUMENAME} FS type (LLD)|<p>-</p>|`SNMP agent`|ld.fstype[{#VOLUMENAME}]<p>Update: 1h</p>|
|Logical disk {#VOLUMENAME} free percent (LLD)|<p>-</p>|`Calculated`|ld.pfree[{#VOLUMENAME}]<p>Update: 1m</p>|
|Logical disk {#VOLUMENAME} RAID level (LLD)|<p>-</p>|`SNMP agent`|ld.raid[{#VOLUMENAME}]<p>Update: 1h</p>|
|Logical disk {#VOLUMENAME} size (LLD)|<p>-</p>|`SNMP agent`|pd.size[{#VOLUMENAME}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Logical Disk {#VOLUMENAME} free space less 25%|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:ld.pfree[{#VOLUMENAME}].last()}<25</p><p>**Recovery expression**: </p>|warning|
|Physical disk {#SNMPINDEX} temperature|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:pd.temperature[{#SNMPINDEX}].avg(#5)}>55</p><p>**Recovery expression**: </p>|warning|
|Battery Charge Critical|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:upsBattery[{#SNMPINDEX}].last()}<25</p><p>**Recovery expression**: </p>|high|
|Battery Charge Low|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:upsBattery[{#SNMPINDEX}].last()}<50</p><p>**Recovery expression**: </p>|average|
|Battery Status|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:upsStatus[{#SNMPINDEX}].regexp("On Line",#3)}=0</p><p>**Recovery expression**: </p>|warning|
|Battery Charge Critical (LLD)|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:upsBattery[{#SNMPINDEX}].last()}<25</p><p>**Recovery expression**: </p>|high|
|Battery Charge Low (LLD)|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:upsBattery[{#SNMPINDEX}].last()}<50</p><p>**Recovery expression**: </p>|average|
|Battery Status (LLD)|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:upsStatus[{#SNMPINDEX}].regexp("On Line",#3)}=0</p><p>**Recovery expression**: </p>|warning|
|Physical disk {#SNMPINDEX} temperature (LLD)|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:pd.temperature[{#SNMPINDEX}].avg(#5)}>55</p><p>**Recovery expression**: </p>|warning|
|Logical Disk {#VOLUMENAME} free space less 25% (LLD)|<p>-</p>|<p>**Expression**: {WD My Cloud EX4 Template:ld.pfree[{#VOLUMENAME}].last()}<25</p><p>**Recovery expression**: </p>|warning|
