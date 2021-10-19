# Dell idrac

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory Enumeration|<p>-</p>|`SNMP agent`|MemoryEnum<p>Update: 43200;50/1-7,00:00-24:00</p>|
|Disk Enumeration|<p>-</p>|`SNMP agent`|DiskEnumeration<p>Update: 7200</p>|
|Voltage Table Enumeration|<p>-</p>|`SNMP agent`|VoltageTable<p>Update: 7200</p>|
|Network Enumeration|<p>-</p>|`SNMP agent`|NetworkEnum<p>Update: 7200</p>|
|Power Supply Enumeration|<p>-</p>|`SNMP agent`|PowerSupplies<p>Update: 7200</p>|
|Temperature Enumeration|<p>-</p>|`SNMP agent`|TempEnum<p>Update: 7200</p>|
|Processor Enumeration|<p>-</p>|`SNMP agent`|ProcEnum<p>Update: 43200</p>|
|Fan Enumeration|<p>-</p>|`SNMP agent`|FanEnumeration<p>Update: 7200</p>|
|Disk Volume Enumeration|<p>-</p>|`SNMP agent`|VolumeEnum<p>Update: 7200</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|电压状态|<p>-</p>|`SNMP agent`|VoltageStatusCombined<p>Update: 120</p>|
|iDRAC 固件版本|<p>-</p>|`SNMP agent`|idrac_firmwareversion<p>Update: 86400</p>|
|BIOS 生产日期|<p>-</p>|`SNMP agent`|BiosDate<p>Update: 86400</p>|
|iDRAC 访问地址|<p>-</p>|`SNMP agent`|idrac_acessurl<p>Update: 86400</p>|
|iDRAC 版本|<p>-</p>|`SNMP agent`|idrac_version<p>Update: 86400</p>|
|CMOS 电池状态|<p>-</p>|`SNMP agent`|CMOSBatteryStatus<p>Update: 60</p>|
|BIOS 版本|<p>-</p>|`SNMP agent`|BiosVersion<p>Update: 86400</p>|
|BIOS 状态|<p>-</p>|`SNMP agent`|SystemBiosStatus<p>Update: 60</p>|
|系统状态|<p>-</p>|`SNMP agent`|GlobalSystemStatus<p>Update: 60</p>|
|RAID 控制器名称|<p>-</p>|`SNMP agent`|RAIDControllerName<p>Update: 86400</p>|
|RAID 控制器状态|<p>-</p>|`SNMP agent`|RAIDControllerStatus<p>Update: 60</p>|
|电源传感器状态|<p>-</p>|`SNMP agent`|PowerUsageSensorStatus<p>Update: 120</p>|
|型号|<p>-</p>|`SNMP agent`|idrac_SystemModel<p>Update: 86400</p>|
|电源无功功率|<p>-</p>|`SNMP agent`|PowerUsageMinIdle<p>Update: 120</p>|
|系统服务号|<p>-</p>|`SNMP agent`|idrac_esc<p>Update: 86400</p>|
|标记号|<p>-</p>|`SNMP agent`|idrac_assettag<p>Update: 86400</p>|
|RAID 控制器固件版本|<p>-</p>|`SNMP agent`|RAIDControllerFirmware<p>Update: 86400</p>|
|内存 {#MEM} 制造商|<p>-</p>|`SNMP agent`|MemManufacturer[{#SNMPINDEX}]<p>Update: 86400</p>|
|内存 {#MEM} 序列号|<p>-</p>|`SNMP agent`|MemSerialNo.[{#SNMPINDEX}]<p>Update: 86400</p>|
|内存 {#MEM} 大小|<p>-</p>|`SNMP agent`|MemSize.[{#SNMPINDEX}]<p>Update: 86400</p>|
|内存 {#MEM} 速度|<p>-</p>|`SNMP agent`|MemSpeed.[{#SNMPINDEX}]<p>Update: 86400</p>|
|内存 {#MEM} 状态|<p>-</p>|`SNMP agent`|MemStatus.[{#SNMPINDEX}]<p>Update: 60</p>|
|磁盘 {#DISKNAME} : 生产日|<p>-</p>|`SNMP agent`|DiskManufactureDay.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#SNMPINDEX} : 制造商|<p>-</p>|`SNMP agent`|DiskManufacturer.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#SNMPINDEX} : 生产周|<p>-</p>|`SNMP agent`|DiskManufactureWeek.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#DISKNAME} : 生产年份|<p>-</p>|`SNMP agent`|DiskManufactureYear.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#DISKNAME} : 型号|<p>-</p>|`SNMP agent`|DiskModel.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#DISKNAME} : 名称|<p>-</p>|`SNMP agent`|DiskName.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#DISKNAME} : 序列号|<p>-</p>|`SNMP agent`|DiskSerialNo.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#DISKNAME} : 磁盘大小|<p>-</p>|`SNMP agent`|DiskSize.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘 {#DISKNAME} : 状态|<p>-</p>|`SNMP agent`|DiskState.[{#SNMPINDEX}]<p>Update: 300</p>|
|组件 {#VOLTAGE} : 电压状态|<p>-</p>|`SNMP agent`|VoltageStatus.[{#SNMPINDEX}]<p>Update: 120</p>|
|网卡 {#NETIF} : 连接状态|<p>-</p>|`SNMP agent`|NetConnStatus.[{#SNMPINDEX}]<p>Update: 120</p>|
|网卡 {#NETIF} : 名称|<p>-</p>|`SNMP agent`|NetName.[{#SNMPINDEX}]<p>Update: 86400</p>|
|网卡 {#NETIF} : 槽位|<p>-</p>|`SNMP agent`|NetSlot.[{#SNMPINDEX}]<p>Update: 86400</p>|
|网卡 {#NETIF} : 状态|<p>-</p>|`SNMP agent`|NetStatus.[{#SNMPINDEX}]<p>Update: 60</p>|
|电源 {#POWER} 输入电压|<p>-</p>|`SNMP agent`|PowerSupplyInputVoltage.[{#SNMPINDEX}]<p>Update: 300</p>|
|电源 {#POWER} 最大功率|<p>-</p>|`SNMP agent`|PowerSupplyMaxPower.[{#SNMPINDEX}]<p>Update: 86400</p>|
|电源 {#POWER} 传感器状态|<p>-</p>|`SNMP agent`|PowerSupplySensorState.[{#SNMPINDEX}]<p>Update: 300</p>|
|电源 {#POWER} 状态|<p>-</p>|`SNMP agent`|PowerSupplyStateSettings.[{#SNMPINDEX}]<p>Update: 120</p>|
|温度传感器 {#TEMP} 状态|<p>-</p>|`SNMP agent`|TempStatus.[{#SNMPINDEX}]<p>Update: 300</p>|
|温度传感器 {#TEMP} 温度值|<p>-</p>|`SNMP agent`|TempValue.[{#SNMPINDEX}]<p>Update: 60</p>|
|处理器 {#SNMPINDEX} 状态|<p>-</p>|`SNMP agent`|ProcStatus.[{#SNMPINDEX}]<p>Update: 300</p>|
|风扇 {#FAN} 转速|<p>-</p>|`SNMP agent`|FanSpeed.[{#SNMPINDEX}]<p>Update: 120</p>|
|风扇 {#FAN} 状态|<p>-</p>|`SNMP agent`|FanStatus.[{#SNMPINDEX}]<p>Update: 120</p>|
|磁盘卷 {#VOLNAME} : 状态|<p>-</p>|`SNMP agent`|VolumeDiskState.[{#SNMPINDEX}]<p>Update: 90</p>|
|磁盘卷 {#SNMPINDEX} : 名称|<p>-</p>|`SNMP agent`|VolumeName.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘卷 {#SNMPINDEX} : 大小|<p>-</p>|`SNMP agent`|VolumeSize.[{#SNMPINDEX}]<p>Update: 86400</p>|
|磁盘卷 {#SNMPINDEX} : Raid级别|<p>-</p>|`SNMP agent`|VolumeState.[{#SNMPINDEX}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|物理机 {HOST.NAME} CMOS 电池异常|<p>-</p>|warning|
|物理机 {HOST.NAME} iDrac 5分钟无数据|<p>-</p>|warning|
|物理机 {HOST.NAME} raid控制器错误|<p>-</p>|high|
|物理机 {HOST.NAME} 发生严重错误|<p>-</p>|disaster|
|物理机 {HOST.NAME} 电压异常|<p>-</p>|high|
|物理机{HOST.NAME} 内存 {#MEM} 错误|<p>-</p>|high|
|物理机 {HOST.NAME} 电压组件 {#VOLTAGE} 异常|<p>-</p>|average|
|物理机 {#HOSTNAME}  网卡 {#NETIF} 状态变化|<p>-</p>|warning|
|物理机{HOST.NAME}  网卡 {#NETIF} 状态异常|<p>-</p>|high|
|物理机 {HOST.NAME} 电源 {#POWER} 状态异常|<p>-</p>|high|
|物理机 {HOST.NAME} 温度传感器 {#TEMP} 状态异常|<p>-</p>|high|
|物理机 {HOST.NAME} 处理器 {#SNMPINDEX} 状态异常|<p>-</p>|high|
|物理机 {HOSTNAME} 风扇 {#FAN} 异常|<p>-</p>|average|
|物理机{HOST.NAME} 磁盘卷 {#VOLNAME} 错误|<p>-</p>|high|
