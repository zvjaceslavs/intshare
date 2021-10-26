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
|File Systems|<p>-</p>|`SNMP agent`|fileSystemResourceName<p>Update: 1h</p>|
|Disks|<p>-</p>|`SNMP agent`|diskSerialNumber<p>Update: 1h</p>|
|Replications|<p>-</p>|`SNMP agent`|replSource<p>Update: 1h</p>|
|Temperature Sensors|<p>-</p>|`SNMP agent`|tempSensorDescription<p>Update: 1h</p>|
|Fans|<p>-</p>|`SNMP agent`|fanDescription<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device serial number|<p>Serial number of the system.</p>|`SNMP agent`|systemSerialNumber<p>Update: 1d</p>|
|CIFS Status|<p>CIFS status.</p>|`SNMP agent`|cifsStatus<p>Update: 60</p>|
|VTL Library Name|<p>VTL library name.</p>|`SNMP agent`|vtlLibraryName<p>Update: 1d</p>|
|VTL Library Model|<p>VTL library model.</p>|`SNMP agent`|vtlLibraryModel<p>Update: 1d</p>|
|VTL Library Revision|<p>VTL library revision.</p>|`SNMP agent`|vtlLibraryRevision<p>Update: 1d</p>|
|VTL Library Serial|<p>VTL library serial.</p>|`SNMP agent`|vtlLibrarySerial<p>Update: 1d</p>|
|VTL Library Vendor|<p>VTL library vendor.</p>|`SNMP agent`|vtlLibraryVendor<p>Update: 1d</p>|
|VTL Library Status|<p>VTL library status.</p>|`SNMP agent`|vtlLibraryStatus<p>Update: 60</p>|
|File System {#SNMPVALUE} Percent Used|<p>-</p>|`SNMP agent`|fileSystemPercentUsed[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|File System {#SNMPVALUE} Space Available (Gigabytes)|<p>-</p>|`SNMP agent`|fileSystemSpaceAvail[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|File System {#SNMPVALUE} Space Size (Gigabytes)|<p>-</p>|`SNMP agent`|fileSystemSpaceSize[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|File System {#SNMPVALUE} Space Used (Gigabytes)|<p>-</p>|`SNMP agent`|fileSystemSpaceUsed[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Disk {#SNMPVALUE} Busy|<p>Percentage of time disk is busy.</p>|`SNMP agent`|diskBusy[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Disk {#SNMPVALUE} Model|<p>Manufacture and model of the disk.</p>|`SNMP agent`|diskModel[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|Disk {#SNMPVALUE} State|<p>Current state of the disk.</p>|`SNMP agent`|diskPerfState[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Replication Filesystem Status {#SNMPVALUE}|<p>-</p>|`SNMP agent`|replFileSysStatus[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Replication Pre Comp Remaining{#SNMPVALUE}|<p>-</p>|`SNMP agent`|replPreCompBytesRemaining[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Replication State {#SNMPVALUE}|<p>-</p>|`SNMP agent`|replState[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Replication Status {#SNMPVALUE}|<p>-</p>|`SNMP agent`|replStatus[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Replication Sync as of time{#SNMPVALUE}|<p>-</p>|`SNMP agent`|replSyncedAsOfTime[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Sensor {#SNMPVALUE} Value|<p>Current temperature value of the sensor.</p>|`SNMP agent`|tempSensorCurrentValue[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|Sensor {#SNMPVALUE} Status|<p>Current status of the sensor.</p>|`SNMP agent`|tempSensorStatus[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|Fan {#SNMPVALUE} Level|<p>-</p>|`SNMP agent`|fanLevel[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|Fan {#SNMPVALUE} Status|<p>-</p>|`SNMP agent`|fanStatus[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
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
|{HOST.NAME} - Used disk space on file system {#SNMPVALUE} is > 85% - LastValue: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/fileSystemPercentUsed[{#SNMPINDEX}])>85</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Disk {#SNMPINDEX} [SN: {#SNMPVALUE}] is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/diskPerfState[{#SNMPINDEX}])>1 and last(/Data Domain SNMP/diskPerfState[{#SNMPINDEX}])<5</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Filesystem Status {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replFileSysStatus[{#SNMPINDEX}])=4 or last(/Data Domain SNMP/replFileSysStatus[{#SNMPINDEX}])=5</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Replication State {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replState[{#SNMPINDEX}])=3 or last(/Data Domain SNMP/replState[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Replication Status {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/replStatus[{#SNMPINDEX}])=2 or last(/Data Domain SNMP/replStatus[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} - Sensor {#SNMPVALUE} Status = {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/tempSensorStatus[{#SNMPINDEX}])<>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} - Fan {#SNMPVALUE} is {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: last(/Data Domain SNMP/fanStatus[{#SNMPINDEX}])<>1</p><p>**Recovery expression**: </p>|warning|
