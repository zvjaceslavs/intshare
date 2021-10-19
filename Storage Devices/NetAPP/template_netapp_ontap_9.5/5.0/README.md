# Template SNMP NetApp cDot

## Overview

For Netapp Ontape 9.5 and later.


Discovery rules:


- Aggregates  
- Enclosures  
- LIFs   
- Nodes   
- SnapMirror (New)  
- Volumes


Based on "NETAPP ONTAP 9.1" edited by "[zabbiJ](owner/zabbiJ)".



## Author

eric_at_2037

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Aggregates|<p>-</p>|`SNMP agent`|aggr<p>Update: 12h</p>|
|Enclosures|<p>-</p>|`SNMP agent`|encl<p>Update: 12h</p>|
|LIFs|<p>-</p>|`SNMP agent`|lif<p>Update: 12h</p>|
|Nodes|<p>-</p>|`SNMP agent`|node<p>Update: 12h</p>|
|SnapMirror|<p>-</p>|`SNMP agent`|snapmirror<p>Update: 300s</p>|
|Volumes|<p>-</p>|`SNMP agent`|volume<p>Update: 12h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Autosupport Failed Sends|<p>-</p>|`SNMP agent`|autosupportFailedSends<p>Update: 5m</p>|
|Autosupport Status|<p>-</p>|`SNMP agent`|autosupportStatus<p>Update: 5m</p>|
|Autosupport Status Message|<p>-</p>|`SNMP agent`|autosupportStatusMessage<p>Update: 5m</p>|
|Autosupport Successful Sends|<p>-</p>|`SNMP agent`|autosupportSuccessfulSends<p>Update: 5m</p>|
|CPU usage (%)|<p>-</p>|`SNMP agent`|cpuBusyTimePerCent<p>Update: 1m</p>|
|CPU Count|<p>-</p>|`SNMP agent`|cpuCount<p>Update: 30m</p>|
|Failed Disks Count|<p>-</p>|`SNMP agent`|diskFailedCount<p>Update: 1m</p>|
|Disk Failed Message|<p>-</p>|`SNMP agent`|diskFailedMessage<p>Update: 1m</p>|
|Prefailed Disks Count|<p>-</p>|`SNMP agent`|diskPrefailedCount<p>Update: 1m</p>|
|Number of reconstructing parity Disks|<p>-</p>|`SNMP agent`|diskReconstructingParityCount<p>Update: 1m</p>|
|Number of spare Disks|<p>-</p>|`SNMP agent`|diskSpareCount<p>Update: 30m</p>|
|Number of Disks|<p>-</p>|`SNMP agent`|diskTotalCount<p>Update: 30m</p>|
|Number of verifying parity Disks|<p>-</p>|`SNMP agent`|diskVerifyingParityCount<p>Update: 1m</p>|
|Product Version|<p>-</p>|`SNMP agent`|productVersio<p>Update: 30m</p>|
|Aggregate Owners[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|aggrOwners[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate Raidtype[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|aggrRaidType[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate State[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|aggrState[{#SNMPINDEX}]<p>Update: 1m</p>|
|Aggregate Status[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|aggrStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Aggregate Type[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|aggrType[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate Size[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|df64TotalKBytes[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate Used Size[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|df64UsedKBytes[{#SNMPINDEX}]<p>Update: 3m</p>|
|Aggregate Size Free (%)[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|dfPerCentKBytesCapacity[{#SNMPINDEX}]<p>Update: 3m</p>|
|Aggregate Filesystem Status[{#AGGRNAME}] (LLD)|<p>-</p>|`SNMP agent`|dfStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Failed Electronic (LLD)|<p>-</p>|`SNMP agent`|enclElectronicsFailed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Temperature warn (LLD)|<p>-</p>|`SNMP agent`|enclTempSensorsOverTempWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Voltage fail (LLD)|<p>-</p>|`SNMP agent`|enclVoltSensorsUnderVoltFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Voltage warn (LLD)|<p>-</p>|`SNMP agent`|enclVoltSensorsOverVoltWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Voltage fail (LLD)|<p>-</p>|`SNMP agent`|enclVoltSensorsOverVoltFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Current Voltage (LLD)|<p>-</p>|`SNMP agent`|enclVoltSensorsCurrentVolt[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Temperature warn (LLD)|<p>-</p>|`SNMP agent`|enclTempSensorsUnderTempWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Temperature fail (LLD)|<p>-</p>|`SNMP agent`|enclTempSensorsUnderTempFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Temperature fail (LLD)|<p>-</p>|`SNMP agent`|enclTempSensorsOverTempFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Electronic (LLD)|<p>-</p>|`SNMP agent`|enclElectronicsPresent[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Current Temperature (LLD)|<p>-</p>|`SNMP agent`|enclTempSensorsCurrentTemp[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Product Model (LLD)|<p>-</p>|`SNMP agent`|enclProductModel[{#SNMPINDEX}]<p>Update: 12h</p>|
|Enclosure[{#ENCLNUM}] Product ID (LLD)|<p>-</p>|`SNMP agent`|enclProductID[{#SNMPINDEX}]<p>Update: 12h</p>|
|Enclosure[{#ENCLNUM}] Failed Power Supplies (LLD)|<p>-</p>|`SNMP agent`|enclPowerSuppliesFailed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Fans Speed (LLD)|<p>-</p>|`SNMP agent`|enclFansSpeed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Failed Fans (LLD)|<p>-</p>|`SNMP agent`|enclFansFailed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Voltage warn (LLD)|<p>-</p>|`SNMP agent`|enclVoltSensorsUnderVoltWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|VIF[{#VIF}] is Home (LLD)|<p>-</p>|`SNMP agent`|logicalInterfaceIsHome[{#SNMPINDEX}]<p>Update: 1m</p>|
|Node[{#NODENAME}] cannot take over cause (LLD)|<p>-</p>|`SNMP agent`|haCannotTakeoverCause[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA Interconnect Status (LLD)|<p>-</p>|`SNMP agent`|haInterconnectStatus[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA Partner Name (LLD)|<p>-</p>|`SNMP agent`|haPartnerName[{#NODENAME}]<p>Update: 12h</p>|
|Node[{#NODENAME}] HA Partner Status (LLD)|<p>-</p>|`SNMP agent`|haPartnerStatus[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA Settings (LLD)|<p>-</p>|`SNMP agent`|haSettings[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA State (LLD)|<p>-</p>|`SNMP agent`|haState[{#NODENAME}]<p>Update: 1m</p>|
|SnapMirror [{#SNAPINDEX}] Destination Path (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelDestPath[{#SNMPINDEX}]<p>Update: 3h</p>|
|SnapMirror [{#SNAPINDEX}] Healthy (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelHealthy[{#SNMPINDEX}]<p>Update: 1m</p>|
|SnapMirror [{#SNAPINDEX}] Lag (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelLag[{#SNMPINDEX}]<p>Update: 300s</p>|
|SnapMirror {#SNAPINDEX} Last Transfer Size (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelLastTransferSize[{#SNMPINDEX}]<p>Update: 300s</p>|
|SnapMirror {#SNAPINDEX} Last Transfer Time (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelLastTransferTime[{#SNMPINDEX}]<p>Update: 300s</p>|
|SnapMirror {#SNAPINDEX}  Source Path (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelSrcPath[{#SNMPINDEX}]<p>Update: 3h</p>|
|SnapMirror {#SNAPINDEX} State (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelState[{#SNMPINDEX}]<p>Update: 1m</p>|
|SnapMirror {#SNAPINDEX} Status (LLD)|<p>-</p>|`SNMP agent`|snapmirrorRelStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Size (LLD)|<p>-</p>|`SNMP agent`|df64TotalKBytesVol[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Used (LLD)|<p>-</p>|`SNMP agent`|df64UsedKBytesVol[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Used (%) (LLD)|<p>-</p>|`SNMP agent`|dfPerCentKBytesCapacityVol[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Used Inode % (LLD)|<p>-</p>|`SNMP agent`|dfVolInodePercent[{#SNMPINDEX}]<p>Update: 10m</p>|
|Volume[{#VOLNAME}] Aggregate (LLD)|<p>-</p>|`SNMP agent`|volAggrName[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] NV Failed State (LLD)|<p>Indicates whether the volume is in nvfailed state. This is only applicable to cluster-mode volumes.</p>|`SNMP agent`|volInNvfailedState[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Language (LLD)|<p>-</p>|`SNMP agent`|volLanguage[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] NV Failed enabled (LLD)|<p>Indicates whether nvfail option is enabled on this volume.</p>|`SNMP agent`|volNvfail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Space Guarantee enabled (LLD)|<p>.</p>|`SNMP agent`|volSpaceGuaranteeEnabled[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] Space Guarantee (LLD)|<p>.</p>|`SNMP agent`|volSpaceGuarantee[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] State (LLD)|<p>-</p>|`SNMP agent`|volState[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Type (LLD)|<p>Type of this volume, older volumes are traditional while newer volumes contained in aggregates are flexible.</p>|`SNMP agent`|volType[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] Vserver (LLD)|<p>-</p>|`SNMP agent`|volVserver[{#SNMPINDEX}]<p>Update: 3h</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Filesystem {#AGGRNAME} not mounted|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfStatus[{#SNMPINDEX}].last()}<>2</p><p>**Recovery expression**: </p>|average|
|Free Size on {#AGGRNAME} less than 10%|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacity[{#SNMPINDEX}].last()}<10</p><p>**Recovery expression**: </p>|high|
|Free Size on {#AGGRNAME} less than 20%|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacity[{#SNMPINDEX}].last()}<20</p><p>**Recovery expression**: </p>|average|
|Failed electric: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}]|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:enclElectronicsFailed[{#SNMPINDEX}].strlen()}>0</p><p>**Recovery expression**: </p>|high|
|Failed fans: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}]|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:enclFansFailed[{#SNMPINDEX}].strlen()}>0</p><p>**Recovery expression**: </p>|high|
|Failed power supply: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}]|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:enclPowerSuppliesFailed[{#SNMPINDEX}].strlen()}>0</p><p>**Recovery expression**: </p>|high|
|LIF[{#VIF}] on {HOST.NAME} not at home port|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:logicalInterfaceIsHome[{#SNMPINDEX}].last()}>1</p><p>**Recovery expression**: </p>|average|
|{HOST.HOST} can not takeover|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haState[{#NODENAME}].last()}<>2</p><p>**Recovery expression**: </p>|high|
|{HOST.HOST} HA disabled|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haSettings[{#NODENAME}].last()}<>2</p><p>**Recovery expression**: </p>|high|
|{HOST.HOST} Interconnect status not up|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haInterconnectStatus[{#NODENAME}].last()}<>4</p><p>**Recovery expression**: </p>|average|
|{HOST.HOST} Partner status not ok|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haPartnerStatus[{#NODENAME}].last()}<>2</p><p>**Recovery expression**: </p>|average|
|SnapMirror [{#SNAPINDEX}] is not Healthy|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelHealthy[{#SNMPINDEX}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 1 day|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelLag[{#SNMPINDEX}].last()}>86400</p><p>**Recovery expression**: </p>|average|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 2 days|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelLag[{#SNMPINDEX}].last()}>172800</p><p>**Recovery expression**: </p>|high|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 5 days|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelLag[{#SNMPINDEX}].last()}>432000</p><p>**Recovery expression**: </p>|disaster|
|SnapMirror {#SNAPINDEX} is having problems|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelStatus[{#SNMPINDEX}].last()}>=11</p><p>**Recovery expression**: </p>|high|
|SnapMirror {#SNAPINDEX} is not idle|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelStatus[{#SNMPINDEX}].last()}<>0</p><p>**Recovery expression**: </p>|information|
|Free Inode on Volume[{#VOLNAME}] less than 10%|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfVolInodePercent[{#SNMPINDEX}].last()}>89</p><p>**Recovery expression**: </p>|disaster|
|Free Inode on Volume[{#VOLNAME}] less than 25%|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfVolInodePercent[{#SNMPINDEX}].last()}>84</p><p>**Recovery expression**: </p>|high|
|Free Size on Volume[{#VOLNAME}] less than 10%|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacityVol[{#SNMPINDEX}].last()}>90</p><p>**Recovery expression**: </p>|high|
|Free Size on Volume[{#VOLNAME}] less than 20%|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacityVol[{#SNMPINDEX}].last()}>80</p><p>**Recovery expression**: </p>|average|
|Filesystem {#AGGRNAME} not mounted (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfStatus[{#SNMPINDEX}].last()}<>2</p><p>**Recovery expression**: </p>|average|
|Free Size on {#AGGRNAME} less than 10% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacity[{#SNMPINDEX}].last()}<10</p><p>**Recovery expression**: </p>|high|
|Free Size on {#AGGRNAME} less than 20% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacity[{#SNMPINDEX}].last()}<20</p><p>**Recovery expression**: </p>|average|
|Failed electric: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}] (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:enclElectronicsFailed[{#SNMPINDEX}].strlen()}>0</p><p>**Recovery expression**: </p>|high|
|Failed fans: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}] (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:enclFansFailed[{#SNMPINDEX}].strlen()}>0</p><p>**Recovery expression**: </p>|high|
|Failed power supply: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}] (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:enclPowerSuppliesFailed[{#SNMPINDEX}].strlen()}>0</p><p>**Recovery expression**: </p>|high|
|LIF[{#VIF}] on {HOST.NAME} not at home port (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:logicalInterfaceIsHome[{#SNMPINDEX}].last()}>1</p><p>**Recovery expression**: </p>|average|
|{HOST.HOST} can not takeover (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haState[{#NODENAME}].last()}<>2</p><p>**Recovery expression**: </p>|high|
|{HOST.HOST} HA disabled (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haSettings[{#NODENAME}].last()}<>2</p><p>**Recovery expression**: </p>|high|
|{HOST.HOST} Interconnect status not up (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haInterconnectStatus[{#NODENAME}].last()}<>4</p><p>**Recovery expression**: </p>|average|
|{HOST.HOST} Partner status not ok (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:haPartnerStatus[{#NODENAME}].last()}<>2</p><p>**Recovery expression**: </p>|average|
|SnapMirror [{#SNAPINDEX}] is not Healthy (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelHealthy[{#SNMPINDEX}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 1 day (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelLag[{#SNMPINDEX}].last()}>86400</p><p>**Recovery expression**: </p>|average|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 2 days (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelLag[{#SNMPINDEX}].last()}>172800</p><p>**Recovery expression**: </p>|high|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 5 days (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelLag[{#SNMPINDEX}].last()}>432000</p><p>**Recovery expression**: </p>|disaster|
|SnapMirror {#SNAPINDEX} is having problems (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelStatus[{#SNMPINDEX}].last()}>=11</p><p>**Recovery expression**: </p>|high|
|SnapMirror {#SNAPINDEX} is not idle (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:snapmirrorRelStatus[{#SNMPINDEX}].last()}<>0</p><p>**Recovery expression**: </p>|information|
|Free Inode on Volume[{#VOLNAME}] less than 10% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfVolInodePercent[{#SNMPINDEX}].last()}>89</p><p>**Recovery expression**: </p>|disaster|
|Free Inode on Volume[{#VOLNAME}] less than 25% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfVolInodePercent[{#SNMPINDEX}].last()}>84</p><p>**Recovery expression**: </p>|high|
|Free Size on Volume[{#VOLNAME}] less than 10% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacityVol[{#SNMPINDEX}].last()}>90</p><p>**Recovery expression**: </p>|high|
|Free Size on Volume[{#VOLNAME}] less than 20% (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP NetApp cDot:dfPerCentKBytesCapacityVol[{#SNMPINDEX}].last()}>80</p><p>**Recovery expression**: </p>|average|
