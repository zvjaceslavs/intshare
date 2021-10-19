# Template SNMP Ricoh Printers

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
|Trays|<p>-</p>|`SNMP agent`|TraysID<p>Update: 300</p>|
|DetailCounters|<p>-</p>|`SNMP agent`|DetailCountersID<p>Update: 300</p>|
|Toners|<p>-</p>|`SNMP agent`|TonersID<p>Update: 300</p>|
|Parts|<p>-</p>|`SNMP agent`|PartsID<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Page Count|<p>-</p>|`SNMP agent`|PageCount<p>Update: 60</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Description|<p>-</p>|`SNMP agent`|Description<p>Update: 60</p>|
|Status|<p>-</p>|`SNMP agent`|PrinterStatus<p>Update: 60</p>|
|Page Count / Min|<p>-</p>|`SNMP agent`|PageCountPerMinute<p>Update: 60</p>|
|Tray {#SNMPVALUE} Current Level|<p>-</p>|`SNMP agent`|TrayCurrentLevel[{#SNMPVALUE}]<p>Update: 300</p>|
|Tray {#SNMPVALUE} Max Level|<p>-</p>|`SNMP agent`|TrayMaxLevel[{#SNMPVALUE}]<p>Update: 300</p>|
|DetailCounters[{#SNMPVALUE}]|<p>-</p>|`SNMP agent`|DetailCountersID[{#SNMPVALUE}]<p>Update: 3600</p>|
|Tonor {#SNMPVALUE} Level|<p>-</p>|`SNMP agent`|TonerLevel[{#SNMPVALUE}]<p>Update: 300</p>|
|Part {#SNMPVALUE} Status|<p>-</p>|`SNMP agent`|PartStatus[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Printer Error|<p>-</p>|warning|
|Printer Unknown Error|<p>-</p>|high|
|{#SNMPVALUE} - Critical: {ITEM.LASTVALUE}|<p>-</p>|high|
|{#SNMPVALUE} - Warning: {ITEM.LASTVALUE}|<p>-</p>|warning|
|{#SNMPVALUE} Critical: {ITEM.LASTVALUE}|<p>-</p>|high|
|{#SNMPVALUE} Warning: {ITEM.LASTVALUE}|<p>-</p>|warning|
|Cover Open|<p>-</p>|warning|
|Unknown: {ITEM.LASTVALUE}|<p>-</p>|not classified|
