# SNMP - Lexmark MONO

## Overview

SNMP Template  
  
Lexmark Generic Laser Printer - Mono



## Author

Romulo Ribeiro Moreira

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|06 Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|03 Device contact|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|05 Device Serial Number|<p>-</p>|`SNMP agent`|serialNumber<p>Update: 3600</p>|
|Page Counter|<p>-</p>|`SNMP agent`|prtMarkerLifeCount<p>Update: 60</p>|
|Maintenance Kit level|<p>-</p>|`SNMP agent`|MaintenanceKitCurrentLevel<p>Update: 60</p>|
|Maintenance Kit capacity|<p>-</p>|`SNMP agent`|MaintenanceKitMaxCapacity<p>Update: 3600</p>|
|Printer Status|<p>-</p>|`SNMP agent`|prtConsoleDescription<p>Update: 60</p>|
|02 Device location|<p>The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|04 Device name|<p>An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|Toner print capacity|<p>-</p>|`SNMP agent`|prtMarkerSuppliesMaxCapacity<p>Update: 3600</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 3600</p>|
|Toner print level|<p>-</p>|`SNMP agent`|prtMarkerSuppliesLevel<p>Update: 60</p>|
|01 Device model|<p>-</p>|`SNMP agent`|deviceModel<p>Update: 30</p>|
|Device Manufacturer|<p>The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|deviceManufacturer<p>Update: 3600</p>|
## Triggers

There are no triggers in this template.

