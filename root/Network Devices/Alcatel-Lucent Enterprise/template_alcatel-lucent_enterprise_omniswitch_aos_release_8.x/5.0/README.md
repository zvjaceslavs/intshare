# Template Alcatel-Lucent Enterprise OmniSwitch AOS 8.x

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_V3_AUTHPASSPHRASE}|<p>-</p>|``|Text macro|
|{$SNMP_V3_PRIVPASSPHRASE}|<p>-</p>|``|Text macro|
|{$SNMP_V3_USER}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discover Ethernet Interfaces|<p>-</p>|`SNMP agent`|ifDescription<p>Update: 3600</p>|
|Discover ALE OmniSwitch AOS Release 8.x|<p>-</p>|`SNMP agent`|vchassisnbr<p>Update: 3600</p>|
|Discover ALE OmniSwitch Entity AOS Release 8.x|<p>ENTITY-MIB::entPhysicalContainedIn.X - X is the slot number (element of the stack) and VALUE is Entity-value</p>|`SNMP agent`|slotindex<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device contact details|<p>SNMPv2-MIB::sysContact.0 - The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 300</p>|
|Device name|<p>SNMPv2-MIB::sysName.0 - An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 300</p>|
|Device description|<p>SNMPv2-MIB::sysDescr.0 - A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 300</p>|
|SysUptime|<p>DISMAN-EVENT-MIB::sysUpTimeInstance - Uptime of the system in TimeTicks (100 timeticks == 1 second)</p>|`SNMP agent`|SysUptime<p>Update: 60</p>|
|Device location|<p>SNMPv2-MIB::sysLocation.0 - The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 300</p>|
|InOctets {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inoctets.[{#SNMPVALUE}]<p>Update: 60s</p>|
|OutOctets {#SNMPVALUE}|<p>-</p>|`SNMP agent`|outoctets.[{#SNMPVALUE}]<p>Update: 60s</p>|
|CPU usage 1 day avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|cpu1dayavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|CPU usage 1 hr avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|cpu1hravg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|CPU usage 1 min avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|cpu1minavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Memory usage 1 day avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|memory1dayavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Memory usage 1 hr avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|memory1hravg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Memory usage 1 min avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|memory1minavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|RXTX usage 1 day avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|rxtx1dayavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|RXTX usage 1 hr avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|rxtx1hravg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|RXTX usage 1 min avg chassis {#SNMPVALUE}|<p>-</p>|`SNMP agent`|rxtx1minavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Device type of slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|devicemodel.slot.[{#SNMPINDEX}]<p>Update: 300</p>|
|Freespace /flash chassis {#SNMPINDEX}|<p>-</p>|`SNMP agent`|freespace.slot.[{#SNMPINDEX}]<p>Update: 300</p>|
|Device serial number of slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|serialnumber.slot.[{#SNMPINDEX}]<p>Update: 300</p>|
|Temperature chassis {#SNMPINDEX}|<p>-</p>|`SNMP agent`|temperature.slot.[{#SNMPINDEX}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} has been restarted|<p>In Alcatel-Lucent Enterprise OmniSwitch 1 second == 100 timeticks</p>|information|
|CPU usage on chassis [{#SNMPVALUE}] > 80%|<p>-</p>|warning|
|Memory usage on chassis [{#SNMPVALUE}] > 80%|<p>-</p>|warning|
|RXTX load on chassis [{#SNMPVALUE}] > 80 %|<p>-</p>|warning|
|Flash freespace on chassis {#SNMPINDEX} < 256 MB|<p>-</p>|warning|
|Temperature on chassis {#SNMPINDEX} > 55 °C|<p>-</p>|warning|
