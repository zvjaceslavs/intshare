# Template_Extreme_X450a

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
|CPU|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeCpuMonitorSystemSlotId Slot Id of the system monitored.</p>|`SNMP agent`|extremeCpuMonitorSystemSlotId<p>Update: 300</p>|
|Memory|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeMemoryMonitorSystemSlotId Slot Id of the MSM monitored.</p>|`SNMP agent`|extremeMemoryMonitorSystemSlotId<p>Update: 300</p>|
|FAN|<p>EXTREME-SYSTEM-MIB::extremeFanEntPhysicalIndex The entity index for this fan entity in the entityPhysicalTable table of the entity MIB.</p>|`SNMP agent`|extremeFanEntPhysicalIndex<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Status of Redundant Power Supply|<p>EXTREME-SYSTEM-MIB::extremeRedundantPowerAlarm Alarm state of an external redundant power supply to a device. Alarm state indicates either fan failure or overtemperature condition.</p>|`SNMP agent`|extremeRedundantPowerAlarm<p>Update: 60</p>|
|Operational Status of Primary Power Supply|<p>EXTREME-SYSTEM-MIB::extremePrimaryPowerOperational Operational status of internal power supply of a device.</p>|`SNMP agent`|extremePrimaryPowerOperational<p>Update: 60</p>|
|CPU Utilization|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeCpuMonitorTotalUtilization Total CPU utlization (percentage) as of last sampling.</p>|`SNMP agent`|extremeCpuMonitorTotalUtilization<p>Update: 60</p>|
|Primary Software Revision|<p>EXTREME-SYSTEM-MIB::extremePrimarySoftwareRev The software revision of the primary image stored in this device.</p>|`SNMP agent`|extremePrimarySoftwareRev<p>Update: 86400</p>|
|Secondary Software Revision|<p>EXTREME-SYSTEM-MIB::extremeSecondarySoftwareRev The software revision of the secondary image stored in this device.</p>|`SNMP agent`|extremeSecondarySoftwareRev<p>Update: 86400</p>|
|System ID|<p>EXTREME-SYSTEM-MIB::extremeSystemID This represents the System ID of the Summit Switch.</p>|`SNMP agent`|extremeSystemID<p>Update: 86400</p>|
|Device Temperature|<p>EXTREME-SYSTEM-MIB::extremeCurrentTemperature Current temperature in degrees celcius measured inside device enclosure.</p>|`SNMP agent`|extremeCurrentTemperature<p>Update: 300</p>|
|Operational Status of Redundant Power Supply|<p>EXTREME-SYSTEM-MIB::extremeRedundantPowerStatus Operational status of an external redundant power supply to a device.</p>|`SNMP agent`|extremeRedundantPowerStatus<p>Update: 60</p>|
|CPU Utilization Threshold|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeCpuMonitorThreshold Threshold for CPU Aggregation utilization trap</p>|`SNMP agent`|extremeCpuMonitorThreshold<p>Update: 600</p>|
|Over Temperature Status|<p>EXTREME-SYSTEM-MIB::extremeOverTemperatureAlarm Alarm status of overtemperature sensor in device enclosure.</p>|`SNMP agent`|extremeOverTemperatureAlarm<p>Update: 60</p>|
|CPU #$1 Utilization (5min)|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeCpuMonitorSystemUtilization5mins The CPU utilization by system resources. This is the utilization of the system resourcesin the last 5 minutes.</p>|`SNMP agent`|extremeCpuMonitorSystemUtilization5mins[{#SNMPINDEX}]<p>Update: 300</p>|
|Free Memory #$1|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeMemoryMonitorSystemFree Total amount of free memory in Kbytes in the system.</p>|`SNMP agent`|extremeMemoryMonitorSystemFree[{#SNMPVALUE}]<p>Update: 60</p>|
|Total Memory #$1|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeMemoryMonitorSystemTotal Total amount of DRAM in Kbytes in the system.</p>|`SNMP agent`|extremeMemoryMonitorSystemTotal[{#SNMPVALUE}]<p>Update: 3600</p>|
|Used Memory #$1|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeMemoryMonitorSystemUsage Total amount of memory used by system services in Kbytes in the system.</p>|`SNMP agent`|extremeMemoryMonitorSystemUsage[{#SNMPVALUE}]<p>Update: 60</p>|
|Used Memory #$1 by Applications|<p>EXTREME-SOFTWARE-MONITOR-MIB::extremeMemoryMonitorUserUsage Total amount of memory used by applications in Kbytes in the system.</p>|`SNMP agent`|extremeMemoryMonitorUserUsage[{#SNMPVALUE}]<p>Update: 300</p>|
|Status of FAN #$1|<p>EXTREME-SYSTEM-MIB::extremeFanOperational Operational status of a cooling fan.</p>|`SNMP agent`|extremeFanOperational[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Over Temperature in device Enclosure|<p>-</p>|average|
|Primary Power Supply is nonoperational|<p>-</p>|average|
|Redundant Power Supply does not present|<p>-</p>|not classified|
|Redundant Power Supply is in problem status|<p>-</p>|average|
|Redundant Power Supply is not OK|<p>-</p>|average|
|High CPU #{#SNMPVALUE} Usage|<p>-</p>|average|
|High Memory #{#SNMPVALUE} Usage|<p>-</p>|average|
|Status of FAN #{#SNMPVALUE} is failed|<p>-</p>|average|
