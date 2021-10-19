# Data Domain SNMP

## Overview

Original Template from https://share.zabbix.com/owner/li\_FdWdfntteJ


https://share.zabbix.com/storage-devices/dell-datadomain  
  
- added CIFS Status  
- added Replication Monitoring  
- changed trigger for Filesystem from 95% used to 85% used  
  
This is my first upload if there are issues fell free to comment. :)  
  
David Froelich Textor & Team IT Service



## Author

David Froelich Textor and Team IT

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|ICMP Ping|
|Generic SNMP|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fans|<p>-</p>|`SNMP agent`|fanDescription<p>Update: 1h</p>|
|Replications|<p>-</p>|`SNMP agent`|replSource<p>Update: 1h</p>|
|Disks|<p>-</p>|`SNMP agent`|diskSerialNumber<p>Update: 1h</p>|
|Temperature Sensors|<p>-</p>|`SNMP agent`|tempSensorDescription<p>Update: 1h</p>|
|File Systems|<p>-</p>|`SNMP agent`|fileSystemResourceName<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1m</p>|
|CIFS Status|<p>CIFS status.</p>|`SNMP agent`|cifsStatus<p>Update: 60</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|VTL Library Model|<p>VTL library model.</p>|`SNMP agent`|vtlLibraryModel<p>Update: 1d</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|VTL Library Vendor|<p>VTL library vendor.</p>|`SNMP agent`|vtlLibraryVendor<p>Update: 1d</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1m</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|VTL Library Revision|<p>VTL library revision.</p>|`SNMP agent`|vtlLibraryRevision<p>Update: 1d</p>|
|VTL Library Status|<p>VTL library status.</p>|`SNMP agent`|vtlLibraryStatus<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|VTL Library Serial|<p>VTL library serial.</p>|`SNMP agent`|vtlLibrarySerial<p>Update: 1d</p>|
|VTL Library Name|<p>VTL library name.</p>|`SNMP agent`|vtlLibraryName<p>Update: 1d</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|Device serial number|<p>Serial number of the system.</p>|`SNMP agent`|systemSerialNumber<p>Update: 1d</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|Fan {#SNMPVALUE} Level (LLD)|<p>-</p>|`SNMP agent`|fanLevel[{#SNMPINDEX}]<p>Update: 300</p>|
|Fan {#SNMPVALUE} Status (LLD)|<p>-</p>|`SNMP agent`|fanStatus[{#SNMPINDEX}]<p>Update: 300</p>|
|Replication Filesystem Status {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|replFileSysStatus[{#SNMPINDEX}]<p>Update: 10m</p>|
|Replication Pre Comp Remaining{#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|replPreCompBytesRemaining[{#SNMPINDEX}]<p>Update: 10m</p>|
|Replication State {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|replState[{#SNMPINDEX}]<p>Update: 10m</p>|
|Replication Status {#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|replStatus[{#SNMPINDEX}]<p>Update: 10m</p>|
|Replication Sync as of time{#SNMPVALUE} (LLD)|<p>-</p>|`SNMP agent`|replSyncedAsOfTime[{#SNMPINDEX}]<p>Update: 10m</p>|
|Disk {#SNMPVALUE} Busy (LLD)|<p>Percentage of time disk is busy.</p>|`SNMP agent`|diskBusy[{#SNMPINDEX}]<p>Update: 300</p>|
|Disk {#SNMPVALUE} Model (LLD)|<p>Manufacture and model of the disk.</p>|`SNMP agent`|diskModel[{#SNMPINDEX}]<p>Update: 3600</p>|
|Disk {#SNMPVALUE} State (LLD)|<p>Current state of the disk.</p>|`SNMP agent`|diskPerfState[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor {#SNMPVALUE} Value (LLD)|<p>Current temperature value of the sensor.</p>|`SNMP agent`|tempSensorCurrentValue[{#SNMPINDEX}]<p>Update: 60</p>|
|Sensor {#SNMPVALUE} Status (LLD)|<p>Current status of the sensor.</p>|`SNMP agent`|tempSensorStatus[{#SNMPINDEX}]<p>Update: 60</p>|
|File System {#SNMPVALUE} Percent Used (LLD)|<p>-</p>|`SNMP agent`|fileSystemPercentUsed[{#SNMPINDEX}]<p>Update: 300</p>|
|File System {#SNMPVALUE} Space Available (Gigabytes) (LLD)|<p>-</p>|`SNMP agent`|fileSystemSpaceAvail[{#SNMPINDEX}]<p>Update: 300</p>|
|File System {#SNMPVALUE} Space Size (Gigabytes) (LLD)|<p>-</p>|`SNMP agent`|fileSystemSpaceSize[{#SNMPINDEX}]<p>Update: 300</p>|
|File System {#SNMPVALUE} Space Used (Gigabytes) (LLD)|<p>-</p>|`SNMP agent`|fileSystemSpaceUsed[{#SNMPINDEX}]<p>Update: 300</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME} - Disk {#SNMPINDEX} [SN: {#SNMPVALUE}] is {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/diskPerfState[{#SNMPINDEX}])>1 and last(/Data Domain SNMP/diskPerfState[{#SNMPINDEX}])<5</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Fan {#SNMPVALUE} is {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/fanStatus[{#SNMPINDEX}])<>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} - Used disk space on file system {#SNMPVALUE} is > 85% - LastValue: {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/fileSystemPercentUsed[{#SNMPINDEX}])>85</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Filesystem Status {#SNMPVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replFileSysStatus[{#SNMPINDEX}])=4 or last(/Data Domain SNMP/replFileSysStatus[{#SNMPINDEX}])=5</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Replication State {#SNMPVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replState[{#SNMPINDEX}])=3 or last(/Data Domain SNMP/replState[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Replication Status {#SNMPVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replStatus[{#SNMPINDEX}])=2 or last(/Data Domain SNMP/replStatus[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Sensor {#SNMPVALUE} Status = {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/tempSensorStatus[{#SNMPINDEX}])<>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} - Fan {#SNMPVALUE} is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/fanStatus[{#SNMPINDEX}])<>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} - Filesystem Status {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replFileSysStatus[{#SNMPINDEX}])=4 or last(/Data Domain SNMP/replFileSysStatus[{#SNMPINDEX}])=5</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Replication State {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replState[{#SNMPINDEX}])=3 or last(/Data Domain SNMP/replState[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Replication Status {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replStatus[{#SNMPINDEX}])=2 or last(/Data Domain SNMP/replStatus[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Disk {#SNMPINDEX} [SN: {#SNMPVALUE}] is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/diskPerfState[{#SNMPINDEX}])>1 and last(/Data Domain SNMP/diskPerfState[{#SNMPINDEX}])<5</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Sensor {#SNMPVALUE} Status = {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/tempSensorStatus[{#SNMPINDEX}])<>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} - Used disk space on file system {#SNMPVALUE} is > 85% - LastValue: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/fileSystemPercentUsed[{#SNMPINDEX}])>85</p><p>**Recovery expression**: </p>|average|
