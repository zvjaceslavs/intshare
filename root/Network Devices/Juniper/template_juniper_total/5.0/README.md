# Juniper Total

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`FillMeIn`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Juniper Interface enumeration|<p>-</p>|`SNMP agent`|discovery.ifDescr<p>Update: 3600</p>|
|Juniper OSPF Neighbor State Enumeration|<p>-</p>|`SNMP agent`|discovery.ospf.nbr<p>Update: 3600</p>|
|Juniper BGP Peer Enumeration|<p>-</p>|`SNMP agent`|discovery.bgp<p>Update: 3600</p>|
|Juniper IKE Peer Enumeration|<p>-</p>|`SNMP agent`|discovery.ike<p>Update: 3600</p>|
|Juniper IPSec Tunnel State Enumeration|<p>-</p>|`SNMP agent`|discovery.IPSec<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|JunOS Memory % in use|<p>-</p>|`SNMP agent`|Junos.Mem<p>Update: 30</p>|
|Simple ICMP Time|<p>-</p>|`Simple check`|icmppingsec[,,,,,]<p>Update: 30</p>|
|JunOS CPU % in use|<p>-</p>|`SNMP agent`|Junos.CPU<p>Update: 30</p>|
|Juniper Make/Model|<p>OID to query Unit Make and Model</p>|`SNMP agent`|juniper.make.model<p>Update: 3600</p>|
|JunOS temperature|<p>-</p>|`SNMP agent`|Junos.Temp<p>Update: 30</p>|
|Simple ICMP Up Check|<p>-</p>|`Simple check`|icmpping[,,,,]<p>Update: 30</p>|
|{#SNMPVALUE} - Inbound traffic|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.10.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Inbound discarded packets|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.13.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Inbound error packets|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.14.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Outbound traffic|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.16.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Outbound discarded packets|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.19.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Outbound error packets|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.20.[{#SNMPINDEX}]<p>Update: 60</p>|
|ospfNbrState {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.14.10.1.6.[{#SNMPINDEX}]<p>Update: 60</p>|
|bgpPeerState {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.15.3.1.2.[{#SNMPINDEX}]<p>Update: 60</p>|
|ikePeerState {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.2636.3.52.1.1.2.1.6.1.4.[{#SNMPINDEX}]<p>Update: 30</p>|
|IPSec Tunnel State {#SNMPINDEX}|<p>-</p>|`SNMP agent`|1.3.6.1.4.1.2636.3.39.1.5.1.2.1.1.4.[{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} ICMP Response|<p>-</p>|warning|
