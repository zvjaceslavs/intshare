# Template UPS RFC 1628 SNMP

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
|Output line|<p>-</p>|`SNMP agent`|ups.line.output<p>Update: 1h</p>|
|Input line|<p>-</p>|`SNMP agent`|ups.line.input<p>Update: 1h</p>|
|Bypass|<p>-</p>|`SNMP agent`|ups.bypass<p>Update: 1h</p>|
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
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 30s</p>|
|UPS battery current|<p>-</p>|`SNMP agent`|ups.battery.current<p>Update: 1m</p>|
|UPS estimated charge remaining|<p>-</p>|`SNMP agent`|ups.battery.estimatedChargeRemaining<p>Update: 1m</p>|
|UPS battery status|<p>-</p>|`SNMP agent`|ups.battery.status<p>Update: 1m</p>|
|UPS battery temperature|<p>-</p>|`SNMP agent`|ups.battery.temperature<p>Update: 1m</p>|
|UPS battery voltage|<p>-</p>|`SNMP agent`|ups.battery.voltage<p>Update: 1m</p>|
|UPS bypass frequency|<p>-</p>|`SNMP agent`|ups.bypass.frequency<p>Update: 1m</p>|
|UPS agent software version|<p>-</p>|`SNMP agent`|ups.ident.agentSoftwareVersion<p>Update: 1d</p>|
|UPS attached devices|<p>-</p>|`SNMP agent`|ups.ident.attachedDevices<p>Update: 1d</p>|
|UPS manufacturer|<p>-</p>|`SNMP agent`|ups.ident.manufacturer<p>Update: 1d</p>|
|UPS model name|<p>-</p>|`SNMP agent`|ups.ident.model<p>Update: 1d</p>|
|UPS name|<p>-</p>|`SNMP agent`|ups.ident.name<p>Update: 1d</p>|
|UPS input line bads|<p>-</p>|`SNMP agent`|ups.line.input.Bads<p>Update: 1m</p>|
|UPS output frequency|<p>-</p>|`SNMP agent`|ups.line.output.frequency<p>Update: 1m</p>|
|UPS output source|<p>-</p>|`SNMP agent`|ups.line.output.source<p>Update: 1m</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|UPS output current {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.output.current[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS output percent load {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.output.percentload[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS output power {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.output.power[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS output voltage {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.output.voltage[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS input current {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.input.current[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS input frequency {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.input.frequency[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS input true power {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.input.truePower[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS input voltage {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.line.input.voltage[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS bypass current {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.bypass.current[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS bypass power {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.bypass.power[{#SNMPINDEX}]<p>Update: 1m</p>|
|UPS bypass voltage {#SNMPINDEX}|<p>-</p>|`SNMP agent`|ups.bypass.voltage[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|{HOST.NAME} has been restarted (uptime < 10m)|<p>Uptime is less than 10 minutes</p>|warning|
|No SNMP data collection|<p>SNMP is not available for polling. Please check device connectivity and SNMP settings.</p>|warning|
|System name has changed (new name: {ITEM.VALUE})|<p>System name has changed. Ack to close.</p>|information|
|UPS battery status is depleted|<p>-</p>|disaster|
|UPS battery status is low|<p>-</p>|high|
|UPS battery status is unknown|<p>-</p>|average|
|UPS output source is booster|<p>-</p>|information|
|UPS output source is bypass|<p>-</p>|average|
|UPS output source is none|<p>-</p>|average|
|UPS output source is other|<p>-</p>|average|
|UPS output source is reducer|<p>-</p>|information|
