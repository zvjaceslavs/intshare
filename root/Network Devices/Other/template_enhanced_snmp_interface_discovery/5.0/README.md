# Enhanced SNMP Interface Discovery

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$INT_BANDWIDTH_WARNING}|<p>-</p>|`80`|Text macro|
|{$INT_ERRORS_WARN}|<p>-</p>|`2`|Text macro|
|{$INT_LLD_UPDATE_INTERVAL}|<p>-</p>|`30m`|Text macro|
|{$INT_NAME_PHYSICAL}|<p>-</p>|`^[A-Z|a-z]{2}-?[0-9]+\/[0-9]{1,2}(\/[0-9]+)?$`|Text macro|
|{$INT_NO_TRIGGER_STRING}|<p>-</p>|`^(EDGEPORT)$`|Text macro|
|{$INT_PRIO_STRING}|<p>-</p>|`UPLINK`|Text macro|
|{$SEARCH_FOR_INACTIVE_PORTS}|<p>-</p>|`0`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Network Interfaces Discovery - Virtual|<p>-</p>|`SNMP agent`|net.if.virt.discovery<p>Update: {$INT_LLD_UPDATE_INTERVAL}</p>|
|Network Interfaces Discovery - Disabled|<p>-</p>|`SNMP agent`|net.if.down.discovery<p>Update: {$INT_LLD_UPDATE_INTERVAL}</p>|
|Network Interfaces Discovery - Priority|<p>-</p>|`SNMP agent`|net.if.prio.discovery<p>Update: {$INT_LLD_UPDATE_INTERVAL}</p>|
|Network Interfaces Discovery - Normal|<p>-</p>|`SNMP agent`|net.if.discovery<p>Update: {$INT_LLD_UPDATE_INTERVAL}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Total amount of interfaces|<p>Shows the total amount of interfaces.</p>|`SNMP agent`|net.if.total<p>Update: 10m</p>|
|Interface {#IFNAME}: Admin status|<p>-</p>|`SNMP agent`|net.if.virt.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Alias|<p>-</p>|`SNMP agent`|net.if.virt.status[ifAlias.{#SNMPINDEX}]<p>Update: 1h</p>|
|Interface {#IFNAME}: Bits received|<p>-</p>|`SNMP agent`|net.if.virt.status[ifInOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Operational status|<p>-</p>|`SNMP agent`|net.if.virt.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Bits sent|<p>-</p>|`SNMP agent`|net.if.virt.status[ifOutOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Admin status|<p>Shows if interface is administrative disabled.</p>|`SNMP agent`|net.if.down.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME} (priority): Admin status|<p>-</p>|`SNMP agent`|net.if.prio.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#IFNAME} (priority): Alias|<p>-</p>|`SNMP agent`|net.if.prio.status[ifDescription.{#SNMPINDEX}]<p>Update: 1h</p>|
|Interface {#IFNAME} (priority): Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.prio.status[ifInDiscards.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME} (priority): Inbound packets with errors|<p>-</p>|`SNMP agent`|net.if.prio.status[ifInErrors.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME} (priority): Bits received|<p>-</p>|`SNMP agent`|net.if.prio.status[ifInOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME} (priority): Operational status|<p>-</p>|`SNMP agent`|net.if.prio.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 30s</p>|
|Interface {#IFNAME} (priority): Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.prio.status[ifOutDiscards.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME} (priority): Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.prio.status[ifOutErrors.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME} (priority): Bits sent|<p>-</p>|`SNMP agent`|net.if.prio.status[ifOutOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME} (priority): Speed|<p>-</p>|`SNMP agent`|net.if.prio.status[ifSpeed.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Admin status|<p>-</p>|`SNMP agent`|net.if.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Alias|<p>-</p>|`SNMP agent`|net.if.status[ifAlias.{#SNMPINDEX}]<p>Update: 1h</p>|
|Interface {#IFNAME}: Inbound packets discarded|<p>-</p>|`SNMP agent`|net.if.status[ifInDiscards.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Inbound packets with errors|<p>-</p>|`SNMP agent`|net.if.status[ifInErrors.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Bits received|<p>-</p>|`SNMP agent`|net.if.status[ifInOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Operational status|<p>-</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFNAME}: Outbound packets discarded|<p>-</p>|`SNMP agent`|net.if.status[ifOutDiscards.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Outbound packets with errors|<p>-</p>|`SNMP agent`|net.if.status[ifOutErrors.{#SNMPINDEX}]<p>Update: 5m</p>|
|Interface {#IFNAME}: Bits sent|<p>-</p>|`SNMP agent`|net.if.status[ifOutOctets.{#SNMPINDEX}]<p>Update: 3m</p>|
|Interface {#IFNAME}: Speed|<p>Speed of the interface</p>|`SNMP agent`|net.if.status[ifSpeed.{#SNMPINDEX}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Interface status has changed on port {#IFNAME}|<p>Triggers when the interface state changes.</p>|warning|
|Port {#IFNAME} has gone UP!|<p>Interface state has changed. This is most likely due to enabeling an interface.</p>|information|
|Interface status has changed on host {HOST.NAME} port {#IFNAME}: {#SNMPVALUE}|<p>-</p>|average|
|Interface {#IFNAME}: Bandwidth usage over {$INT_BANDWIDTH_WARNING:"{#IFNAME}"}%|<p>Triggers when incoming or outgoing traffic exceeds limit of the INT_BANDWIDTH_WARNING macro.</p>|warning|
|Interface {#IFNAME}: High error rate|<p>-</p>|warning|
|Interface status has changed on port {#IFNAME}|<p>Triggers when the interface state changes.</p>|warning|
|Interface {#IFNAME}: Bandwidth usage over {$INT_BANDWIDTH_WARNING:"{#IFNAME}"}%|<p>Triggers when incoming or outgoing traffic exceeds limit of the INT_BANDWIDTH_WARNING macro.</p>|warning|
|Interface {#IFNAME}: High error rate|<p>Triggers when incoming or outgoing errors exceeds limit of the INT_ERRORS_WARN macro.</p>|warning|
|Port {#IFNAME} is enabled but not connected!|<p>Zabbix detects a "notconnected" port on {HOST.NAME} Interface {#IFNAME}.</p>|information|
