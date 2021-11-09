# HP_SNMP_Autodiscovery

## Description

## Overview For all HP servers with HP SNMP agents. Uses Zabbix Low-Level Discovery to spin up monitoring for serviceable items such as physical and logical drives, Drive Array Controllers, Drive Array Accelerators, Power Supplies, and firmware. Can also monitor individual memory modules but this is disabled by default because it is usually sufficient to monitor just the "Resilient Memory Condition" item. Similarly, things such as thermal problems are monitored using the top-level cpqHeThermalCondition item instead of monitoring individual temperature sensors. Newer HP servers (G8 and up) include HP SNMP Agents embedded in hardware at the iLO address; these can be monitored (with some reduced functionality) where the OS does not support HP SNMP agent installation (i.e. VMware). Tested with HP BL and DL series G7, G8, and G9 servers, using Zabbix 2.4.x No MIB files are required (only numeric OIDs are used). Update 2016-05-24: Added Zabbix Version 3.0 template (includes Zabbix value maps), thanks to "mrbbs" for converting. Also added Zabbix 2.0 version. Update 2017-02-27: Added Zabbix Version 3.2 template (Includes Zabbix value maps). Added value map item 4 (Flash-Backed Write Cache) under cpqDaAccelBackupPowerSource (used by G9 servers). This template uses Zabbix value mapping to provide meaningful data from SNMP queries. This means that the value maps must be entered before importing the template if you are using Zabbix 2.x. Although this is a bit tedious, it's worth the effort. Copy the value maps below and paste them into Zabbix: Zabbix Value Mapping for Template _HP _SNMP _Autodiscovery cpqCondition 1 other 2 OK 3 degraded 4 failed cpqDaAccelBackupPowerSource 1 other 2 battery 3 capacitor 4 Flash-Backed Write Cache cpqDaAccelBatteryStatus 1 other 2 ok 3 recharging 4 failed 5 degraded 6 notPresent 7 capacitorFailed cpqDaAccelStatus 1 other 2 invalid 3 enabled 4 tmpDisabled 5 permDisabled 6 cacheModFlashMemNotAttached 7 cacheModDegradedFailsafeSpeed 8 cacheModCriticalFailure 9 cacheReadCacheNotMapped cpqDaCntlrDriveWriteCacheState 1 other 2 disabled 3 enabled cpqDaLogDrvFaultTol 1 other 2 none 3 mirroring 4 dataGuard 5 distribDataGuard 7 advancedDataGuard 8 raid50 9 raid60 cpqRedundant 1 other 2 notRedundant 3 redundant 

## Overview

For all HP servers with HP SNMP agents. Uses Zabbix Low-Level Discovery to spin up monitoring for serviceable items such as physical and logical drives, Drive Array Controllers, Drive Array Accelerators, Power Supplies, and firmware. Can also monitor individual memory modules but this is disabled by default because it is usually sufficient to monitor just the "Resilient Memory Condition" item. Similarly, things such as thermal problems are monitored using the top-level cpqHeThermalCondition item instead of monitoring individual temperature sensors.


Newer HP servers (G8 and up) include HP SNMP Agents embedded in hardware at the iLO address; these can be monitored (with some reduced functionality) where the OS does not support HP SNMP agent installation (i.e. VMware).


Tested with HP BL and DL series G7, G8, and G9 servers, using Zabbix 2.4.x


No MIB files are required (only numeric OIDs are used).


Update 2016-05-24: Added Zabbix Version 3.0 template (includes Zabbix value maps), thanks to "mrbbs" for converting. Also added Zabbix 2.0 version.


Update 2017-02-27: Added Zabbix Version 3.2 template (Includes Zabbix value maps). Added value map item 4 (Flash-Backed Write Cache) under cpqDaAccelBackupPowerSource (used by G9 servers).


This template uses Zabbix value mapping to provide meaningful data from SNMP queries. This means that the value maps must be entered before importing the template if you are using Zabbix 2.x. Although this is a bit tedious, it's worth the effort. Copy the value maps below and paste them into Zabbix:


Zabbix Value Mapping for Template\_HP\_SNMP\_Autodiscovery


cpqCondition


1 other


2 OK


3 degraded


4 failed


 


cpqDaAccelBackupPowerSource


1 other


2 battery


3 capacitor


4 Flash-Backed Write Cache


 


cpqDaAccelBatteryStatus


1 other


2 ok


3 recharging


4 failed


5 degraded


6 notPresent


7 capacitorFailed


 


cpqDaAccelStatus


1 other


2 invalid


3 enabled


4 tmpDisabled


5 permDisabled


6 cacheModFlashMemNotAttached


7 cacheModDegradedFailsafeSpeed


8 cacheModCriticalFailure


9 cacheReadCacheNotMapped


 


cpqDaCntlrDriveWriteCacheState


1 other


2 disabled


3 enabled


 


cpqDaLogDrvFaultTol


1 other


2 none


3 mirroring


4 dataGuard


5 distribDataGuard


7 advancedDataGuard


8 raid50


9 raid60


 


cpqRedundant


1 other


2 notRedundant


