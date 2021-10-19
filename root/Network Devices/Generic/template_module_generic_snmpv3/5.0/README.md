# Template Module Generic SNMPv3

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP.TIMEOUT}|<p>-</p>|`5m`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectidV3[sysObjectID.0]<p>Update: 15m</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptimeV3[sysUpTime.0]<p>Update: 30s</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contactV3[sysContact.0]<p>Update: 1h</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descrV3[sysDescr.0]<p>Update: 1h</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.locationV3[sysLocation.0]<p>Update: 1h</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.nameV3<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|System name has changed (new name: {ITEM.VALUE})|<p>System name has changed. Ack to close.</p>|information|
|{HOST.NAME} has been restarted (uptime < 10m)|<p>Uptime is less than 10 minutes</p>|warning|
|No SNMP data collection|<p>SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
