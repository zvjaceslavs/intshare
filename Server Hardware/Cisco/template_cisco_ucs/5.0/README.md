# Cisco-UCS

## Overview

**Monitoring Cisco UCS Server for snmp v2 Working with B and C Blade server**


**tested on Cisco chassis 5018 and B200M4 .**


**it give you this info :**


* **Servers Hardware component info.**
* **Temperature monitoring .**
* **FAN** ****monitoring .****
* ****PSU**** ******monitoring .******
* ******Memory****** ************monitoring .************
* ************CPU************ ******************monitoring .******************
* ******************Network******************


******************you only need to add {$SNMP\_COMMUNITY} in macros******************

## Author

Bassam Darawshi

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU|<p>-</p>|`SNMP agent`|cucsComputeBladeDn<p>Update: 10s</p>|
|Compute Board Entry|<p>-</p>|`SNMP agent`|cucsComputeBoardDn<p>Update: 10s</p>|
|NetworkRx|<p>-</p>|`SNMP agent`|cucsEtherRxStatsRn<p>Update: 30s</p>|
|PSU|<p>-</p>|`SNMP agent`|cucsEquipmentPsuDn<p>Update: 30s</p>|
|NetworkTx|<p>-</p>|`SNMP agent`|cucsEtherTxStatsRn<p>Update: 30s</p>|
|Power|<p>-</p>|`SNMP agent`|cucsComputeMbPowerStatsRn<p>Update: 30s</p>|
|Temp|<p>-</p>|`SNMP agent`|cucsComputeMbTempStatsRn<p>Update: 30s</p>|
|FAN|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleDn<p>Update: 10s</p>|
|Blade|<p>-</p>|`SNMP agent`|cucsComputeBladeAssignedToDn<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU utilization|<p>-</p>|`SNMP agent`|cpmCPUTotal5minRev<p>Update: 10s</p>|
|Memory utilization|<p>-</p>|`SNMP agent`|cseSysMemoryUtilization<p>Update: 10s</p>|
|System Description|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 3600s</p>|
|System UpTime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 3600s</p>|
|{#SNMPINDEX}:Blade Num Of Cores (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeNumOfCores[{#SNMPINDEX}]<p>Update: 3600s</p>|
|{#SNMPINDEX}:Blade Num Of CPUS (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeNumOfCpus[{#SNMPINDEX}]<p>Update: 3600s</p>|
|{#SNMPINDEX}:Blade Num Of Threads (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeNumOfThreads[{#SNMPINDEX}]<p>Update: 3600s</p>|
|{#SNMPINDEX}: Board Oper Power (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBoardOperPower[{#SNMPINDEX}]<p>Update: 3600s</p>|
|{#SNMPINDEX}: Compute Board Power Usage (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBoardPowerUsage[{#SNMPINDEX}]<p>Update: 3600s</p>|
|{#SNMPINDEX}: Board Compute Voltage (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBoardVoltage[{#SNMPINDEX}]<p>Update: 3600s</p>|
|{#SNMPINDEX}:Rx Broadcast Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherRxStatsBroadcastPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Rx Interface Name (LLD)|<p>-</p>|`SNMP agent`|cucsEtherRxStatsDn[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}:Rx Jumbo Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherRxStatsJumboPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Rx Multicast Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherRxStatsMulticastPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Rx Total Bytes (LLD)|<p>-</p>|`SNMP agent`|cucsEtherRxStatsTotalBytes[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Rx Unicast Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherRxStatsUnicastPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}: PSU Modle (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuModel[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: PSU Operability (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuOperability[{#SNMPINDEX}]<p>Update: 30s</p>|
|{#SNMPINDEX}: PSU Operation state (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuOperState[{#SNMPINDEX}]<p>Update: 60s</p>|
|{#SNMPINDEX}: PSU PartNumber (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuPartNumber[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: PSU Name (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuRn[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: PSU Serial (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuSerial[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: PSU Thermal (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentPsuThermal[{#SNMPINDEX}]<p>Update: 60s</p>|
|{#SNMPINDEX}:Rx Broadcast Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherTxStatsBroadcastPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Tx Interface Name (LLD)|<p>-</p>|`SNMP agent`|cucsEtherTxStatsDn[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Tx Jumbo Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherTxStatsJumboPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Tx Multicast Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherTxStatsMulticastPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Tx Total Bytes (LLD)|<p>-</p>|`SNMP agent`|cucsEtherTxStatsTotalBytes[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}:Tx Unicast Packets (LLD)|<p>-</p>|`SNMP agent`|cucsEtherTxStatsUnicastPackets[{#SNMPINDEX}]<p>Update: 5s</p>|
|{#SNMPINDEX}: Blade Consumed Power Avg (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbPowerStatsConsumedPowerAvg[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}:  Blade Consumed Power MAX (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbPowerStatsConsumedPowerMax[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}:  Blade Consumed Power MIN (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbPowerStatsConsumedPowerMin[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Blade Consumed Power (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbPowerStatsConsumedPower[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Temp Stats Avg (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbTempStatsFmTempSenIoAvg[{#SNMPINDEX}]<p>Update: 120s</p>|
|{#SNMPINDEX}:Blade Temp Stats (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}]<p>Update: 10s</p>|
|{#SNMPINDEX}: Temp Stats Rare Avg (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbTempStatsFmTempSenRearAvg[{#SNMPINDEX}]<p>Update: 120s</p>|
|{#SNMPINDEX}: Temp Stats Rare (LLD)|<p>-</p>|`SNMP agent`|cucsComputeMbTempStatsFmTempSenRear[{#SNMPINDEX}]<p>Update: 120s</p>|
|{#SNMPINDEX}: FAN Modle (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleModel[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Operability (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleOperability[{#SNMPINDEX}]<p>Update: 60s</p>|
|{#SNMPINDEX}: Operation State (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleOperState[{#SNMPINDEX}]<p>Update: 60s</p>|
|{#SNMPINDEX}: Part Number (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModulePartNumber[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Operation Power (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModulePower[{#SNMPINDEX}]<p>Update: 60s</p>|
|{#SNMPINDEX}: FAN Name (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleRn[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: FAN Serial (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleSerial[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Operation PowerThermal (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleThermal[{#SNMPINDEX}]<p>Update: 60s</p>|
|{#SNMPINDEX}: FAN Vendor (LLD)|<p>-</p>|`SNMP agent`|cucsEquipmentFanModuleVendor[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Admin State (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeAdminState[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Available Memory (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeAvailableMemory[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Last Power Cycle (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeFsmPrev[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Memory Speed (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeMemorySpeed[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Blade Modle (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeModel[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}:  Oper Power (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeOperPower[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Blade Name (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeRn[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Blade Serial (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeSerial[{#SNMPINDEX}]<p>Update: 300s</p>|
|{#SNMPINDEX}: Slot ID (LLD)|<p>-</p>|`SNMP agent`|cucsComputeBladeSlotId[{#SNMPINDEX}]<p>Update: 10s</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Blade Temperature on host {HOST.NAME} is to high|<p>Blade Temperature more than 30C</p>|<p>**Expression**: {Cisco-UCS:cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}].last()}>30</p><p>**Recovery expression**: </p>|high|
|Blade Temperature on host {HOST.NAME} is to high|<p>Blade Temperature more than 40C</p>|<p>**Expression**: {Cisco-UCS:cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}].last()}>40</p><p>**Recovery expression**: </p>|high|
|Blade Temperature on host {HOST.NAME} is to high|<p>Blade Temperature more than 50C</p>|<p>**Expression**: {Cisco-UCS:cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}].last()}>50</p><p>**Recovery expression**: </p>|high|
|Blade Temperature on host {HOST.NAME} is to high (LLD)|<p>Blade Temperature more than 30C</p>|<p>**Expression**: {Cisco-UCS:cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}].last()}>30</p><p>**Recovery expression**: </p>|high|
|Blade Temperature on host {HOST.NAME} is to high (LLD)|<p>Blade Temperature more than 40C</p>|<p>**Expression**: {Cisco-UCS:cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}].last()}>40</p><p>**Recovery expression**: </p>|high|
|Blade Temperature on host {HOST.NAME} is to high (LLD)|<p>Blade Temperature more than 50C</p>|<p>**Expression**: {Cisco-UCS:cucsComputeMbTempStatsFmTempSenIo[{#SNMPINDEX}].last()}>50</p><p>**Recovery expression**: </p>|high|
