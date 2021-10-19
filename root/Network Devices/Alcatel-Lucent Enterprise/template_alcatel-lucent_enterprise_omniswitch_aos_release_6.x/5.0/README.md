# Template Alcatel-Lucent Enterprise OmniSwitch AOS 6.x

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_V3_AUTHPASSPHRASE}|<p>-</p>|`password_auth`|Text macro|
|{$SNMP_V3_PRIVPASSPHRASE}|<p>-</p>|`password_priv`|Text macro|
|{$SNMP_V3_USER}|<p>-</p>|`user`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discover ALE OmniSwitch AOS Release 6.x PoE Slot/Port|<p>AlcatelIND1InLinePowerEthernet::alaPethPsePortPowerMaximum.X.Y - X is the slot number (element of the stack) and Y is the port number.</p>|`SNMP agent`|poeSlotPortNumber<p>Update: 3600</p>|
|Discover Ethernet Interfaces|<p>-</p>|`SNMP agent`|ifDescription<p>Update: 3600</p>|
|Discover ALE OmniSwitch Entity AOS Release 6.x|<p>ENTITY-MIB::entPhysicalContainedIn.X - X is the slot number (element of the stack) and VALUE is Entity-value</p>|`SNMP agent`|slotindex<p>Update: 3600</p>|
|Discover ALE OmniSwitch AOS Release 6.x|<p>ALCATEL-IND1-PORT-MIB::esmSlotNumber.X - X is the slot number (element of the stack)</p>|`SNMP agent`|esmSlotNumber<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device location|<p>SNMPv2-MIB::sysLocation.0 - The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysLocation<p>Update: 300</p>|
|Device name|<p>SNMPv2-MIB::sysName.0 - An administratively-assigned name for this managed node. By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|sysName<p>Update: 300</p>|
|Device description|<p>SNMPv2-MIB::sysDescr.0 - A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 300</p>|
|SysUptime|<p>DISMAN-EVENT-MIB::sysUpTimeInstance - Uptime of the system in TimeTicks (100 timeticks == 1 second)</p>|`SNMP agent`|SysUptime<p>Update: 60</p>|
|Device contact details|<p>SNMPv2-MIB::sysContact.0 - The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|sysContact<p>Update: 300</p>|
|PoE Power Actual {{#SNMPINDEX}.regsub("([0-9]+)\.([0-9]+)", \1/\2)}|<p>AlcatelIND1InLinePowerEthernet::alaPethPsePortPowerActual -- This object contains the actual amount of power used by a port</p>|`SNMP agent`|poepoweractual.[{#SNMPINDEX}]<p>Update: 30s</p>|
|PoE Power Maximum {{#SNMPINDEX}.regsub("([0-9]+)\.([0-9]+)", \1/\2)}|<p>AlcatelIND1InLinePowerEthernet::alaPethPsePortPowerMaximum -- This object controls maximum amount of power per port</p>|`SNMP agent`|poepowermax.[{#SNMPINDEX}]<p>Update: 30s</p>|
|InOctets {#SNMPVALUE}|<p>-</p>|`SNMP agent`|inoctets.[{#SNMPVALUE}]<p>Update: 60s</p>|
|OutOctets {#SNMPVALUE}|<p>-</p>|`SNMP agent`|outoctets.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Device type of slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|devicemodel.slot.[{#SNMPINDEX}]<p>Update: 300</p>|
|Device serial number of slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|serialnumber.slot.[{#SNMPINDEX}]<p>Update: 300</p>|
|Temperature on slot {#SNMPINDEX}|<p>-</p>|`SNMP agent`|temperature.slot.[{#SNMPINDEX}]<p>Update: 60s</p>|
|CPU usage 1 hr max slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|cpu1hrmax.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|CPU usage 1 min avg slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|cpu1minavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Freespace /flash slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|flashfreespace.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Memory usage 1 hr max slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|memory1hrmax.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|Memory usage 1 min avg slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|memory1minavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|RXTX usage 1 hr max slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|rxtx1hrmax.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
|RXTX usage 1 min avg slot {#SNMPVALUE}|<p>-</p>|`SNMP agent`|rxtx1minavg.slot.[{#SNMPVALUE}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} has been restarted|<p>In Alcatel-Lucent Enterprise OmniSwitch 1 second == 100 timeticks</p>|information|
|Temperature on slot {#SNMPINDEX} > 55 °C|<p>-</p>|warning|
|CPU usage on slot [{#SNMPVALUE}] > 80%|<p>-</p>|warning|
|Flash freespace on slot [{#SNMPVALUE}] < 32 MB|<p>-</p>|warning|
|Memory usage on slot [{#SNMPVALUE}] > 80%|<p>-</p>|warning|
|RXTX load on slot [{#SNMPVALUE}] > 80 %|<p>-</p>|warning|
