# Template SNMP Ricoh Printers

## Overview

Tested Printers:  
 * MP C5503   
 * IPSiO SP 6320.


Display Items:  
 * Counter (Total and Pages per Minute)  
 * Tray Level  
 * Tonor Level  
 * Option Parts Status


Graph Items:  
 * Page Counter per Minute


 

## Author

330k

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template SNMP Generic|
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
|Description|<p>-</p>|`SNMP agent`|Description<p>Update: 60</p>|
|Page Count|<p>-</p>|`SNMP agent`|PageCount<p>Update: 60</p>|
|Page Count / Min|<p>-</p>|`SNMP agent`|PageCountPerMinute<p>Update: 60</p>|
|Status|<p>-</p>|`SNMP agent`|PrinterStatus<p>Update: 60</p>|
|Device contact details|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Tray {#SNMPVALUE} Current Level (LLD)|<p>-</p>|`SNMP agent`|TrayCurrentLevel[{#SNMPVALUE}]<p>Update: 300</p>|
|Tray {#SNMPVALUE} Max Level (LLD)|<p>-</p>|`SNMP agent`|TrayMaxLevel[{#SNMPVALUE}]<p>Update: 300</p>|
|DetailCounters[{#SNMPVALUE}] (LLD)|<p>-</p>|`SNMP agent`|DetailCountersID[{#SNMPVALUE}]<p>Update: 3600</p>|
|Tonor {#SNMPVALUE} Level (LLD)|<p>-</p>|`SNMP agent`|TonerLevel[{#SNMPVALUE}]<p>Update: 300</p>|
|Part {#SNMPVALUE} Status (LLD)|<p>-</p>|`SNMP agent`|PartStatus[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Cover Open|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:PartStatus[{#SNMPVALUE}].last(0)}<>4</p><p>**Recovery expression**: </p>|warning|
|Unknown: {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:PartStatus[{#SNMPVALUE}].last(0)}<>4 and {Template SNMP Ricoh Printers:PartStatus[{#SNMPVALUE}].last(0)}<>3</p><p>**Recovery expression**: </p>|not classified|
|{#SNMPVALUE} Critical: {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TonerLevel[{#SNMPVALUE}].last(0)}<10</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} Warning: {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TonerLevel[{#SNMPVALUE}].last(0)}<30 and {Template SNMP Ricoh Printers:TonerLevel[{#SNMPVALUE}].last(0)}>10</p><p>**Recovery expression**: </p>|warning|
|{#SNMPVALUE} - Critical: {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TrayCurrentLevel[{#SNMPVALUE}].last(0)}<{Template SNMP Ricoh Printers:TrayMaxLevel[{#SNMPVALUE}].last(0)}/4</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} - Warning: {ITEM.LASTVALUE}|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TrayCurrentLevel[{#SNMPVALUE}].last(0)}<{Template SNMP Ricoh Printers:TrayMaxLevel[{#SNMPVALUE}].last(0)}/2 and {Template SNMP Ricoh Printers:TrayCurrentLevel[{#SNMPVALUE}].last(0)}>{Template SNMP Ricoh Printers:TrayMaxLevel[{#SNMPVALUE}].last(0)}/4</p><p>**Recovery expression**: </p>|warning|
|{#SNMPVALUE} - Critical: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TrayCurrentLevel[{#SNMPVALUE}].last(0)}<{Template SNMP Ricoh Printers:TrayMaxLevel[{#SNMPVALUE}].last(0)}/4</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} - Warning: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TrayCurrentLevel[{#SNMPVALUE}].last(0)}<{Template SNMP Ricoh Printers:TrayMaxLevel[{#SNMPVALUE}].last(0)}/2 and {Template SNMP Ricoh Printers:TrayCurrentLevel[{#SNMPVALUE}].last(0)}>{Template SNMP Ricoh Printers:TrayMaxLevel[{#SNMPVALUE}].last(0)}/4</p><p>**Recovery expression**: </p>|warning|
|{#SNMPVALUE} Critical: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TonerLevel[{#SNMPVALUE}].last(0)}<10</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} Warning: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:TonerLevel[{#SNMPVALUE}].last(0)}<30 and {Template SNMP Ricoh Printers:TonerLevel[{#SNMPVALUE}].last(0)}>10</p><p>**Recovery expression**: </p>|warning|
|Cover Open (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:PartStatus[{#SNMPVALUE}].last(0)}<>4</p><p>**Recovery expression**: </p>|warning|
|Unknown: {ITEM.LASTVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template SNMP Ricoh Printers:PartStatus[{#SNMPVALUE}].last(0)}<>4 and {Template SNMP Ricoh Printers:PartStatus[{#SNMPVALUE}].last(0)}<>3</p><p>**Recovery expression**: </p>|not classified|
