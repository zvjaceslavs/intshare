# Template Net Tintri SNMP

## Description

Template for Trintri devices.

## Overview

Template 5.X for Tintri SNMP devices.

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template Module ICMP Ping|
|Template Module Generic SNMP|
## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|SNMP traps (fallback)|<p>Item is used to collect all SNMP traps unmatched by other snmptrap items</p>|`SNMP trap`|snmptrap.fallback<p>Update: 1m</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|System object ID|<p>MIB: SNMPv2-MIB The vendor's authoritative identification of the network management subsystem contained in the entity. This value is allocated within the SMI enterprises subtree (1.3.6.1.4.1) and provides an easy and unambiguous means for determining`what kind of box' is being managed. For example, if vendor`Flintstones, Inc.' was assigned the subtree1.3.6.1.4.1.4242, it could assign the identifier 1.3.6.1.4.1.4242.1.1 to its `Fred Router'.</p>|`SNMP agent`|system.objectid[sysObjectID.0]<p>Update: 15m</p>|
|Storage Available space|<p>-</p>|`SNMP agent`|system.storage.available<p>Update: 1h</p>|
|Storage Cache Hit (%)|<p>-</p>|`SNMP agent`|system.storage.cachehit<p>Update: 5m</p>|
|Storage Data space|<p>-</p>|`SNMP agent`|system.storage.data<p>Update: 1h</p>|
|Storage Incoming Replication|<p>-</p>|`SNMP agent`|system.storage.inrep<p>Update: 1h</p>|
|Storage IOps|<p>-</p>|`SNMP agent`|system.storage.iops<p>Update: 5m</p>|
|Storage Latency|<p>-</p>|`SNMP agent`|system.storage.latency<p>Update: 5m</p>|
|Storage Orphaned space|<p>-</p>|`SNMP agent`|system.storage.orphaned<p>Update: 1h</p>|
|Storage Outgoing Replication|<p>-</p>|`SNMP agent`|system.storage.outrep<p>Update: 1h</p>|
|Storage Snapshot space|<p>-</p>|`SNMP agent`|system.storage.snapshot<p>Update: 1h</p>|
|Storage Status|<p>-</p>|`SNMP agent`|system.storage.status<p>Update: 5m</p>|
|Storage Throughput|<p>-</p>|`SNMP agent`|system.storage.throughput<p>Update: 5m</p>|
|Storage Used (%)|<p>-</p>|`SNMP agent`|system.storage.used<p>Update: 1h</p>|
|Storage VMSnapshot space|<p>-</p>|`SNMP agent`|system.storage.vmsnapshot<p>Update: 1h</p>|
|System SW version|<p>-</p>|`SNMP agent`|system.sw.version<p>Update: 1h</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