3 redundant


 



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Physical Drives|<p>Walk the cpqDaPhyDrvLocationString table to get drive locations: CPQIDA-MIB:: cpqDaPhyDrvLocationString OBJECT-TYPE SYNTAX DisplayString (SIZE (0..255)) ACCESS read-only STATUS mandatory DESCRIPTION "Physical Drive Location String. This string describes the location of the drive in relation to the controller. If the location string cannot be determined, the agent will return a NULL string." ::= { cpqDaPhyDrvEntry 64 }</p>|`SNMP agent`|snmp.discovery[physicalDrives]<p>Update: 3600</p>|
|Firmware|<p>Walk the cpqHoFwVerDisplayName table, filter for "Lights Out", "iLO" and "System ROM" CPQHLTH-MIB:: cpqHoFwVerDisplayName OBJECT-TYPE SYNTAX DisplayString (SIZE (0..127)) ACCESS read-only STATUS mandatory DESCRIPTION "Firmware Version Device Display Name. This is the display name of the device containing the firmware." ::= { cpqHoFwVerEntry 4 }</p>|`SNMP agent`|snmp.discovery[firmware]<p>Update: 28800</p>|
|Power Supplies|<p>Walk the cpqHeFltTolPowerSupplyPresent table, filter out any modules which are "absent(2)" CPQHLTH-MIB:: cpqHeFltTolPowerSupplyPresent OBJECT-TYPE SYNTAX INTEGER { other(1), absent(2), present(3) } ACCESS read-only STATUS mandatory DESCRIPTION "Indicates whether the power supply is present in the chassis." ::= { cpqHeFltTolPowerSupplyEntry 3 }</p>|`SNMP agent`|snmp.discovery[powerSupplies]<p>Update: 3600</p>|
|Drive Array Controllers|<p>Walk the cpqDaCntlrHwLocation table to get contoller locations: CPQIDA-MIB:: cpqDaCntlrHwLocation OBJECT-TYPE SYNTAX DisplayString (SIZE (0..255)) ACCESS read-only STATUS mandatory DESCRIPTION "A text description of the hardware location of the controller. A NULL string indicates that the hardware location could not be determined or is irrelevant." ::= { cpqDaCntlrEntry 20 }</p>|`SNMP agent`|snmp.discovery[DaControllers]<p>Update: 3600</p>|
|Drive Array Controller Performance Monitors|<p>Walk the cpqDaCntlrPerfCntlrIndex table to find contoller performance monitor instances: CPQIDA-MIB:: cpqDaCntlrPerfCntlrIndex OBJECT-TYPE SYNTAX INTEGER ACCESS read-only STATUS mandatory DESCRIPTION "Drive Array Controller Performance Monitor Controller Index. This maps the performance monitor information into their respective controllers which support performance data." ::= { cpqDaCntlrPerfEntry 1 }</p>|`SNMP agent`|snmp.discovery[DaControllerPerf]<p>Update: 28800</p>|
|Memory Modules|<p>Enable this discovery rule to monitor each memory module (i.e. to show which modules are installed in which sockets). If this rule is enabled, disable the top-level item "HP Resilient Memory Condition" so you don''t get 2 alerts in the event of a memory failure. If you don't need monitoring of individual memory modules, leave this disabled, and leave the top-level item "HP Resilient Memory Condition" enabled. Walk the cpqHeResMem2ModuleStatus, filter out any modules which are "notPresent(2)" CPQHLTH-MIB:: cpqHeResMem2ModuleStatus OBJECT-TYPE SYNTAX INTEGER { other(1), notPresent(2), present(3), good(4), add(5), upgrade(6), missing(7), doesNotMatch(8), notSupported(9), badConfig(10), degraded(11)</p>|`SNMP agent`|snmp.discovery[memoryModules]<p>Update: 3600</p>|
|Drive Array Accelerators|<p>Walk the cpqDaCntlrHwLocation table to get contoller locations: CPQIDA-MIB:: cpqDaAccelCntlrIndex OBJECT-TYPE SYNTAX INTEGER ACCESS read-only STATUS mandatory DESCRIPTION "Array Accelerator Board Controller Index. This value is a logical number whose meaning is OS dependent. The value has a direct mapping to the controller table index such that controller 'i' has accelerator table entry 'i'." ::= { cpqDaAccelEntry 1 }</p>|`SNMP agent`|snmp.discovery[DaAccelerators]<p>Update: 3600</p>|
|Logical Drives|<p>Walk the cpqDaLogDrvOsName table to get logical drive OS names: CPQIDA-MIB:: cpqDaLogDrvOsName OBJECT-TYPE SYNTAX DisplayString (SIZE (0..255)) ACCESS read-only STATUS mandatory DESCRIPTION "Logical Drive OS Name. The OS name for this array logical drive. This field will be a null (size 0) string if the agent does not support OS name." ::= { cpqDaLogDrvEntry 14 }</p>|`SNMP agent`|snmp.discovery[logicalDrives]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|HP Thermal Condition|<p>This item is a combined status of all temperature and fan items present. By monitoring this item, it's not necessary to monitor each individual fan and temperature item. CPQHLTH-MIB:: cpqHeThermalCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "This value specifies the overall condition of the system's thermal environment." ::= { cpqHeThermal 1 }</p>|`SNMP agent`|cpqHeThermalCondition<p>Update: 300</p>|
|HP Event Log Condition|<p>This event log item shows an error when there are IML log items which have not been marked as "repaired" in the System Management Homepage. Because we monitor the individual subsystems, this item is redundant and we don't need to alert on it. CPQHLTH-MIB:: cpqHeEventLogCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "This value specifies the overall condition of the Integrated Management Log feature." ::= { cpqHeEventLog 2 }</p>|`SNMP agent`|cpqHeEventLogCondition<p>Update: 600</p>|
|HP ASR Condition|<p>CPQHLTH-MIB:: cpqHeAsrCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "This value specifies the overall condition of the ASR feature." ::= { cpqHeAsr 17 }</p>|`SNMP agent`|cpqHeAsrCondition<p>Update: 300</p>|
|HP System Serial Number|<p>CPQSINFO-MIB:: cpqSiSysSerialNum OBJECT-TYPE SYNTAX DisplayString (SIZE (0..255)) DESCRIPTION "The serial number of the physical system unit. The string will be empty if the system does not report the serial number function." ::= { cpqSiAsset 1 }</p>|`SNMP agent`|cpqSiSysSerialNum<p>Update: 28800</p>|
|HP Resilient Memory Condition|<p>Overall status of memory system. If we monitor the individual modules via discovery rule "Memory Modules", then this item is redundant and we don't need to alert on it. CPQHLTH-MIB:: cpqHeResilientMemCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3) } ACCESS read-only STATUS mandatory DESCRIPTION "This value specifies the current condition of the Advanced Memory Protection subsystem. The following states are supported: other(1) The system does not support fault tolerant memory or the state cannot be determined by the Management Agent. ok(2) This system is operating normally. degraded(3) The system is running in a degraded state because the Advanced Memory Protection subsystem has been engaged." ::= { cpqHeResilientMemory 4 }</p>|`SNMP agent`|cpqHeResilientMemCondition<p>Update: 300</p>|
|HP Product Name|<p>CPQSINFO-MIB:: cpqSiProductName OBJECT-TYPE SYNTAX DisplayString (SIZE (0..255)) ACCESS read-only STATUS mandatory DESCRIPTION "The machine product name. The name of the machine used in this system." ::= { cpqSiSystemBoard 2 }</p>|`SNMP agent`|cpqSiProductName<p>Update: 28800</p>|
|HP System Product ID|<p>CPQSINFO-MIB:: cpqSiSysProductId OBJECT-TYPE SYNTAX DisplayString (SIZE (0..255)) DESCRIPTION "The product id string of the system unit. The string will be empty if the system does not report the product id." ::= { cpqSiAsset 6 }</p>|`SNMP agent`|cpqSiSysProductId<p>Update: 28800</p>|
|HP Health MIB Condition|<p>This item shows an error when any underlying subsystem is not OK. Because we monitor the individual subsystems, this item is redundant and we don't need to alert on it. CPQHLTH-MIB:: cpqHeEventLogCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "This value specifies the overall condition of the Integrated Management Log feature." ::= { cpqHeEventLog 2 }</p>|`SNMP agent`|cpqHeMibCondition<p>Update: 600</p>|
|HP Fault Tolerant Power Supply Condition|<p>Overall condition of power supplies. Because we monitor the individual subsystems, this item is redundant and we don't need to alert on it. CPQHLTH-MIB:: cpqHeFltTolPwrSupplyCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "This value specifies the overall condition of the fault tolerant power supply sub-system." ::= { cpqHeFltTolPwrSupply 1 }</p>|`SNMP agent`|cpqHeFltTolPwrSupplyCondition<p>Update: 300</p>|
|HP Physical Drive Condition {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaPhyDrvCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "The condition of the device. This value represents the overall condition of this physical drive." ::= { cpqDaPhyDrvEntry 37 }</p>|`SNMP agent`|cpqDaPhyDrvCondition[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|HP Physical Drive Reads/Sec {#SNMPINDEX}|<p>Number of sector reads/sec CPQIDA-MIB:: cpqDaPhyDrvReads OBJECT-TYPE SYNTAX Counter ACCESS read-only STATUS mandatory DESCRIPTION "Sectors Read (low). The phyDrvHReads and the phyDrvReads together shows the total number of sectors read from the physical disk drive during the reference time (phyDrvRefHours). The actual number of sectors read equals the phyDrvHReads times 2^32 plus the phyDrvReads. This information may be useful for determining rates. For instance, if you wanted to calculate the average number of reads per hour of operation, divide this number by the reference hours." ::= { cpqDaPhyDrvEntry 11 }</p>|`SNMP agent`|cpqDaPhyDrvReadsSec[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|HP Physical Drive Total Bytes Read {#SNMPINDEX}|<p>Running total of number of bytes read from this drive. Wraps every 2TB. CPQIDA-MIB:: cpqDaPhyDrvReads OBJECT-TYPE SYNTAX Counter ACCESS read-only STATUS mandatory DESCRIPTION "Sectors Read (low). The phyDrvHReads and the phyDrvReads together shows the total number of sectors read from the physical disk drive during the reference time (phyDrvRefHours). The actual number of sectors read equals the phyDrvHReads times 2^32 plus the phyDrvReads. This information may be useful for determining rates. For instance, if you wanted to calculate the average number of reads per hour of operation, divide this number by the reference hours." ::= { cpqDaPhyDrvEntry 11 }</p>|`SNMP agent`|cpqDaPhyDrvReads[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Physical Drive Serial Number {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaPhyDrvSerialNum OBJECT-TYPE SYNTAX DisplayString (SIZE (0..40)) ACCESS read-only STATUS mandatory DESCRIPTION "Physical Drive Serial Number. This is the serial number assigned to the physical drive. This value is based upon the serial number as returned by the SCSI inquiry command but may have been modified due to space limitations. This can be used for identification purposes." ::= { cpqDaPhyDrvEntry 51 }</p>|`SNMP agent`|cpqDaPhyDrvSerialNum[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Physical Drive Size {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaPhyDrvSize OBJECT-TYPE SYNTAX INTEGER ACCESS read-only STATUS mandatory DESCRIPTION "Physical Drive Size in MB. This is the size of the physical drive in megabytes. This value is calculated using the value 1,048,576 (2^20) as a megabyte. Drive manufacturers sometimes use the number 1,000,000 as a megabyte when giving drive capacities so this value may differ from the advertised size of a drive. This field is only applicable for controllers which support SCSI drives, and therefore is not supported by the IDA or IDA-2 controllers. The field will contain 0xFFFFFFFF if the drive capacity cannot be calculated or if the controller does not support SCSI drives." ::= { cpqDaPhyDrvEntry 45 }</p>|`SNMP agent`|cpqDaPhyDrvSize[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Physical Drive Writes/Sec {#SNMPINDEX}|<p>Number of sector writes/sec CPQIDA-MIB:: cpqDaPhyDrvWrites OBJECT-TYPE SYNTAX Counter ACCESS read-only STATUS mandatory DESCRIPTION "Sectors Written (low). The phyDrvHWrites and the phyDrvWrites together shows the total number of sectors written to the physical disk drive during the reference hours (phyDrvRefHours). The actual number of sectors written equals the phyDrvHWrites times 2^32 plus the phyDrvWrites. This information may be useful for determining rates. For instance, if you wanted to calculate the average number of writes per hour of operation, divide this number by the reference hours. " ::= { cpqDaPhyDrvEntry 13 }</p>|`SNMP agent`|cpqDaPhyDrvWritesSec[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
|HP Physical Drive Total Bytes Written {#SNMPINDEX}|<p>Running total of number of bytes written to this drive. Wraps every 2TB. CPQIDA-MIB:: cpqDaPhyDrvWrites OBJECT-TYPE SYNTAX Counter ACCESS read-only STATUS mandatory DESCRIPTION "Sectors Written (low). The phyDrvHWrites and the phyDrvWrites together shows the total number of sectors written to the physical disk drive during the reference hours (phyDrvRefHours). The actual number of sectors written equals the phyDrvHWrites times 2^32 plus the phyDrvWrites. This information may be useful for determining rates. For instance, if you wanted to calculate the average number of writes per hour of operation, divide this number by the reference hours. " ::= { cpqDaPhyDrvEntry 13 }</p>|`SNMP agent`|cpqDaPhyDrvWrites[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Firmware Version {#SNMPINDEX} - {#SNMPVALUE}|<p>CPQHOST-MIB:: cpqHoFwVerVersion OBJECT-TYPE SYNTAX DisplayString (SIZE (0..31)) ACCESS read-only STATUS mandatory DESCRIPTION "Firmware Version. This is the version of the device firmware." ::= { cpqHoFwVerEntry 5 }</p>|`SNMP agent`|cpqHoFwVerVersion[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Power Supply Condition {#SNMPINDEX}|<p>CPQHLTH-MIB:: cpqHeFltTolPowerSupplyCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "The condition of the power supply. This value will be one of the following: other(1) The status could not be determined or not present. ok(2) The power supply is operating normally. degraded(3) A temperature sensor, fan or other power supply component is outside of normal operating range. failed(4) A power supply component detects a condition that could permanently damage the system." ::= { cpqHeFltTolPowerSupplyEntry 4 }</p>|`SNMP agent`|cpqHeFltTolPowerSupplyCondition[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|HP Power Supply Redundant {#SNMPINDEX}|<p>CPQHLTH-MIB:: cpqHeFltTolPowerSupplyRedundant OBJECT-TYPE SYNTAX INTEGER { other(1), notRedundant(2), redundant(3) } ACCESS read-only STATUS mandatory DESCRIPTION "The redundancy state of the power supply. This value will be one of the following: other(1) The redundancy state could not be determined. notRedundant(2) The power supply is not operating in a redundant state. redundant(3) The power supply is operating in a redundant state." ::= { cpqHeFltTolPowerSupplyEntry 9 }</p>|`SNMP agent`|cpqHeFltTolPowerSupplyRedundant[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|HP Drive Array Controller Board Condition {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaCntlrBoardCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "The condition of the device. This value represents the condition of the controller and any associated array accelerators." ::= { cpqDaCntlrEntry 12 }</p>|`SNMP agent`|cpqDaCntlrBoardCondition[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Drive Array Controller Condition {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaCntlrCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "The condition of the device. This value represents the overall condition of this controller, and any associated logical drives, physical drives, and array accelerators." ::= { cpqDaCntlrEntry 6 }</p>|`SNMP agent`|cpqDaCntlrCondition[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Drive Array Controller Drive Write Cache State {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaCntlrDriveWriteCacheState OBJECT-TYPE SYNTAX INTEGER { other(1), disabled(2), enabled(3) } ACCESS read-only STATUS mandatory DESCRIPTION "Array Controller Drive Write Cache State. This is the controller's drive write cache setting. The following values are valid: other (1) Indicates that the instrument agent does not recognize the value. You may need to upgrade the instrument agent. disabled (2) The controller will disable drive write cache for all drives. enabled (3) The controller will enable drive write cache for all drives." ::= { cpqDaCntlrEntry 27 }</p>|`SNMP agent`|cpqDaCntlrDriveWriteCacheState[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Drive Array Controller Firmware Revision {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaCntlrFWRev OBJECT-TYPE SYNTAX DisplayString (SIZE (0..5)) ACCESS read-only STATUS mandatory DESCRIPTION "Array Controller Firmware Revision. The firmware revision of the drive array controller. This value can be used to help identify a particular revision of the controller." ::= { cpqDaCntlrEntry 3 }</p>|`SNMP agent`|cpqDaCntlrFWRev[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Drive Array Controller Latency {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaCntlrPerfAvgLatency OBJECT-TYPE SYNTAX INTEGER ACCESS read-only STATUS mandatory DESCRIPTION "Array Controller Performance Monitor Average Command Latency. This value shows the average command latency for this sample in 1/100,000 second units." ::= { cpqDaCntlrPerfEntry 7 }</p>|`SNMP agent`|cpqDaCntlrPerfAvgLatency[{#SNMPINDEX}]<p>Update: 3600</p><p>LLD</p>|
|HP Memory Module CPU Number [{#SNMPINDEX}]|<p>CPQHLTH-MIB:: cpqHeResMem2CpuNum OBJECT-TYPE SYNTAX INTEGER ACCESS read-only STATUS mandatory DESCRIPTION "The memory module CPU number. Value 0 means memory is not Processor based." ::= { cpqHeResMem2ModuleEntry 3 }</p>|`SNMP agent`|cpqHeResMem2CpuNum[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Memory Module Condition [{#SNMPINDEX}]|<p>CPQHLTH-MIB:: cpqHeResMem2ModuleCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), degradedModuleIndexUnknown(4) } ACCESS read-only STATUS mandatory DESCRIPTION "This provides the current status of the correctable memory errors for this memory module. The following status values are supported: other(1): ECC is not supported on this memory module or the condition could not be determined. ok(2): The memory module is operating normally. degraded(3): The memory module is correctable error count has exceeded threshold or a configuration error has been detected. degradedModuleIndexUnknown(4): The correctable error count has exceeded threshold. The module number not available." ::= { cpqHeResMem2ModuleEntry 20 }</p>|`SNMP agent`|cpqHeResMem2ModuleCondition[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|HP Memory Module Number [{#SNMPINDEX}]|<p>CPQHLTH-MIB:: cpqHeResMem2ModuleNum OBJECT-TYPE SYNTAX INTEGER ACCESS read-only STATUS mandatory DESCRIPTION "The memory module number." ::= { cpqHeResMem2ModuleEntry 5 }</p>|`SNMP agent`|cpqHeResMem2ModuleNum[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Memory Module Size [{#SNMPINDEX}]|<p>CPQHLTH-MIB:: cpqHeResMem2ModuleSize OBJECT-TYPE SYNTAX INTEGER (0..2147483647) ACCESS read-only STATUS mandatory DESCRIPTION "Module memory size in kilobytes. A kilobyte of memory is defined as 1024 bytes. A size of 0 indicates the module is not present." ::= { cpqHeResMem2ModuleEntry 6 }</p>|`SNMP agent`|cpqHeResMem2ModuleSize[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Drive Array Accelerator Backup Power Source {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaAccelBackupPowerSource OBJECT-TYPE SYNTAX INTEGER { other(1), battery(2), capacitor(3) } ACCESS read-only STATUS mandatory DESCRIPTION "Array Accelerator Board Backup Power Source. This describes the backup power source being used by the Array Accelerator board. The status can be: Other (1) Indicates that the instrument agent does not recognize the backup power source used by the Array Accelerator board. You may need to upgrade the instrument agent. Battery (2) Indicates that a battery is the backup power source for the Array Accelerator board. Capacitor (3) Indicates that a capacitor is the backup power source for the Array Accelerator board." ::= { cpqDaAccelEntry 16 }</p>|`SNMP agent`|cpqDaAccelBackupPowerSource[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Drive Array Accelerator Battery Status {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaAccelBattery OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), recharging(3), failed(4), degraded(5), notPresent(6), capacitorFailed(7) } ACCESS read-only STATUS mandatory DESCRIPTION "Array Accelerator Board Backup Power Status. This monitors the status of each backup power source on the board. The backup power source can only recharge when the system has power applied. The type of backup power source used is indicated by cpqDaAccelBackupPowerSource. The following values are valid: Other (1) Indicates that the instrument agent does not recognize battery status. You may need to update your software. Ok (2) Indicates that a particular battery pack is fully charged. Charging (3) The battery power is less than 75%. The Drive Array Controller is attempting to recharge the battery. A battery can take as long as 36 hours to fully recharge. After 36 hours, if the battery has not recharged, it is considered failed. Failed (4) The battery pack is below the sufficient voltage level and has not recharged in 36 hours. Your Array Accelerator board needs to be serviced. Degraded (5) The battery is still operating, however, one of the batteries in the pack has failed to recharge properly. Your Array Accelerator board should be serviced as soon as possible. NotPresent (6) There are no batteries associated with this controller. Capacitor Failed (7) The capacitor is below the sufficient voltage level and has not recharged in 10 minutes. Your Array Accelerator board needs to be serviced." ::= { cpqDaAccelEntry 6 }</p>|`SNMP agent`|cpqDaAccelBattery[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Drive Array Accelerator Condition {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaAccelCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "The condition of the device. This value represents the overall condition of this array accelerator." ::= { cpqDaAccelEntry 9 }</p>|`SNMP agent`|cpqDaAccelCondition[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Drive Array Accelerator Status {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaAccelStatus OBJECT-TYPE SYNTAX INTEGER { other(1), invalid(2), enabled(3), tmpDisabled(4), permDisabled(5) } ACCESS read-only STATUS mandatory DESCRIPTION "Array Accelerator Board Status. This describes the status of the accelerator write cache. The status can be: Other (1) Indicates that the instrument agent does not recognize the status of the Array Accelerator. You may need to upgrade the instrument agent. Invalid (2) Indicates that an Array Accelerator board has not been installed in this system or is present but not configured. Enabled (3) Indicates that write cache operations are currently configured and enabled for at least one logical drive. Temporarily Disabled (4) Indicates that write cache operations have been temporarily disabled. View the Array Accelerator Board Error Code object to determine why the write cache operations have been temporarily disabled. Permanently Disabled (5) Indicates that write cache operations have been permanently disabled. View the Array Accelerator Board Error Code object to determine why the write cache operations have been disabled." ::= { cpqDaAccelEntry 2 }</p>|`SNMP agent`|cpqDaAccelStatus[{#SNMPINDEX}]<p>Update: 600</p><p>LLD</p>|
|HP Drive Array Accelerator Write Cache % {#SNMPINDEX}|<p>CPQIDA-MIB:: cpqDaAccelWriteCachePercent OBJECT-TYPE SYNTAX Gauge ACCESS read-only STATUS mandatory DESCRIPTION "Write Cache Percent. This shows the percent of cache memory allocated for posted write caching. If the data cannot be determined or is not applicable, the value is set to 4,294,967,295." ::= { cpqDaAccelEntry 14 }</p>|`SNMP agent`|cpqDaAccelWriteCachePercent[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Logical Drive Condition {#SNMPINDEX} [{#SNMPVALUE}]|<p>CPQIDA-MIB:: cpqDaLogDrvCondition OBJECT-TYPE SYNTAX INTEGER { other(1), ok(2), degraded(3), failed(4) } ACCESS read-only STATUS mandatory DESCRIPTION "The Logical Drive condition. This value represents the overall condition of this logical drive and any associated physical drives." ::= { cpqDaLogDrvEntry 11 }</p>|`SNMP agent`|cpqDaLogDrvCondition[{#SNMPINDEX}]<p>Update: 300</p><p>LLD</p>|
|HP Logical Drive Fault Tolerance {#SNMPINDEX} [{#SNMPVALUE}]|<p>CPQIDA-MIB:: cpqDaLogDrvFaultTol OBJECT-TYPE SYNTAX INTEGER { other(1), none(2), mirroring(3), dataGuard(4), distribDataGuard(5), advancedDataGuard(7), raid50 (8), raid60 (9) } ACCESS read-only STATUS mandatory DESCRIPTION "Logical Drive Fault Tolerance. This shows the fault tolerance mode of the logical drive. The following values are valid for the Logical Drive Fault Tolerance: None (2) Fault tolerance is not enabled. If a physical drive reports an error, the data cannot be recovered by the drive array controller. Mirroring - RAID 1/RAID 1+0 (3) For each physical drive, there is a second physical drive containing identical data. If a drive fails, the data can be retrieved from the mirror drive. Data Guard - RAID 4 (4) One of the physical drives is used as a data guard drive and contains the exclusive OR of the data on the remaining drives. If a failure is detected, the drive array controller rebuilds the data using the data guard information plus information from the other drives. Distributed Data Guard - RAID 5 (5) Distributed Data Guarding, sometimes referred to as RAID 5, is similar to Data Guarding, but instead of storing the parity information on one drive, the information is distributed across all of the drives. If a failure is detected, the drive array controller rebuilds the data using the data guard information from all the drives. Advanced Data Guarding - RAID 6 (7) Advanced Data Guarding (RAID ADG) is the fault tolerance method that provides the highest level of data protection. It 'stripes' data and parity across all the physical drives in the configuration to ensure the uninterrupted availability of uncorrupted data. This fault-tolerance method is similar to distributed data guard (RAID 5) in that parity data is distributed across all drives in the array, except in RAID ADG the capacity of multiple drives is used to store parity data. Assuming the capacity of 2 drives is used for parity data, this allows continued operation despite simultaneous failure of any 2 drives in the array, whereas RAID 4 and RAID 5 can only sustain failure of a single drive. RAID 50 (8) Distributed data guarding (RAID 5) with multiple parity groups. RAID 60 (9) Advanced data guarding (RAID 6) with multiple parity groups." ::= { cpqDaLogDrvEntry 3 }</p>|`SNMP agent`|cpqDaLogDrvFaultTol[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
|HP Logical Drive Size {#SNMPINDEX} [{#SNMPVALUE}]|<p>CPQIDA-MIB:: cpqDaLogDrvSize OBJECT-TYPE SYNTAX INTEGER (0..2147483647) ACCESS read-only STATUS mandatory DESCRIPTION "Logical Drive Size. This is the size of the logical drive in megabytes. This value is calculated using the value 1,048,576 (2^20) as a megabyte. Drive manufacturers sometimes use the number 1,000,000 as a megabyte when giving drive capacities so this value may differ from the advertised size of a drive." ::= { cpqDaLogDrvEntry 9 }</p>|`SNMP agent`|cpqDaLogDrvSize[{#SNMPINDEX}]<p>Update: 28800</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME}: Drive Array Accelerator {#SNMPINDEX} battery has failed|<p>The battery provides backup power for the cache memory, to prevent data loss in the event of a power failure. This battery has failed, so the Drive Array Controller will disable that cache, and disk performance will be bad until the battery is replaced. The battery needs to be replaced. Suggested actions are to write a ticket to replace the battery, then acknowledge the alert, writing the ticket number in the notes. This will prevent a stream of continuing alerts. When the battery is on the edge of failing, it can move in and out of the failed state. This can have the effect of restarting an alert which has already been acknowledged. To prevent this, this trigger is held until there has been no failure reported in the last 24 hours. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: max(/HP_SNMP_Autodiscovery/cpqDaAccelBattery[{#SNMPINDEX}],86400s)=4</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Drive Array Accelerator {#SNMPINDEX} is missing or not configured|<p>The Drive Array Accelerator is the cache memory board for the Drive Array Controller; if it is missing, disk performance will be bad. A Drive Array Accelerator (cache memory board) should be ordered and installed. Suggested actions are to write a ticket to order and install the HP Drive Array Accelerator (cache memory board). Then acknowledge the alert, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaAccelStatus[{#SNMPINDEX}])=2</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: HP Drive Array Controller Board {#SNMPINDEX} is degraded or failed|<p>This HP Drive Array Controller Controller Board is reporting a degraded or failed condition. Check the iLO or preferably the HP System Management Homepage for more information. This may require first starting the Array Configuration Utility from the command line ("/opt/compaq/cpqacuxe/bld/cpqacuxe -R") HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaCntlrBoardCondition[{#SNMPINDEX}])>2</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Logical Drive {#SNMPINDEX} [{#SNMPVALUE}] has failed|<p>This logical drive drive (volume) has failed. For more information, go to the system management homepage, then check the array configuration utility (may need to be started from the command line first). This alert is very serious (data has been lost) because failure of a logical drive (in RAID configuration with redundancy) is normally caused by multiple physical drive failures. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaLogDrvCondition[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Logical Drive {#SNMPINDEX} [{#SNMPVALUE}] is degraded|<p>This logical drive drive (volume) is degraded. For more information, go to the system management homepage, then check the array configuration utility (may need to be started from the command line first). This alert normally is normally means that redundancy has been lost because an underlying physical drive has failed. This means that now a single drive failure could cause data loss. This alert is normally accompanied by an alert from the physical drive which has failed. Suggested actions are to write a ticket to replace the failed physical drive, then acknowledge the physical and logical drive alerts, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaLogDrvCondition[{#SNMPINDEX}])=3</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Memory Module {#SNMPINDEX} is degraded|<p>The correctable error count for this memory module has been exceeded. It needs to be replaced. Suggested actions are to write a ticket to replace the module, then acknowledge the alert, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqHeResMem2ModuleCondition[{#SNMPINDEX}])>2 and last(/HP_SNMP_Autodiscovery/cpqHeResMem2ModuleNum[{#SNMPINDEX}])<>99 and last(/HP_SNMP_Autodiscovery/cpqHeResMem2CpuNum[{#SNMPINDEX}])<>99</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Drive {#SNMPINDEX} has failed [{#SNMPVALUE}]|<p>This drive has failed. It needs to be replaced. This alert will normally be accompanied by an alert from a logical drive which has now lost redundancy. This means that now a single drive failure can cause data loss. Suggested actions are to write a ticket to replace the failed physical drive, then acknowledge the physical and logical drive alerts, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaPhyDrvCondition[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Drive {#SNMPINDEX} is degraded [{#SNMPVALUE}]|<p>This drive is degraded (may mean predictive failure). It should be replaced. Suggested actions are to write a ticket to replace the drive, then acknowledge the alert, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaPhyDrvCondition[{#SNMPINDEX}])=3</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Power Supply {#SNMPINDEX} has failed|<p>This power supply is reporting that it has failed. This could mean that the supply has failed and needs replacement, or it could also mean that there is no input power due to a cabling problem. Check to make sure that there is power going to this supply, if so it has failed and needs to be replaced. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqHeFltTolPowerSupplyCondition[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Power Supply {#SNMPINDEX} is degraded|<p>This power supply is reporting a degraded condition. This could mean that a fan has failed, or a termperature reading is too high. Check the iLO or system management homepage for more information. If a fan has failed, it needs to be replaced. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqHeFltTolPowerSupplyCondition[{#SNMPINDEX}])=3</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Drive {#SNMPINDEX} has failed [{#SNMPVALUE}] (LLD)|<p>This drive has failed. It needs to be replaced. This alert will normally be accompanied by an alert from a logical drive which has now lost redundancy. This means that now a single drive failure can cause data loss. Suggested actions are to write a ticket to replace the failed physical drive, then acknowledge the physical and logical drive alerts, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaPhyDrvCondition[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Drive {#SNMPINDEX} is degraded [{#SNMPVALUE}] (LLD)|<p>This drive is degraded (may mean predictive failure). It should be replaced. Suggested actions are to write a ticket to replace the drive, then acknowledge the alert, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaPhyDrvCondition[{#SNMPINDEX}])=3</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Power Supply {#SNMPINDEX} has failed (LLD)|<p>This power supply is reporting that it has failed. This could mean that the supply has failed and needs replacement, or it could also mean that there is no input power due to a cabling problem. Check to make sure that there is power going to this supply, if so it has failed and needs to be replaced. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqHeFltTolPowerSupplyCondition[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Power Supply {#SNMPINDEX} is degraded (LLD)|<p>This power supply is reporting a degraded condition. This could mean that a fan has failed, or a termperature reading is too high. Check the iLO or system management homepage for more information. If a fan has failed, it needs to be replaced. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqHeFltTolPowerSupplyCondition[{#SNMPINDEX}])=3</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: HP Drive Array Controller Board {#SNMPINDEX} is degraded or failed (LLD)|<p>This HP Drive Array Controller Controller Board is reporting a degraded or failed condition. Check the iLO or preferably the HP System Management Homepage for more information. This may require first starting the Array Configuration Utility from the command line ("/opt/compaq/cpqacuxe/bld/cpqacuxe -R") HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaCntlrBoardCondition[{#SNMPINDEX}])>2</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Memory Module {#SNMPINDEX} is degraded (LLD)|<p>The correctable error count for this memory module has been exceeded. It needs to be replaced. Suggested actions are to write a ticket to replace the module, then acknowledge the alert, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqHeResMem2ModuleCondition[{#SNMPINDEX}])>2 and last(/HP_SNMP_Autodiscovery/cpqHeResMem2ModuleNum[{#SNMPINDEX}])<>99 and last(/HP_SNMP_Autodiscovery/cpqHeResMem2CpuNum[{#SNMPINDEX}])<>99</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Drive Array Accelerator {#SNMPINDEX} battery has failed (LLD)|<p>The battery provides backup power for the cache memory, to prevent data loss in the event of a power failure. This battery has failed, so the Drive Array Controller will disable that cache, and disk performance will be bad until the battery is replaced. The battery needs to be replaced. Suggested actions are to write a ticket to replace the battery, then acknowledge the alert, writing the ticket number in the notes. This will prevent a stream of continuing alerts. When the battery is on the edge of failing, it can move in and out of the failed state. This can have the effect of restarting an alert which has already been acknowledged. To prevent this, this trigger is held until there has been no failure reported in the last 24 hours. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: max(/HP_SNMP_Autodiscovery/cpqDaAccelBattery[{#SNMPINDEX}],86400s)=4</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Drive Array Accelerator {#SNMPINDEX} is missing or not configured (LLD)|<p>The Drive Array Accelerator is the cache memory board for the Drive Array Controller; if it is missing, disk performance will be bad. A Drive Array Accelerator (cache memory board) should be ordered and installed. Suggested actions are to write a ticket to order and install the HP Drive Array Accelerator (cache memory board). Then acknowledge the alert, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaAccelStatus[{#SNMPINDEX}])=2</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Logical Drive {#SNMPINDEX} [{#SNMPVALUE}] has failed (LLD)|<p>This logical drive drive (volume) has failed. For more information, go to the system management homepage, then check the array configuration utility (may need to be started from the command line first). This alert is very serious (data has been lost) because failure of a logical drive (in RAID configuration with redundancy) is normally caused by multiple physical drive failures. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaLogDrvCondition[{#SNMPINDEX}])=4</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Logical Drive {#SNMPINDEX} [{#SNMPVALUE}] is degraded (LLD)|<p>This logical drive drive (volume) is degraded. For more information, go to the system management homepage, then check the array configuration utility (may need to be started from the command line first). This alert normally is normally means that redundancy has been lost because an underlying physical drive has failed. This means that now a single drive failure could cause data loss. This alert is normally accompanied by an alert from the physical drive which has failed. Suggested actions are to write a ticket to replace the failed physical drive, then acknowledge the physical and logical drive alerts, writing the ticket number in the notes. HP System Management Homepage (may require starting service hpsmhd): https://{HOST.CONN}:2381</p>|<p>**Expression**: last(/HP_SNMP_Autodiscovery/cpqDaLogDrvCondition[{#SNMPINDEX}])=3</p><p>**Recovery expression**: </p>|warning|
