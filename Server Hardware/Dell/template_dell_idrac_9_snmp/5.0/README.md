# Template-SNMP-iDRAC-9

## Description

Lucas Afonso Kremer https://www.linkedin.com/in/lucasafonsokremer

## Overview

**Template for Dell servers with iDRAC 9 controller.**
------------------------------------------------------



* #### Tested on PowerEdge R440 with version 3.21.21.21
* #### The value maps are available to download on 3.0 version, please import this template first
* #### You must add one macro on the server or on the template with the name:


{$SNMP\_COMMUNITY} with the community to be used
* #### All the items was created with "SNMPv2 agent"
* #### Make sure your iDRAC is reachable from the zabbix server/proxy, test with:


snmpstatus -v 2c -c public 192.168.0.1 Based on @endersonmaia iDRAC 7 template

## Author

Lucas Afonso Kremer

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disk Enumeration|<p>-</p>|`SNMP agent`|DiskEnumeration<p>Update: 1d</p>|
|Fan Enumeration|<p>-</p>|`SNMP agent`|FanEnumeration<p>Update: 1d</p>|
|Memory Enumeration|<p>-</p>|`SNMP agent`|MemoryEnum<p>Update: 1d;50s/1-7,00:00-24:00</p>|
|Network Enumeration|<p>-</p>|`SNMP agent`|NetworkEnum<p>Update: 1d</p>|
|Power Supply Enumeration|<p>-</p>|`SNMP agent`|PowerSupplies<p>Update: 1d</p>|
|Processor Enumeration|<p>-</p>|`SNMP agent`|ProcEnum<p>Update: 1d</p>|
|Temperature Enumeration|<p>-</p>|`SNMP agent`|TempEnum<p>Update: 1d</p>|
|Voltage Table Enumeration|<p>-</p>|`SNMP agent`|VoltageTable<p>Update: 1d</p>|
|Disk Volume Enumeration|<p>-</p>|`SNMP agent`|VolumeEnum<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|BIOS Date|<p>-</p>|`SNMP agent`|BiosDate<p>Update: 1d</p>|
|BIOS Version|<p>-</p>|`SNMP agent`|BiosVersion<p>Update: 1d</p>|
|CMOS Battery Status|<p>-</p>|`SNMP agent`|CMOSBatteryStatus<p>Update: 1h</p>|
|Overall System LCD Status|<p>-</p>|`SNMP agent`|GlobalSystemLCDStatus<p>Update: 1h</p>|
|Overall System Power State|<p>-</p>|`SNMP agent`|GlobalSystemPowerState<p>Update: 1h</p>|
|Overall System Status|<p>-</p>|`SNMP agent`|GlobalSystemStatus<p>Update: 5m</p>|
|Overall System Storage Status|<p>-</p>|`SNMP agent`|GlobalSystemStorageStatus<p>Update: 1h</p>|
|DRAC Access URL|<p>-</p>|`SNMP agent`|idrac_acessurl<p>Update: 1d</p>|
|System Asset Tag|<p>-</p>|`SNMP agent`|idrac_assettag<p>Update: 1d</p>|
|System Express Service Code|<p>-</p>|`SNMP agent`|idrac_esc<p>Update: 1d</p>|
|DRAC Firmware version|<p>-</p>|`SNMP agent`|idrac_firmwareversion<p>Update: 1d</p>|
|System Model|<p>-</p>|`SNMP agent`|idrac_SystemModel<p>Update: 1d</p>|
|DRAC version|<p>-</p>|`SNMP agent`|idrac_version<p>Update: 1d</p>|
|Power Usage Minimum Idle Power|<p>-</p>|`SNMP agent`|PowerUsageMinIdle<p>Update: 1h</p>|
|Power Usage Sensor Status|<p>-</p>|`SNMP agent`|PowerUsageSensorStatus<p>Update: 1h</p>|
|RAID Controller : Firmware Version|<p>-</p>|`SNMP agent`|RAIDControllerFirmware<p>Update: 1d</p>|
|RAID Controller : Name|<p>-</p>|`SNMP agent`|RAIDControllerName<p>Update: 1d</p>|
|RAID Controller : Status|<p>-</p>|`SNMP agent`|RAIDControllerStatus<p>Update: 10m</p>|
|System BIOS Status|<p>-</p>|`SNMP agent`|SystemBiosStatus<p>Update: 1h</p>|
|System Power State|<p>4 server is on 3 server is on stand-by</p>|`SNMP agent`|SystemPowerState<p>Update: 5m</p>|
|Voltage Status Combined|<p>-</p>|`SNMP agent`|VoltageStatusCombined<p>Update: 10m</p>|
|Disk {#SNMPINDEX} : Manufacture Day (LLD)|<p>-</p>|`SNMP agent`|DiskManufactureDay.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Manufacturer (LLD)|<p>-</p>|`SNMP agent`|DiskManufacturer.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Manufacture Week (LLD)|<p>-</p>|`SNMP agent`|DiskManufactureWeek.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Manufacture Year (LLD)|<p>-</p>|`SNMP agent`|DiskManufactureYear.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Model Number (LLD)|<p>-</p>|`SNMP agent`|DiskModel.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Name (LLD)|<p>-</p>|`SNMP agent`|DiskName.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Serial Number (LLD)|<p>-</p>|`SNMP agent`|DiskSerialNo.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Disk Size (LLD)|<p>-</p>|`SNMP agent`|DiskSize.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Disk {#SNMPINDEX} : Disk State (LLD)|<p>-</p>|`SNMP agent`|DiskState.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk {#SNMPINDEX} : Disk Status (LLD)|<p>-</p>|`SNMP agent`|DiskStatus.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Fan {#SNMPVALUE} Speed (LLD)|<p>-</p>|`SNMP agent`|FanSpeed.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Fan {#SNMPVALUE} Status (LLD)|<p>-</p>|`SNMP agent`|FanStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Memory Slot {#SNMPVALUE} Manufacturer (LLD)|<p>-</p>|`SNMP agent`|MemManufacturer[{#SNMPINDEX}]<p>Update: 1d</p>|
|Memory Slot {#SNMPVALUE} Part Number (LLD)|<p>-</p>|`SNMP agent`|MemPartlNo.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Memory Slot {#SNMPVALUE} Serial Number (LLD)|<p>-</p>|`SNMP agent`|MemSerialNo.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Memory Slot {#SNMPVALUE} Size (LLD)|<p>-</p>|`SNMP agent`|MemSize.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Memory Slot {#SNMPVALUE} Speed (LLD)|<p>-</p>|`SNMP agent`|MemSpeed.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Memory Slot {#SNMPVALUE} Status (LLD)|<p>-</p>|`SNMP agent`|MemStatus.[{#SNMPINDEX}]<p>Update: 30m</p>|
|NIC {#SNMPINDEX} : Connection Status (LLD)|<p>-</p>|`SNMP agent`|NetConnStatus.[{#SNMPINDEX}]<p>Update: 10m</p>|
|NIC {#SNMPINDEX} : MAC Address (LLD)|<p>-</p>|`SNMP agent`|NetMAC.[{#SNMPINDEX}]<p>Update: 1d</p>|
|NIC {#SNMPINDEX} : Name (LLD)|<p>-</p>|`SNMP agent`|NetName.[{#SNMPINDEX}]<p>Update: 1d</p>|
|NIC {#SNMPINDEX} : Slot (LLD)|<p>-</p>|`SNMP agent`|NetSlot.[{#SNMPINDEX}]<p>Update: 1d</p>|
|NIC {#SNMPINDEX} : Status (LLD)|<p>-</p>|`SNMP agent`|NetStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Power Supply {#SNMPINDEX} Input Voltage (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyInputVoltage.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Power Supply {#SNMPINDEX} Maximum Power (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyMaxPower.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Power Supply {#SNMPINDEX} Sensor State (LLD)|<p>-</p>|`SNMP agent`|PowerSupplySensorState.[{#SNMPINDEX}]<p>Update: 10m</p>|
|Power Supply {#SNMPINDEX} State Settings (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyStateSettings.[{#SNMPINDEX}]<p>Update: 10m</p>|
|Power Supply {#SNMPINDEX} Status (LLD)|<p>-</p>|`SNMP agent`|PowerSupplyStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Processor {#SNMPINDEX} Status (LLD)|<p>-</p>|`SNMP agent`|ProcStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Temperature Sensor {#SNMPVALUE} Critical Low-Limit (LLD)|<p>-</p>|`SNMP agent`|TempCritLowLimit.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Temperature Sensor {#SNMPVALUE} Critical Up-Limit (LLD)|<p>-</p>|`SNMP agent`|TempCritUpLimit.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Temperature Sensor {#SNMPVALUE} Status (LLD)|<p>-</p>|`SNMP agent`|TempStatus.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Temperature Sensor {#SNMPVALUE} Value (LLD)|<p>-</p>|`SNMP agent`|TempValue.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Temperature Sensor {#SNMPVALUE} Warning Low-Limit (LLD)|<p>-</p>|`SNMP agent`|TempWarnLowLimit.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Temperature Sensor {#SNMPVALUE} Warning Up-Limit (LLD)|<p>-</p>|`SNMP agent`|TempWarnUpLimit.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Voltage : {#SNMPVALUE} Status (LLD)|<p>-</p>|`SNMP agent`|VoltageStatus.[{#SNMPINDEX}]<p>Update: 10m</p>|
|Volume {#SNMPINDEX} : Virtual Disk State (LLD)|<p>-</p>|`SNMP agent`|VolumeDiskState.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Volume {#SNMPINDEX} : Name (LLD)|<p>-</p>|`SNMP agent`|VolumeName.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Volume {#SNMPINDEX} : Size (LLD)|<p>-</p>|`SNMP agent`|VolumeSize.[{#SNMPINDEX}]<p>Update: 1d</p>|
|Volume {#SNMPINDEX} : State (LLD)|<p>-</p>|`SNMP agent`|VolumeState.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Volume {#SNMPINDEX} : Status (LLD)|<p>-</p>|`SNMP agent`|VolumeStatus.[{#SNMPINDEX}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME}: Problem with Disk {#SNMPINDEX}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:DiskStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME}: Problem with FAN {#SNMPVALUE}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:FanStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Problem with memory in slot {#SNMPVALUE}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:MemStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Error on NIC {#SNMPINDEX}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:NetStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME}: Error on PSU {#SNMPINDEX} State|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:PowerSupplySensorState.[{#SNMPINDEX}].last(0)}<>1) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Problem with PSU {#SNMPINDEX}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:PowerSupplyStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Error on Processor {#SNMPINDEX}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:ProcStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:ProcStatus.[{#SNMPINDEX}].last(0)}<>2) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|disaster|
|Problem with Temperature Sensor {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|warning|
|Temperature on {#SNMPVALUE} critically high|<p>Temperature of the item is above Critical Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} >= {Template-SNMP-iDRAC-9:TempCritUpLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|high|
|Temperature on {#SNMPVALUE} critically low|<p>Temperature of the item is below Critical Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} <= {Template-SNMP-iDRAC-9:TempCritLowLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|high|
|Temperature on {#SNMPVALUE} to high|<p>Temperature of the item is above Warning Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} > {Template-SNMP-iDRAC-9:TempWarnUpLimit.[{#SNMPINDEX}].last()} and {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} < {Template-SNMP-iDRAC-9:TempCritUpLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|warning|
|Temperature on {#SNMPVALUE} to low|<p>Temperature of the item is below Warning Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} < {Template-SNMP-iDRAC-9:TempWarnLowLimit.[{#SNMPINDEX}].last()} and {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} > {Template-SNMP-iDRAC-9:TempCritLowLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Error on Voltage Sensor {#SNMPVALUE}|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:VoltageStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Volume {#SNMPINDEX} Error|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:VolumeDiskState.[{#SNMPINDEX}].last(0)}<>2) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Volume {#SNMPINDEX} Status Error|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:VolumeStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Problem with Disk {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:DiskStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME}: Problem with FAN {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:FanStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Problem with memory in slot {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:MemStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Error on NIC {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:NetStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME}: Error on PSU {#SNMPINDEX} State (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:PowerSupplySensorState.[{#SNMPINDEX}].last(0)}<>1) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Problem with PSU {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:PowerSupplyStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Error on Processor {#SNMPINDEX} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:ProcStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:ProcStatus.[{#SNMPINDEX}].last(0)}<>2) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|disaster|
|Problem with Temperature Sensor {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempStatus.[{#SNMPINDEX}].last(0)}<>3</p><p>**Recovery expression**: </p>|warning|
|Temperature on {#SNMPVALUE} critically high (LLD)|<p>Temperature of the item is above Critical Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} >= {Template-SNMP-iDRAC-9:TempCritUpLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|high|
|Temperature on {#SNMPVALUE} critically low (LLD)|<p>Temperature of the item is below Critical Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} <= {Template-SNMP-iDRAC-9:TempCritLowLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|high|
|Temperature on {#SNMPVALUE} to high (LLD)|<p>Temperature of the item is above Warning Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} > {Template-SNMP-iDRAC-9:TempWarnUpLimit.[{#SNMPINDEX}].last()} and {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} < {Template-SNMP-iDRAC-9:TempCritUpLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|warning|
|Temperature on {#SNMPVALUE} to low (LLD)|<p>Temperature of the item is below Warning Level.</p>|<p>**Expression**: {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} < {Template-SNMP-iDRAC-9:TempWarnLowLimit.[{#SNMPINDEX}].last()} and {Template-SNMP-iDRAC-9:TempValue.[{#SNMPINDEX}].last()} > {Template-SNMP-iDRAC-9:TempCritLowLimit.[{#SNMPINDEX}].last()}</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME}: Error on Voltage Sensor {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:VoltageStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME}: Volume {#SNMPINDEX} Error (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:VolumeDiskState.[{#SNMPINDEX}].last(0)}<>2) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME}: Volume {#SNMPINDEX} Status Error (LLD)|<p>-</p>|<p>**Expression**: ({Template-SNMP-iDRAC-9:VolumeStatus.[{#SNMPINDEX}].last(0)}<>3) and ({Template-SNMP-iDRAC-9:SystemPowerState.last(0)}=4)</p><p>**Recovery expression**: </p>|high|