# Template OS Windows WMI

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$WMI_AUTHFILE}|<p>-</p>|`/etc/zabbix/wmi.pw`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Find drive|<p>Find local disk drive</p>|`External check`|zbxwmi["-action","discover","-k","DeviceID","-fields","VolumeName","-filter","MediaType=12","Win32_LogicalDisk","{$WMI_AUTHFILE}",{HOST.HOST}]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU #6|<p>-</p>|`Dependent item`|cpu6<p>Update: 0</p>|
|CPU #2|<p>-</p>|`Dependent item`|cpu2<p>Update: 0</p>|
|Disk I/O|<p>-</p>|`External check`|zbxwmi["-action","json","-fields","DiskWritesPersec,DiskWriteBytesPersec,DiskReadsPersec,DiskReadBytesPersec","-filter","Name='_Total'","Win32_PerfRawData_PerfDisk_LogicalDisk","{$WMI_AUTHFILE}",{HOST.HOST}]<p>Update: 5m</p>|
|Processors|<p>-</p>|`External check`|zbxwmi["-action","json","-fields","PercentProcessorTime","-filter","Name<>'_Total'","Win32_PerfFormattedData_PerfOS_Processor","{$WMI_AUTHFILE}",{HOST.HOST}]<p>Update: 5m</p>|
|CPU #1|<p>-</p>|`Dependent item`|cpu1<p>Update: 0</p>|
|Read / sec|<p>-</p>|`Dependent item`|DiskReadsPersec<p>Update: 0</p>|
|CPU #5|<p>-</p>|`Dependent item`|cpu5<p>Update: 0</p>|
|CPU #7|<p>-</p>|`Dependent item`|cpu7<p>Update: 0</p>|
|CPU #3|<p>-</p>|`Dependent item`|cpu3<p>Update: 0</p>|
|CPU #4|<p>-</p>|`Dependent item`|cpu4<p>Update: 0</p>|
|CPU #8|<p>-</p>|`Dependent item`|cpu8<p>Update: 0</p>|
|Writes / sec|<p>-</p>|`Dependent item`|DiskWritesPersec<p>Update: 0</p>|
|Used {#WMI.DEVICEID}|<p>-</p>|`Calculated`|Used[{#WMI.DEVICEID}]<p>Update: 5m</p>|
|Disk info {#WMI.DEVICEID}|<p>-</p>|`External check`|zbxwmi["-action","json","-k","DeviceID","-fields","FreeSpace,Size","-item","{#WMI.DEVICEID}","Win32_LogicalDisk","{$WMI_AUTHFILE}","{HOST.HOST}"]<p>Update: 5m</p>|
|Free Space {#WMI.DEVICEID}|<p>-</p>|`Dependent item`|FreeSpace[{#WMI.DEVICEID}]<p>Update: 0</p>|
|Size {#WMI.DEVICEID}|<p>-</p>|`Dependent item`|Size[{#WMI.DEVICEID}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Low disk space|<p>-</p>|warning|
