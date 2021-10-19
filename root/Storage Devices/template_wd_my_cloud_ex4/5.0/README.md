# WD My Cloud EX4 Template

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
|UPSs|<p>-</p>|`SNMP agent`|upsDiscovery<p>Update: 1h</p>|
|Physical Disks|<p>-</p>|`SNMP agent`|pdDiscovery<p>Update: 1h</p>|
|Logical Disks|<p>-</p>|`SNMP agent`|ldDiscovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fan status|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 1m</p>|
|Hostname|<p>-</p>|`SNMP agent`|hostName<p>Update: 1h</p>|
|Agent Version|<p>-</p>|`SNMP agent`|agentVer<p>Update: 1h</p>|
|FTP status|<p>-</p>|`SNMP agent`|ftpServer<p>Update: 1h</p>|
|Temperature|<p>-</p>|`SNMP agent`|temperature<p>Update: 1m</p>|
|Software version|<p>-</p>|`SNMP agent`|softwareVersion<p>Update: 1h</p>|
|Net type|<p>-</p>|`SNMP agent`|netType<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Battery Charge|<p>-</p>|`SNMP agent`|upsBattery[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS No{#SNMPINDEX} Manufacturer|<p>-</p>|`SNMP agent`|upsManufacturer[{#SNMPINDEX}]<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Mode|<p>-</p>|`SNMP agent`|upsMode[{#SNMPINDEX}]<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Product|<p>-</p>|`SNMP agent`|upsProduct[{#SNMPINDEX}]<p>Update: 1h</p>|
|UPS No{#SNMPINDEX} Status|<p>-</p>|`SNMP agent`|upsStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk capacity in slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|pd.capacity[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk model in slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|pd.model[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk SN in slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|pd.SN[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk temperature in slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|pd.temperature[{#SNMPINDEX}]<p>Update: 1m</p>|
|Disk vendor in slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|pd.Vendor[{#SNMPINDEX}]<p>Update: 1h</p>|
|Logical disk {#VOLUMENAME} free space|<p>-</p>|`SNMP agent`|ld.freespace[{#VOLUMENAME}]<p>Update: 1m</p>|
|Logical disk {#VOLUMENAME} FS type|<p>-</p>|`SNMP agent`|ld.fstype[{#VOLUMENAME}]<p>Update: 1h</p>|
|Logical disk {#VOLUMENAME} free percent|<p>-</p>|`Calculated`|ld.pfree[{#VOLUMENAME}]<p>Update: 1m</p>|
|Logical disk {#VOLUMENAME} RAID level|<p>-</p>|`SNMP agent`|ld.raid[{#VOLUMENAME}]<p>Update: 1h</p>|
|Logical disk {#VOLUMENAME} size|<p>-</p>|`SNMP agent`|pd.size[{#VOLUMENAME}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Fan status|<p>-</p>|warning|
|High temperature|<p>-</p>|warning|
|Battery Charge Critical|<p>-</p>|high|
|Battery Charge Low|<p>-</p>|average|
|Battery Status|<p>-</p>|warning|
|Physical disk {#SNMPINDEX} temperature|<p>-</p>|warning|
|Logical Disk {#VOLUMENAME} free space less 25%|<p>-</p>|warning|
