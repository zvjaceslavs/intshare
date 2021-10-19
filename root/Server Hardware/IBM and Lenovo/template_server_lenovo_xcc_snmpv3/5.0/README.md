# Template Server Lenovo XCC SNMPv3

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DISK_OK_STATUS}|<p>-</p>|`Normal`|Text macro|
|{$FAN_OK_STATUS}|<p>-</p>|`Normal`|Text macro|
|{$HEALTH_CRIT_STATUS}|<p>-</p>|`2`|Text macro|
|{$HEALTH_DISASTER_STATUS}|<p>-</p>|`0`|Text macro|
|{$HEALTH_WARN_STATUS}|<p>-</p>|`4`|Text macro|
|{$PSU_OK_STATUS}|<p>-</p>|`Normal`|Text macro|
|{$TEMP_CRIT}|<p>-</p>|`60`|Text macro|
|{$TEMP_CRIT:"Ambient"}|<p>-</p>|`35`|Text macro|
|{$TEMP_CRIT_LOW}|<p>-</p>|`5`|Text macro|
|{$TEMP_WARN}|<p>-</p>|`50`|Text macro|
|{$TEMP_WARN:"Ambient"}|<p>-</p>|`30`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Temperature Discovery CPU|<p>LENOVO-XCC-MIB::tempDescr</p>|`SNMP agent`|tempDescr.discovery.cpu<p>Update: 1h</p>|
|FAN Discovery|<p>Discovering fans from LENOVO-XCC-MIB::fanDescr</p>|`SNMP agent`|fan.discovery<p>Update: 1h</p>|
|Voltage Discovery|<p>LENOVO-XCC-MIB::voltDescr</p>|`SNMP agent`|voltDescr.discovery<p>Update: 1h</p>|
|PSU Discovery|<p>LENOVO-XCC-MIB::powerFruName</p>|`SNMP agent`|psu.discovery<p>Update: 1h</p>|
|Temperature Discovery Ambient|<p>-</p>|`SNMP agent`|tempDescr.discovery.ambient<p>Update: 1h</p>|
|Physical Disk Discovery|<p>LENOVO-XCC-MIB:diskIndex</p>|`SNMP agent`|physicalDisk.discovery<p>Update: 1h</p>|
|Temperature Discovery|<p>LENOVO-XCC-MIB::tempDescr</p>|`SNMP agent`|tempDescr.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|currentSysPowerStatus|<p>-</p>|`SNMP agent`|IMMcurrentSysPowerStatus<p>Update: 300</p>|
|Device description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr<p>Update: 3600</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid<p>Update: 3600</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 300</p>|
|SNMP availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 60</p>|
|Device uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime<p>Update: 120s</p>|
|systemState|<p>-</p>|`SNMP agent`|IMMsystemState<p>Update: 300</p>|
|Device location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location<p>Update: 3600</p>|
|Device contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact<p>Update: 3600</p>|
|PowerOnHours|<p>-</p>|`SNMP agent`|IMMpowerOnHours<p>Update: 3600</p>|
|System Health Status|<p>-</p>|`SNMP agent`|IMMsystemHealthStat<p>Update: 120</p>|
|Trap|<p>-</p>|`SNMP trap`|snmptrap["General"]<p>Update: 0</p>|
|Device name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 3600</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Total power in use|<p>-</p>|`SNMP agent`|power.inuse<p>Update: 120s</p>|
|restartCount|<p>-</p>|`SNMP agent`|IMMrestartCount<p>Update: 3600</p>|
|CPU: Temperature|<p>LENOVO-XCC-MIB The measured temperature CPU</p>|`SNMP agent`|sensor.temp.value[tempReading.CPU.{#SNMPINDEX}]<p>Update: 3m</p>|
|{#FAN_DESCR}: Fan speed, %|<p>LENOVO-XCC-MIB Fan speed expressed in percent(%) of maximum RPM. An octet string expressed as 'ddd% of maximum' where: d is a decimal digit or blank space for a leading zero. If the fan is determined not to be running or the fan speed cannot be determined, the string will indicate 'Offline'.</p>|`SNMP agent`|sensor.fan.speed.percentage[fanSpeed.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#FAN_DESCR}: Fan status|<p>LENOVO-XCC-MIB A description of the fan measurement channel.</p>|`SNMP agent`|sensor.fan.status[fanHealthStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
|{#VOLTDESCR}: Status|<p>LENOVO-XCC-MIB A description of the voltage component status.</p>|`SNMP agent`|voltage.status[{#SNMPINDEX}]<p>Update: 3m</p>|
|{#VOLTDESCR}: Voltage|<p>LENOVO-XCC-MIB The measured voltage.</p>|`SNMP agent`|voltage[{#SNMPINDEX}]<p>Update: 3m</p>|
|{#PSU_DESCR}: Power supply status|<p>LENOVO-XCC-MIB A description of the power module status.</p>|`SNMP agent`|sensor.psu.status[powerHealthStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
|Ambient: Temperature|<p>LENOVO-XCC-MIB The measured temperature Ambient</p>|`SNMP agent`|sensor.temp.value[tempReading.Ambient.{#SNMPINDEX}]<p>Update: 3m</p>|
|{#SNMPINDEX}: Physical disk part number|<p>LENOVO-XCC-MIB disk module FRU name.</p>|`SNMP agent`|system.hw.physicaldisk.part_number[diskFruName.{#SNMPINDEX}]<p>Update: 1h</p>|
|{#SNMPINDEX}: Physical disk status|<p>LENOVO-XCC-MIB A description of the disk module status.</p>|`SNMP agent`|system.hw.physicaldisk.status[diskHealthStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
|{#SNMPVALUE}: Temperature|<p>LENOVO-XCC-MIB The measured temperature.</p>|`SNMP agent`|sensor.temp.value[tempReading.{#SNMPINDEX}]<p>Update: 3m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|Check System Health Status on {HOSTNAME}|<p>Проверь железку!!!!!!</p>|warning|
|nodata SNMP! Check IMM {HOSTNAME} status|<p>Нет данных по SNMP</p>|information|
|No SNMP data collection|<p>Last value: {ITEM.LASTVALUE1}. SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|{HOST.NAME} has been restarted|<p>Last value: {ITEM.LASTVALUE1}. The device uptime is less than 10 minutes</p>|warning|
|CPU: Temperature is above critical threshold: >{$TEMP_CRIT:"CPU"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|high|
|{#FAN_DESCR}: Fan is not in normal state|<p>Last value: {ITEM.LASTVALUE1}. Please check the fan unit</p>|information|
|{#VOLTDESCR}: voltage is not in normal state|<p>Last value: {ITEM.LASTVALUE1}.</p>|warning|
|{#PSU_DESCR}: Power supply is not in normal state|<p>Last value: {ITEM.LASTVALUE1}. Please check the power supply unit for errors</p>|information|
|Ambient: Temperature is above critical threshold: >{$TEMP_CRIT:"Ambient"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|high|
|Ambient: Temperature is above warning threshold: >{$TEMP_WARN:"Ambient"}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|warning|
|Ambient: Temperature is too low: <{$TEMP_CRIT_LOW:"Ambient"}|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
|{#SNMPINDEX}: Physical disk is not in OK state|<p>Last value: {ITEM.LASTVALUE1}. Please check physical disk for warnings or errors</p>|warning|
|{#SNMPVALUE}: Temperature is above critical threshold: >{$TEMP_CRIT:""}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|high|
|{#SNMPVALUE}: Temperature is above warning threshold: >{$TEMP_WARN:""}|<p>Last value: {ITEM.LASTVALUE1}. This trigger uses temperature sensor values as well as temperature sensor status if available</p>|warning|
|{#SNMPVALUE}: Temperature is too low: <{$TEMP_CRIT_LOW:""}|<p>Last value: {ITEM.LASTVALUE1}.</p>|average|
