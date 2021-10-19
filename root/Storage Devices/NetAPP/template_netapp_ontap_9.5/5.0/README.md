# Template SNMP NetApp cDot

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

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
|Aggregate Owners[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|aggrOwners[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate Raidtype[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|aggrRaidType[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate State[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|aggrState[{#SNMPINDEX}]<p>Update: 1m</p>|
|Aggregate Status[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|aggrStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Aggregate Type[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|aggrType[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate Size[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|df64TotalKBytes[{#SNMPINDEX}]<p>Update: 30m</p>|
|Aggregate Used Size[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|df64UsedKBytes[{#SNMPINDEX}]<p>Update: 3m</p>|
|Aggregate Size Free (%)[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|dfPerCentKBytesCapacity[{#SNMPINDEX}]<p>Update: 3m</p>|
|Aggregate Filesystem Status[{#AGGRNAME}]|<p>-</p>|`SNMP agent`|dfStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Failed Electronic|<p>-</p>|`SNMP agent`|enclElectronicsFailed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Temperature warn|<p>-</p>|`SNMP agent`|enclTempSensorsOverTempWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Voltage fail|<p>-</p>|`SNMP agent`|enclVoltSensorsUnderVoltFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Voltage warn|<p>-</p>|`SNMP agent`|enclVoltSensorsOverVoltWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Voltage fail|<p>-</p>|`SNMP agent`|enclVoltSensorsOverVoltFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Current Voltage|<p>-</p>|`SNMP agent`|enclVoltSensorsCurrentVolt[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Temperature warn|<p>-</p>|`SNMP agent`|enclTempSensorsUnderTempWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Temperature fail|<p>-</p>|`SNMP agent`|enclTempSensorsUnderTempFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Over Temperature fail|<p>-</p>|`SNMP agent`|enclTempSensorsOverTempFail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Electronic|<p>-</p>|`SNMP agent`|enclElectronicsPresent[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Current Temperature|<p>-</p>|`SNMP agent`|enclTempSensorsCurrentTemp[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Product Model|<p>-</p>|`SNMP agent`|enclProductModel[{#SNMPINDEX}]<p>Update: 12h</p>|
|Enclosure[{#ENCLNUM}] Product ID|<p>-</p>|`SNMP agent`|enclProductID[{#SNMPINDEX}]<p>Update: 12h</p>|
|Enclosure[{#ENCLNUM}] Failed Power Supplies|<p>-</p>|`SNMP agent`|enclPowerSuppliesFailed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Fans Speed|<p>-</p>|`SNMP agent`|enclFansSpeed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Failed Fans|<p>-</p>|`SNMP agent`|enclFansFailed[{#SNMPINDEX}]<p>Update: 1m</p>|
|Enclosure[{#ENCLNUM}] Under Voltage warn|<p>-</p>|`SNMP agent`|enclVoltSensorsUnderVoltWarn[{#SNMPINDEX}]<p>Update: 1m</p>|
|VIF[{#VIF}] is Home|<p>-</p>|`SNMP agent`|logicalInterfaceIsHome[{#SNMPINDEX}]<p>Update: 1m</p>|
|Node[{#NODENAME}] cannot take over cause|<p>-</p>|`SNMP agent`|haCannotTakeoverCause[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA Interconnect Status|<p>-</p>|`SNMP agent`|haInterconnectStatus[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA Partner Name|<p>-</p>|`SNMP agent`|haPartnerName[{#NODENAME}]<p>Update: 12h</p>|
|Node[{#NODENAME}] HA Partner Status|<p>-</p>|`SNMP agent`|haPartnerStatus[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA Settings|<p>-</p>|`SNMP agent`|haSettings[{#NODENAME}]<p>Update: 1m</p>|
|Node[{#NODENAME}] HA State|<p>-</p>|`SNMP agent`|haState[{#NODENAME}]<p>Update: 1m</p>|
|SnapMirror [{#SNAPINDEX}] Destination Path|<p>-</p>|`SNMP agent`|snapmirrorRelDestPath[{#SNMPINDEX}]<p>Update: 3h</p>|
|SnapMirror [{#SNAPINDEX}] Healthy|<p>-</p>|`SNMP agent`|snapmirrorRelHealthy[{#SNMPINDEX}]<p>Update: 1m</p>|
|SnapMirror [{#SNAPINDEX}] Lag|<p>-</p>|`SNMP agent`|snapmirrorRelLag[{#SNMPINDEX}]<p>Update: 300s</p>|
|SnapMirror {#SNAPINDEX} Last Transfer Size|<p>-</p>|`SNMP agent`|snapmirrorRelLastTransferSize[{#SNMPINDEX}]<p>Update: 300s</p>|
|SnapMirror {#SNAPINDEX} Last Transfer Time|<p>-</p>|`SNMP agent`|snapmirrorRelLastTransferTime[{#SNMPINDEX}]<p>Update: 300s</p>|
|SnapMirror {#SNAPINDEX}  Source Path|<p>-</p>|`SNMP agent`|snapmirrorRelSrcPath[{#SNMPINDEX}]<p>Update: 3h</p>|
|SnapMirror {#SNAPINDEX} State|<p>-</p>|`SNMP agent`|snapmirrorRelState[{#SNMPINDEX}]<p>Update: 1m</p>|
|SnapMirror {#SNAPINDEX} Status|<p>-</p>|`SNMP agent`|snapmirrorRelStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Size|<p>-</p>|`SNMP agent`|df64TotalKBytesVol[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Used|<p>-</p>|`SNMP agent`|df64UsedKBytesVol[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Used (%)|<p>-</p>|`SNMP agent`|dfPerCentKBytesCapacityVol[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Used Inode %|<p>-</p>|`SNMP agent`|dfVolInodePercent[{#SNMPINDEX}]<p>Update: 10m</p>|
|Volume[{#VOLNAME}] Aggregate|<p>-</p>|`SNMP agent`|volAggrName[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] NV Failed State|<p>Indicates whether the volume is in nvfailed state. This is only applicable to cluster-mode volumes.</p>|`SNMP agent`|volInNvfailedState[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Language|<p>-</p>|`SNMP agent`|volLanguage[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] NV Failed enabled|<p>Indicates whether nvfail option is enabled on this volume.</p>|`SNMP agent`|volNvfail[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Space Guarantee enabled|<p>.</p>|`SNMP agent`|volSpaceGuaranteeEnabled[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] Space Guarantee|<p>.</p>|`SNMP agent`|volSpaceGuarantee[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] State|<p>-</p>|`SNMP agent`|volState[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] Type|<p>Type of this volume, older volumes are traditional while newer volumes contained in aggregates are flexible.</p>|`SNMP agent`|volType[{#SNMPINDEX}]<p>Update: 3h</p>|
|Volume[{#VOLNAME}] Vserver|<p>-</p>|`SNMP agent`|volVserver[{#SNMPINDEX}]<p>Update: 3h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} failed to send autosupport|<p>{ITEM.LASTVALUE}</p>|warning|
|{HOST.NAME} got Failed Disks|<p>-</p>|high|
|{HOST.NAME} got Prefailed Disks|<p>-</p>|average|
|{HOST.NAME} issue during Autosupport message|<p>{ITEM.LASTVALUE}</p>|warning|
|Filesystem {#AGGRNAME} not mounted|<p>-</p>|average|
|Free Size on {#AGGRNAME} less than 10%|<p>-</p>|high|
|Free Size on {#AGGRNAME} less than 20%|<p>-</p>|average|
|Failed electric: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}]|<p>-</p>|high|
|Failed fans: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}]|<p>-</p>|high|
|Failed power supply: {ITEM.LASTVALUE} on Enclosure[{#ENCLNUM}]|<p>-</p>|high|
|LIF[{#VIF}] on {HOST.NAME} not at home port|<p>-</p>|average|
|{HOST.HOST} can not takeover|<p>-</p>|high|
|{HOST.HOST} HA disabled|<p>-</p>|high|
|{HOST.HOST} Interconnect status not up|<p>-</p>|average|
|{HOST.HOST} Partner status not ok|<p>-</p>|average|
|SnapMirror [{#SNAPINDEX}] is not Healthy|<p>-</p>|high|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 1 day|<p>-</p>|average|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 2 days|<p>-</p>|high|
|SnapMirror [{#SNAPINDEX}] Lag is greater than 5 days|<p>-</p>|disaster|
|SnapMirror {#SNAPINDEX} is having problems|<p>-</p>|high|
|SnapMirror {#SNAPINDEX} is not idle|<p>-</p>|information|
|Free Inode on Volume[{#VOLNAME}] less than 10%|<p>-</p>|disaster|
|Free Inode on Volume[{#VOLNAME}] less than 25%|<p>-</p>|high|
|Free Size on Volume[{#VOLNAME}] less than 10%|<p>-</p>|high|
|Free Size on Volume[{#VOLNAME}] less than 20%|<p>-</p>|average|
