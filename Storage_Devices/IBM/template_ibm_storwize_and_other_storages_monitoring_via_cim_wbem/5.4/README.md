# Storage Pystormon

## Overview

 


[Storage Monitoring via CIM/WBEM](https://github.com/pavlovdo/pystormon) 


Tested with IBM Storwize


1) Monitoring status of storage arrays, disk drives, enclosures, mdisks, mdisk groups, system, vdisks;


2) Monitoring storage volumes perfomance statistic;


3) Dockerization included.



## Author

Denis Pavlov

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DISKDRIVE_MAX_READ_RATE_MBS}|<p>-</p>|`100`|Text macro|
|{$DISKDRIVE_MAX_TRANSFER_RATE_MBS}|<p>-</p>|`100`|Text macro|
|{$DISKDRIVE_MAX_WRITE_RATE_MBS}|<p>-</p>|`50`|Text macro|
|{$VDISK_MAX_READ_RATE_MBS}|<p>-</p>|`500`|Text macro|
|{$VDISK_MAX_TRANSFER_RATE_MBS}|<p>-</p>|`500`|Text macro|
|{$VDISK_MAX_WRITE_RATE_MBS}|<p>-</p>|`500`|Text macro|
## Template links

|Name|
|----|
|ICMP Ping|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Enclosures|<p>-</p>|`Zabbix trapper`|enclosures.discovery<p>Update: 0</p>|
|Mdisk Groups|<p>-</p>|`Zabbix trapper`|mdiskgrps.discovery<p>Update: 0</p>|
|Disk Drives|<p>-</p>|`Zabbix trapper`|diskdrives.discovery<p>Update: 0</p>|
|VDisks|<p>-</p>|`Zabbix trapper`|vdisks.discovery<p>Update: 0</p>|
|Mdisks|<p>-</p>|`Zabbix trapper`|mdisks.discovery<p>Update: 0</p>|
|Arrays|<p>-</p>|`Zabbix trapper`|arrays.discovery<p>Update: 0</p>|
|Systems|<p>-</p>|`Zabbix trapper`|systems.discovery<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ChassisPackageType of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ChassisPackageType[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[Enclosure.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalPSUs of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalPSUs[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalFanModules of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalFanModules[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalCanisters of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalCanisters[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Tag of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Tag[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SerialNumber of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SerialNumber[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RemovalConditions of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RemovalConditions[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ProductMTM of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ProductMTM[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PackageType of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PackageType[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[Enclosure.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OnlinePSUs of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OnlinePSUs[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DriveSlots of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DriveSlots[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OnlineFanModules of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OnlineFanModules[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OnlineCanisters of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OnlineCanisters[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Model of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Model[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Manufacturer of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Manufacturer[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Managed of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Managed[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IOGroupName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IOGroupName[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IOGroupID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IOGroupID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|HealthState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|HealthState[Enclosure.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnclosureStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnclosureStatus[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementName[Enclosure.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Type of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Type[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ChildCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ChildCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ParentPoolID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ParentPoolID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|VirtualCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|VirtualCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|UsedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|UsedCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Usage of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Usage[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalManagedSpace of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalManagedSpace[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SpaceLimit of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SpaceLimit[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SpaceLimitDetermination of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SpaceLimitDetermination[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RemainingManagedSpace of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RemainingManagedSpace[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Primordial of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Primordial[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PoolID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PoolID[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Overallocation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Overallocation[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementName[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NumberOfStorageVolumes of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NumberOfStorageVolumes[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NumberOfBackendVolumes of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NumberOfBackendVolumes[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NativeStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NativeStatus[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Name of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Name[mdiskgrp.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|InstanceID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|InstanceID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentSize of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentSize[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementsShareSpace of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementsShareSpace[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Warning of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Warning[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Block Size of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|BlockSize[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RPM of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RPM[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PhysicalCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PhysicalCapacity[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PhysicalUsedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PhysicalUsedCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ProductID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ProductID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|QuorumId of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|QuorumId[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Read IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ReadIOs[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Accumulated time for all read operations of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ReadIOTimeCounter[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RequestedState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RequestedState[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SlotID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SlotID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TechType of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TechType[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Total IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalIOs[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TransitioningToState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TransitioningToState[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|UID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|UID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Use of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Use[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|VendorID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|VendorID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Write IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|WriteIOs[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Name of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Name[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Capacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Capacity[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Firmware Level of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|FirmwareLevel[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Compressed of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Compressed[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DeviceID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DeviceID[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EffectiveUsedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EffectiveUsedCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledDefault of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledDefault[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledState[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnclosureID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnclosureID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Error Sequence Number of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ErrorSequenceNumber[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|FRU Identity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|FRUIdentity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|MemberID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|MemberID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|FRU Part Number of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|FRUPartNum[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|HealthState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|HealthState[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Accumulated time for all I/O operations of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IOTimeCounter[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Read rate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|KBytesRead[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Transfer rate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|KBytesTransferred[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Write rate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|KBytesWritten[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|MdiskID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|MdiskID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Mdisk Name of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|MdiskName[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Accumulated time for all write operations of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|WriteIOTimeCounter[DiskDrive.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AccessGranted of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AccessGranted[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Accumulated time for all read operations of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ReadIOTimeCounter[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NoSinglePointOfFailure of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NoSinglePointOfFailure[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NumberOfBlocks of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NumberOfBlocks[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PackageRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PackageRedundancy[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PoolID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PoolID[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PoolName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PoolName[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PreferredNode of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PreferredNode[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Primordial of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Primordial[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RCChange of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RCChange[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Read Cache Hit IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ReadHitIOs[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Read IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ReadIOs[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RequestedState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RequestedState[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Name of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Name[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SequentialAccess of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SequentialAccess[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SyncRate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SyncRate[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SystemName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SystemName[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ThinlyProvisioned of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ThinlyProvisioned[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Total IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalIOs[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TransitioningToState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TransitioningToState[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Type of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Type[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|UncompressedUsedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|UncompressedUsedCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|UniqueID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|UniqueID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|VolumeId of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|VolumeId[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Write Cache Hit IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|WriteHitIOs[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Write IOPS of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|WriteIOs[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NativeStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NativeStatus[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NameNamespace of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NameNamespace[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Access of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Access[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledDefault of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledDefault[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Block Size of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|BlockSize[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|CacheMode of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|CacheMode[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|CacheState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|CacheState[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Cluster of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Cluster[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConsumableBlocks of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConsumableBlocks[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Controlled of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Controlled[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|CopyCount of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|CopyCount[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DataOrganization of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DataOrganization[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DataRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DataRedundancy[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DeltaReservation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DeltaReservation[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DeviceID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DeviceID[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementName[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledState[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NameFormat of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NameFormat[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStatus.0[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStatus.1[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|FlashCopyMapCount of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|FlashCopyMapCount[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|GroupID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|GroupID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|GroupName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|GroupName[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Accumulated time for all I/O operations of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IOTimeCounter[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IsBasedOnUnderlyingRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IsBasedOnUnderlyingRedundancy[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IsFormatted of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IsFormatted[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IsSpaceEfficient of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IsSpaceEfficient[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Read rate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|KBytesRead[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Transfer rate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|KBytesTransferred[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Write rate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|KBytesWritten[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|LastAccessTime of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|LastAccessTime[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Accumulated time for all write operations of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|WriteIOTimeCounter[VDisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Access of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Access[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStatus.1[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SlotLocation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SlotLocation[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RequestedState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RequestedState[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Primordial of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Primordial[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Poolname of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Poolname[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PoolID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PoolID[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PackageRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PackageRedundancy[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NumberOfBlocks of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NumberOfBlocks[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NoSinglePointOfFailure of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NoSinglePointOfFailure[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NativeStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NativeStatus[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Mode of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Mode[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IsBasedOnUnderlyingRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IsBasedOnUnderlyingRedundancy[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStatus.0[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AdditionalAvailability 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AdditionalAvailability.0[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledState[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledDefault of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledDefault[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementName[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DeviceID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DeviceID[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DeltaReservation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DeltaReservation[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DataRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DataRedundancy[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DataOrganization of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DataOrganization[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Counts 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Counts.1[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Counts 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Counts.0[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConsumableBlocks of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConsumableBlocks[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Capacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Capacity[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Block Size of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|BlockSize[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AdditionalAvailability 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AdditionalAvailability.1[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TransitioningToState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TransitioningToState[mdisk.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Access of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Access[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Poolname of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Poolname[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NumberOfBlocks of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NumberOfBlocks[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OverProvisioned of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OverProvisioned[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PackageRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PackageRedundancy[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PhysicalCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PhysicalCapacity[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PhysicalFreeCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PhysicalFreeCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PoolID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PoolID[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Primordial of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Primordial[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NativeStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NativeStatus[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RaidLevel 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RaidLevel.0[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RaidLevel 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RaidLevel.1[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RaidStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RaidStatus[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Redundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Redundancy[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RequestedState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RequestedState[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SequentialAccess of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SequentialAccess[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|StripSize of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|StripSize[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SupportsUnmap of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SupportsUnmap[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|NoSinglePointOfFailure of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|NoSinglePointOfFailure[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Mode of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Mode[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AdditionalAvailability 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AdditionalAvailability.0[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DeltaReservation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DeltaReservation[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AdditionalAvailability 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AdditionalAvailability.1[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AllocatedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AllocatedCapacity[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Block Size of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|BlockSize[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Capacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Capacity[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConsumableBlocks of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConsumableBlocks[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DataOrganization of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DataOrganization[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DataRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DataRedundancy[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Dedupe of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Dedupe[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Distributed of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Distributed[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IsConcatenated of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IsConcatenated[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementName[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledDefault of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledDefault[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledState[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Encrypt of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Encrypt[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStatus.0[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStatus.1[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ExtentStripeLength of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ExtentStripeLength[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|IsBasedOnUnderlyingRedundancy of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|IsBasedOnUnderlyingRedundancy[Array.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|WriteProtected of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|WriteProtected[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AllocatedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AllocatedCapacity[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SNMPCommunity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SNMPCommunity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|iSCSIAuthMethod 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|iSCSIAuthMethod.1[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Locale of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Locale[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|MaxNumberOfNodes of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|MaxNumberOfNodes[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Name of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Name[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.0[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|OperationalStatus 1 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|OperationalStatus.1[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|PoolCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|PoolCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RequestedState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RequestedState[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|RequiredMemory of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|RequiredMemory[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ResetCapability of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ResetCapability[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SNMPServerIP of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SNMPServerIP[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ID of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ID[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|SNMPSetting of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|SNMPSetting[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|StatisticsFrequency of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|StatisticsFrequency[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|StatisticsStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|StatisticsStatus[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TimeZone of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TimeZone[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|Topology of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|Topology[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalOverallocation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalOverallocation[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalUsedCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalUsedCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalVdiskCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalVdiskCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TotalVdiskCopyCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TotalVdiskCopyCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|TransitioningToState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|TransitioningToState[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|VolumeProtectionTime of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|VolumeProtectionTime[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|iSCSIAuthMethod 0 of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|iSCSIAuthMethod.0[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|GMLinkTolerance of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|GMLinkTolerance[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|AvailableCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|AvailableCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailContactLocation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailContactLocation[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|BackendStorageCapacity of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|BackendStorageCapacity[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ClusterState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ClusterState[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|CodeLevel of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|CodeLevel[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConfiguredAddress of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConfiguredAddress[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConnectionType of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConnectionType[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConsoleIP of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConsoleIP[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ConsolePort of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ConsolePort[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|DiscoveryStatus of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|DiscoveryStatus[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|ElementName of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|ElementName[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailContactAlternate of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailContactAlternate[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailContactPrimary of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailContactPrimary[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|GMIntraClusterDelaySimulation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|GMIntraClusterDelaySimulation[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailContact of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailContact[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailInterval of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailInterval[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailReply of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailReply[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailServer of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailServer[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EmailSetting of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EmailSetting[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailState[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EMailUserCount of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EMailUserCount[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledDefault of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledDefault[System.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|EnabledState of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|EnabledState[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|FcPortSpeed of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|FcPortSpeed[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|GMInterClusterDelaySimulation of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|GMInterClusterDelaySimulation[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
|VolumeProtection of {#SO_TYPE}.{#SO_NAME}|<p>-</p>|`Zabbix trapper`|VolumeProtection[{#SO_TYPE}.{#SO_NAME}]<p>Update: 0</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[Array.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[Array.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|Error {ITEM.VALUE} is occured on {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ErrorSequenceNumber[{#SO_TYPE}.{#SO_NAME}],5m)=0</p><p>**Recovery expression**: </p>|high|
|Firmware Level of {#SO_TYPE}.{#SO_NAME} has changed|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/FirmwareLevel[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/FirmwareLevel[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|FRU Identity of {#SO_TYPE}.{#SO_NAME} has changed|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/FRUIdentity[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/FRUIdentity[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|FRU Part Number of {#SO_TYPE}.{#SO_NAME} has changed|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/FRUPartNum[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/FRUPartNum[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|Read rate of {#SO_TYPE}.{#SO_NAME} exceeds {$DISKDRIVE_MAX_READ_RATE_MBS} MB/s for 5 minutes|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesRead[DiskDrive.{#SO_NAME}],5m)>100*1048576</p><p>**Recovery expression**: </p>|warning|
|Transfer rate of {#SO_TYPE}.{#SO_NAME} exceeds {$DISKDRIVE_MAX_TRANSFER_RATE_MBS} MB/s for 5 minutes|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesTransferred[DiskDrive.{#SO_NAME}],5m)>100*1048576</p><p>**Recovery expression**: </p>|warning|
|Write rate of {#SO_TYPE}.{#SO_NAME} exceeds {$DISKDRIVE_MAX_WRITE_RATE_MBS} MB/s for 5 minutes|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesWritten[DiskDrive.{#SO_NAME}],5m)>50*1048576</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/Name[DiskDrive.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/Name[DiskDrive.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|ProductID of {#SO_TYPE}.{#SO_NAME} has changed|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/ProductID[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/ProductID[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|SlotID of {#SO_TYPE}.{#SO_NAME} has changed|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/SlotID[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/SlotID[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[Enclosure.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[Enclosure.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[mdiskgrp.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[mdiskgrp.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[mdisk.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[mdisk.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|Code Level of {#SO_TYPE}.{#SO_NAME} has changed|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/CodeLevel[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/CodeLevel[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[System.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[System.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME}|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[VDisk.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[VDisk.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|Read rate of {#SO_TYPE}.{#SO_NAME} exceeds {$VDISK_MAX_READ_RATE_MBS} MB/s for 5 minutes|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesRead[VDisk.{#SO_NAME}],5m)>500*1048576</p><p>**Recovery expression**: </p>|warning|
|Transfer rate of {#SO_TYPE}.{#SO_NAME} exceeds {$VDISK_MAX_TRANSFER_RATE_MBS} MB/s for 5 minutes|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesTransferred[VDisk.{#SO_NAME}],5m)>500*1048576</p><p>**Recovery expression**: </p>|warning|
|Write rate of {#SO_TYPE}.{#SO_NAME} exceeds {$VDISK_MAX_WRITE_RATE_MBS} MB/s for 5 minutes|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesWritten[VDisk.{#SO_NAME}],5m)>500*1048576</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[Enclosure.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[Enclosure.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[mdiskgrp.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[mdiskgrp.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|Error {ITEM.VALUE} is occured on {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ErrorSequenceNumber[{#SO_TYPE}.{#SO_NAME}],5m)=0</p><p>**Recovery expression**: </p>|high|
|Firmware Level of {#SO_TYPE}.{#SO_NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/FirmwareLevel[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/FirmwareLevel[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|FRU Identity of {#SO_TYPE}.{#SO_NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/FRUIdentity[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/FRUIdentity[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|FRU Part Number of {#SO_TYPE}.{#SO_NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/FRUPartNum[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/FRUPartNum[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|Read rate of {#SO_TYPE}.{#SO_NAME} exceeds {$DISKDRIVE_MAX_READ_RATE_MBS} MB/s for 5 minutes (LLD)|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesRead[DiskDrive.{#SO_NAME}],5m)>100*1048576</p><p>**Recovery expression**: </p>|warning|
|Transfer rate of {#SO_TYPE}.{#SO_NAME} exceeds {$DISKDRIVE_MAX_TRANSFER_RATE_MBS} MB/s for 5 minutes (LLD)|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesTransferred[DiskDrive.{#SO_NAME}],5m)>100*1048576</p><p>**Recovery expression**: </p>|warning|
|Write rate of {#SO_TYPE}.{#SO_NAME} exceeds {$DISKDRIVE_MAX_WRITE_RATE_MBS} MB/s for 5 minutes (LLD)|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesWritten[DiskDrive.{#SO_NAME}],5m)>50*1048576</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/Name[DiskDrive.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/Name[DiskDrive.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|ProductID of {#SO_TYPE}.{#SO_NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/ProductID[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/ProductID[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|SlotID of {#SO_TYPE}.{#SO_NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/SlotID[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/SlotID[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[VDisk.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[VDisk.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|Read rate of {#SO_TYPE}.{#SO_NAME} exceeds {$VDISK_MAX_READ_RATE_MBS} MB/s for 5 minutes (LLD)|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesRead[VDisk.{#SO_NAME}],5m)>500*1048576</p><p>**Recovery expression**: </p>|warning|
|Transfer rate of {#SO_TYPE}.{#SO_NAME} exceeds {$VDISK_MAX_TRANSFER_RATE_MBS} MB/s for 5 minutes (LLD)|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesTransferred[VDisk.{#SO_NAME}],5m)>500*1048576</p><p>**Recovery expression**: </p>|warning|
|Write rate of {#SO_TYPE}.{#SO_NAME} exceeds {$VDISK_MAX_WRITE_RATE_MBS} MB/s for 5 minutes (LLD)|<p>-</p>|<p>**Expression**: avg(/Storage Pystormon/KBytesWritten[VDisk.{#SO_NAME}],5m)>500*1048576</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[mdisk.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[mdisk.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[Array.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[Array.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
|Code Level of {#SO_TYPE}.{#SO_NAME} has changed (LLD)|<p>-</p>|<p>**Expression**: (last(/Storage Pystormon/CodeLevel[{#SO_TYPE}.{#SO_NAME}],#1)<>last(/Storage Pystormon/CodeLevel[{#SO_TYPE}.{#SO_NAME}],#2))=1</p><p>**Recovery expression**: </p>|average|
|No data for an hour from {#SO_TYPE}.{#SO_NAME} (LLD)|<p>-</p>|<p>**Expression**: nodata(/Storage Pystormon/ElementName[System.{#SO_NAME}],1d)=0 and nodata(/Storage Pystormon/ElementName[System.{#SO_NAME}],1h)=1</p><p>**Recovery expression**: </p>|warning|
