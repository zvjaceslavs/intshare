# Dell idrac

## Overview

Based on <https://github.com/endersonmaia/zabbix-templates/tree/master/dell/idrac> and [https://share.zabbix.com/cat-server-hardware/dell/dell-idrac-chinese](cat-server-hardware/dell/dell-idrac-chinese). Chinese version translated back to english. 


 
 
 

## Macros used

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
|BIOS Date|<p>-</p>|`SNMP agent`|BiosDate<p>Update: 86400</p>|
|BIOS Version|<p>-</p>|`SNMP agent`|BiosVersion<p>Update: 86400</p>|
|CMOS Battery status|<p>-</p>|`SNMP agent`|CMOSBatteryStatus<p>Update: 60</p>|
|Global system status|<p>-</p>|`SNMP agent`|GlobalSystemStatus<p>Update: 60</p>|
|iDRAC access url|<p>-</p>|`SNMP agent`|idrac_acessurl<p>Update: 86400</p>|
|System Asset Tag|<p>-</p>|`SNMP agent`|idrac_assettag<p>Update: 86400</p>|
|System service number|<p>-</p>|`SNMP agent`|idrac_esc<p>Update: 86400</p>|
|iDRAC Firmware Version|<p>-</p>|`SNMP agent`|idrac_firmwareversion<p>Update: 86400</p>|
|Model|<p>-</p>|`SNMP agent`|idrac_SystemModel<p>Update: 86400</p>|
|DRAC version|<p>-</p>|`SNMP agent`|idrac_version<p>Update: 86400</p>|
|Power Usage Minimum Idle Power|<p>-</p>|`SNMP agent`|PowerUsageMinIdle<p>Update: 120</p>|
|Power Usage Sensor Status|<p>-</p>|`SNMP agent`|PowerUsageSensorStatus<p>Update: 120</p>|
|RAID Controller : Firmware Version|<p>-</p>|`SNMP agent`|RAIDControllerFirmware<p>Update: 86400</p>|
|RAID Controller : Name|<p>-</p>|`SNMP agent`|RAIDControllerName<p>Update: 86400</p>|
|RAID Controller : Status|<p>-</p>|`SNMP agent`|RAIDControllerStatus<p>Update: 60</p>|
|System BIOS Status|<p>-</p>|`SNMP agent`|SystemBiosStatus<p>Update: 60</p>|
|Voltage Status Combined|<p>-</p>|`SNMP agent`|VoltageStatusCombined<p>Update: 120</p>|
|Memory Slot {#MEM} Manufacturer (LLD)|<p>-</p>|`SNMP agent`|MemManufacturer[{#SNMPINDEX}]<p>Update: 86400</p>|
|Memory Slot {#MEM} Serial Number (LLD)|<p>-</p>|`SNMP agent`|MemSerialNo.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Memory Slot {#MEM} Size (LLD)|<p>-</p>|`SNMP agent`|MemSize.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Memory Slot {#MEM} Speed (LLD)|<p>-</p>|`SNMP agent`|MemSpeed.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Memory Slot {#MEM} Status (LLD)|<p>-</p>|`SNMP agent`|MemStatus.[{#SNMPINDEX}]<p>Update: 60</p>|
|Disk {#DISKNAME} : Manufacture Day (LLD)|<p>-</p>|`SNMP agent`|DiskManufactureDay.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#SNMPINDEX} : Manufacturer (LLD)|<p>-</p>|`SNMP agent`|DiskManufacturer.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#SNMPINDEX} : Manufacture Week (LLD)|<p>-</p>|`SNMP agent`|DiskManufactureWeek.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#DISKNAME} : Manufacture Year (LLD)|<p>-</p>|`SNMP agent`|DiskManufactureYear.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#DISKNAME} : Model Number (LLD)|<p>-</p>|`SNMP agent`|DiskModel.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#DISKNAME} : Name (LLD)|<p>-</p>|`SNMP agent`|DiskName.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#DISKNAME} : Serial Number  (LLD)|<p>-</p>|`SNMP agent`|DiskSerialNo.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#DISKNAME} : Disk Size (LLD)|<p>-</p>|`SNMP agent`|DiskSize.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Disk {#DISKNAME} : Disk State (LLD)|<p>-</p>|`SNMP agent`|DiskState.[{#SNMPINDEX}]<p>Update: 300</p>|
|Voltage{#VOLTAGE} : Status (LLD)|<p>-</p>|`SNMP agent`|VoltageStatus.[{#SNMPINDEX}]<p>Update: 120</p>|
|NIC {#NETIF} : Connection Status (LLD)|<p>-</p>|`SNMP agent`|NetConnStatus.[{#SNMPINDEX}]<p>Update: 120</p>|
|NIC {#NETIF} : Name (LLD)|<p>-</p>|`SNMP agent`|NetName.[{#SNMPINDEX}]<p>Update: 86400</p>|
|NIC {#NETIF} : Slot (LLD)|<p>-</p>|`SNMP agent`|NetSlot.[{#SNMPINDEX}]<p>Update: 86400</p>|
|NIC {#NETIF} : Status (LLD)|<p>-</p>|`SNMP agent`|NetStatus.[{#SNMPINDEX}]<p>Update: 60</p>|
|Power Supply {#POWER} Input Voltage (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyInputVoltage.[{#SNMPINDEX}]<p>Update: 300</p>|
|Power Supply {#POWER} Maximum Power (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyMaxPower.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Power Supply {#POWER} Sensor State (LLD)|<p>-</p>|`SNMP agent`|PowerSupplySensorState.[{#SNMPINDEX}]<p>Update: 300</p>|
|Power Supply {#POWER} State Settings (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyStateSettings.[{#SNMPINDEX}]<p>Update: 120</p>|
|Temperature Sensor {#TEMP} Status (LLD)|<p>-</p>|`SNMP agent`|TempStatus.[{#SNMPINDEX}]<p>Update: 300</p>|
|Temperature Sensor {#TEMP} Value (LLD)|<p>-</p>|`SNMP agent`|TempValue.[{#SNMPINDEX}]<p>Update: 60</p>|
|Processor  {#SNMPINDEX} Status (LLD)|<p>-</p>|`SNMP agent`|ProcStatus.[{#SNMPINDEX}]<p>Update: 300</p>|
|Fan {#FAN} Speed (LLD)|<p>-</p>|`SNMP agent`|FanSpeed.[{#SNMPINDEX}]<p>Update: 120</p>|
|Fan {#FAN} Status (LLD)|<p>-</p>|`SNMP agent`|FanStatus.[{#SNMPINDEX}]<p>Update: 120</p>|
|Volume {#VOLNAME} : Virtual Disk State (LLD)|<p>-</p>|`SNMP agent`|VolumeDiskState.[{#SNMPINDEX}]<p>Update: 90</p>|
|Volume {#SNMPINDEX} : Name (LLD)|<p>-</p>|`SNMP agent`|VolumeName.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Volume {#SNMPINDEX} : Size (LLD)|<p>-</p>|`SNMP agent`|VolumeSize.[{#SNMPINDEX}]<p>Update: 86400</p>|
|Volume {#SNMPINDEX} : State  (LLD)|<p>-</p>|`SNMP agent`|VolumeState.[{#SNMPINDEX}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Server {HOSTNAME} Problem with FAN {#FAN}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:FanStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|average|
|Server {HOST.NAME} Problem with memory in slot {#MEM}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:MemStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|high|
|Server {#HOSTNAME} Connection Status has changed on NIC {#NETIF}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:NetConnStatus.[{#SNMPINDEX}].diff(0)}=1</p><p>**Recovery expression**: </p>|warning|
|Server {HOST.NAME} Error on NIC {#NETIF}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:NetStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Error on PSU {#POWER}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:PowerSupplySensorState.[{#SNMPINDEX}].last(0)}<>1</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Error on Processor {#SNMPINDEX}|<p>-</p>|<p>**Expression**: ({Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(0)}<>3 and {Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(0)}<>2) or ({Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(86400)}<>2 and {Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(0)}=2)</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Problem with Temperature Sensor {#TEMP}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:TempStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Error on Voltage Sensor {#VOLTAGE}|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:VoltageStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|average|
|Server {HOST.NAME} Volume {#VOLNAME} Error|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:VolumeDiskState.[{#SNMPINDEX}].last(0)}<>2</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Problem with memory in slot {#MEM} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:MemStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Error on Voltage Sensor {#VOLTAGE} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:VoltageStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|average|
|Server {#HOSTNAME} Connection Status has changed on NIC {#NETIF} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:NetConnStatus.[{#SNMPINDEX}].diff(0)}=1</p><p>**Recovery expression**: </p>|warning|
|Server {HOST.NAME} Error on NIC {#NETIF} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:NetStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Error on PSU {#POWER} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:PowerSupplySensorState.[{#SNMPINDEX}].last(0)}<>1</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Problem with Temperature Sensor {#TEMP} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:TempStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|high|
|Server {HOST.NAME} Error on Processor {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: ({Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(0)}<>3 and {Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(0)}<>2) or ({Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(86400)}<>2 and {Template Dell iDrac SNMPV2:ProcStatus.[{#SNMPINDEX}].last(0)}=2)</p><p>**Recovery expression**: </p>|high|
|Server {HOSTNAME} Problem with FAN {#FAN} (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:FanStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|average|
|Server {HOST.NAME} Volume {#VOLNAME} Error (LLD)|<p>-</p>|<p>**Expression**: {Template Dell iDrac SNMPV2:VolumeDiskState.[{#SNMPINDEX}].last(0)}<>2</p><p>**Recovery expression**: </p>|high|