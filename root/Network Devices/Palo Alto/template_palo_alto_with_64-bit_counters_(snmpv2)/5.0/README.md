# Template Palo Alto SNMPv2 64-bit counters

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
|entPhysical discovery - Fan|<p>-</p>|`SNMP agent`|entPhysicalName.discovery.fan<p>Update: 1d</p>|
|hrStorage discovery|<p>-</p>|`SNMP agent`|hrStorageDescr.discovery<p>Update: 1d</p>|
|CPU discovery|<p>-</p>|`SNMP agent`|hrDeviceDescr.discovery<p>Update: 1d</p>|
|interface discovery|<p>-</p>|`SNMP agent`|ifName.discovery<p>Update: 1d</p>|
|entPhysical discovery - Temperature|<p>-</p>|`SNMP agent`|entPhysicalName.discovery<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|HA mode|<p>Current high-availability peer state.</p>|`SNMP agent`|panSysHAMode.0<p>Update: 12h</p>|
|HA peer state|<p>Current high-availability peer state.</p>|`SNMP agent`|panSysHAPeerState.0<p>Update: 1m</p>|
|HA state|<p>Current high-availability state.</p>|`SNMP agent`|panSysHAState.0<p>Update: 1m</p>|
|System shutdown|<p>-</p>|`SNMP trap`|snmptrap["System shutdown"]<p>Update: 0</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software. It is mandatory that this only contain printable ASCII characters.</p>|`SNMP agent`|sysDescr.0<p>Update: 1d</p>|
|HA status trap|<p>-</p>|`SNMP trap`|snmptrap["HA link change"]<p>Update: 0</p>|
|Hostname|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name.</p>|`SNMP agent`|sysName.0<p>Update: 1d</p>|
|General trap|<p>-</p>|`SNMP trap`|snmptrap["General trap"]<p>Update: 0</p>|
|Undefined traps|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|Uptime|<p>"The amount of time since this host was last initialized. Note that this is different from sysUpTime in the SNMPv2-MIB [RFC1907] because sysUpTime is the uptime of the network management portion of the system."</p>|`SNMP agent`|hrSystemUptime.0<p>Update: 1m</p>|
|$1 opration status|<p>-</p>|`SNMP agent`|entPhySensorOperStatus.fan.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor value|<p>-</p>|`SNMP agent`|entPhySensorValue.fan.["{#PHY}"]<p>Update: 1m</p>|
|$1 class|<p>-</p>|`SNMP agent`|entPhysicalClass.fan.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor description|<p>-</p>|`SNMP agent`|entPhysicalDescr.fan.["{#PHY}"]<p>Update: 1d</p>|
|$1 storage size|<p>-</p>|`SNMP agent`|hrStorageSize.["{#STOR}"]<p>Update: 30m</p>|
|$1 storage type|<p>-</p>|`SNMP agent`|hrStorageType.["{#STOR}"]<p>Update: 12h</p>|
|$1 storage used|<p>-</p>|`SNMP agent`|hrStorageUsed.["{#STOR}"]<p>Update: 1m</p>|
|{#CPU} status|<p>"The current operational state of the device described by this row of the table. A value unknown(1) indicates that the current state of the device is unknown. running(2) indicates that the device is up and running and that no unusual error conditions are known. The warning(3) state indicates that agent has been informed of an unusual error condition by the operational software (e.g., a disk device driver) but that the device is still 'operational'. An example would be a high number of soft errors on a disk. A value of testing(4), indicates that the device is not available for use because it is in the testing state. The state of down(5) is used only when the agent has been informed that the device is not available for any use."</p>|`SNMP agent`|hrDeviceStatus.["{#CPU}"]<p>Update: 1m</p>|
|{#CPU} load - percentage|<p>"The average, over the last minute, of the percentage of time that this processor was not idle. Implementations may approximate this one minute smoothing period if necessary."</p>|`SNMP agent`|hrProcessorLoad.["{#CPU}"]<p>Update: 1m</p>|
|$1 admin status|<p>-</p>|`SNMP agent`|ifAdminStatus.["{#IFNAME}"]<p>Update: 2m</p>|
|$1 alias (description)|<p>-</p>|`SNMP agent`|ifAlias.["{#IFNAME}"]<p>Update: 6h</p>|
|$1 input traffic (30 sec)|<p>-</p>|`SNMP agent`|ifHCInOctets.["{#IFNAME}"]<p>Update: 30s</p>|
|$1 output traffic (30 sec)|<p>-</p>|`SNMP agent`|ifHCOutOctets.["{#IFNAME}"]<p>Update: 30s</p>|
|$1 link status|<p>-</p>|`SNMP agent`|ifOperStatus.["{#IFNAME}"]<p>Update: 2m</p>|
|$1 opration status|<p>"The operational status of the sensor."</p>|`SNMP agent`|entPhySensorOperStatus.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor value|<p>The most recent measurement obtained by the agent for this sensor.</p>|`SNMP agent`|entPhySensorValue.["{#PHY}"]<p>Update: 1m</p>|
|$1 class|<p>-</p>|`SNMP agent`|entPhysicalClass.["{#PHY}"]<p>Update: 1m</p>|
|$1 sensor description|<p>-</p>|`SNMP agent`|entPhysicalDescr.["{#PHY}"]<p>Update: 1d</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|System restart|<p>-</p>|high|
|HA link status critical|<p>-</p>|high|
|{#PHY} sensor status not ok|<p>-</p>|average|
|Free disk space is less than 2% on {#STOR}|<p>-</p>|disaster|
|Free disk space is less than 5% on {#STOR}|<p>-</p>|high|
|Free disk space is less than 10% on {#STOR}|<p>-</p>|average|
|{#CPU} status down|<p>-</p>|average|
|{#CPU} status warning|<p>-</p>|warning|
|CPU load on {#CPU} more than 90%|<p>-</p>|average|
|CPU load on {#CPU} more than 95%|<p>-</p>|high|
|{#IFNAME} interface down|<p>interface ifAdminStatus is up(1) and ifOperStatus is down(2)</p>|high|
|{#PHY} sensor status not ok|<p>-</p>|average|
|{#PHY} temperature above 65 °C|<p>-</p>|average|
|{#PHY} temperature above 70 °C|<p>-</p>|high|
|{#PHY} temperature above 80 °C|<p>-</p>|disaster|
