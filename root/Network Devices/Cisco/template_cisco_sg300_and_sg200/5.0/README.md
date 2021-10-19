# Cisco_SG300-52-d

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
|Net vlan Discovery|<p>-</p>|`SNMP agent`|net.vlan.discovery<p>Update: 89m</p>|
|Fan Discovery|<p>-</p>|`SNMP agent`|fan.discovery<p>Update: 1d</p>|
|Net If Discovery|<p>-</p>|`SNMP agent`|net.if.disco<p>Update: 88m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device name|<p>-</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|temperature status|<p>rlPhdUnitEnvParamMonitorTemperatureStatus 1.3.6.1.4.1.9.6.1.101.53.15.1.13 Display environment monitoring chassis temperature status ok(1), overTemperatureThreshold(2), overCriticalTemperatureThreshold(3)</p>|`SNMP agent`|system.temp.status<p>Update: 180</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Device location|<p>-</p>|`SNMP agent`|system.location<p>Update: 1h</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Device description|<p>-</p>|`SNMP agent`|system.descr<p>Update: 1h</p>|
|snmp uptime|<p>-</p>|`SNMP agent`|system.uptime<p>Update: 120</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Device contact details|<p>-</p>|`SNMP agent`|system.contact<p>Update: 1h</p>|
|CPU utilization|<p>CPU utilization for 5 seconds 1.3.6.1.4.1.9.6.1.101.1.7.0 CPU utilization for 1 minutes 1.3.6.1.4.1.9.6.1.101.1.8.0 CPU utilization for 5 minutes 1.3.6.1.4.1.9.6.1.101.1.9.0</p>|`SNMP agent`|system.cpu.util<p>Update: 60</p>|
|vlan {#IFNAME} {#IFXENTRY}: RX bps|<p>-</p>|`SNMP agent`|net.vlan[ifInBits.{#SNMPINDEX}]<p>Update: 60</p>|
|vlan {#IFNAME} {#IFXENTRY}: RX broadcast|<p>-</p>|`SNMP agent`|net.vlan[ifInBroadcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: RX errors|<p>-</p>|`SNMP agent`|net.vlan[ifInErrors.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: RX multicast|<p>-</p>|`SNMP agent`|net.vlan[ifInMulticastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: RX unicast|<p>-</p>|`SNMP agent`|net.vlan[ifInUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: TX bps|<p>-</p>|`SNMP agent`|net.vlan[ifOutBits.{#SNMPINDEX}]<p>Update: 60</p>|
|vlan {#IFNAME} {#IFXENTRY}: TX broadcast|<p>-</p>|`SNMP agent`|net.vlan[ifOutBroadcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: TX errors|<p>-</p>|`SNMP agent`|net.vlan[ifOutErrors.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: TX multicast|<p>-</p>|`SNMP agent`|net.vlan[ifOutMulticastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: TX unicast|<p>-</p>|`SNMP agent`|net.vlan[ifOutUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|vlan {#IFNAME} {#IFXENTRY}: If Type|<p>-</p>|`SNMP agent`|net.vlan[ifType.{#SNMPINDEX}]<p>Update: 86400</p>|
|fan status {#SNMPINDEX}|<p>normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6)</p>|`SNMP agent`|system.fan[status.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: Duplex|<p>-</p>|`SNMP agent`|net.if[dot3StatsDuplexStatus.{#SNMPINDEX}]<p>Update: 1h</p>|
|{#IFNAME} {#IFXENTRY}: RX bps|<p>-</p>|`SNMP agent`|net.if[ifInBits.{#SNMPINDEX}]<p>Update: 60</p>|
|{#IFNAME} {#IFXENTRY}: RX broadcast|<p>-</p>|`SNMP agent`|net.if[ifInBroadcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: RX errors|<p>-</p>|`SNMP agent`|net.if[ifInErrors.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: RX multicast|<p>-</p>|`SNMP agent`|net.if[ifInMulticastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: RX unicast|<p>-</p>|`SNMP agent`|net.if[ifInUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: TX bps|<p>-</p>|`SNMP agent`|net.if[ifOutBits.{#SNMPINDEX}]<p>Update: 60</p>|
|{#IFNAME} {#IFXENTRY}: TX broadcast|<p>-</p>|`SNMP agent`|net.if[ifOutBroadcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: TX errors|<p>-</p>|`SNMP agent`|net.if[ifOutErrors.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: TX multicast|<p>-</p>|`SNMP agent`|net.if[ifOutMulticastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: TX unicast|<p>-</p>|`SNMP agent`|net.if[ifOutUcastPkts.{#SNMPINDEX}]<p>Update: 180</p>|
|{#IFNAME} {#IFXENTRY}: speed|<p>-</p>|`SNMP agent`|net.if[ifSpeed.{#SNMPINDEX}]<p>Update: 1h</p>|
|{#IFNAME} {#IFXENTRY}: If Type|<p>-</p>|`SNMP agent`|net.if[ifType.{#SNMPINDEX}]<p>Update: 86400</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|high CPU utilization|<p>-</p>|warning|
|{HOST.NAME} overCriticalTemperatureThreshold|<p>-</p>|high|
|{HOST.NAME} overTemperatureThreshold|<p>-</p>|average|
|{HOST.NAME} snmp has been restarted|<p>Last value: {ITEM.LASTVALUE1}. The device uptime is less than 10 minutes Właściwie to jest uptime usługi snmp.</p>|warning|
|vlan {#IFNAME} {#IFXENTRY}: RX errors|<p>There have been input errors in the last 20 minutes.</p>|warning|
|vlan {#IFNAME} {#IFXENTRY}: TX errors|<p>There have been output errors in the last 20 minutes.</p>|warning|
|fan status problem|<p>-</p>|warning|
|{#IFNAME} {#IFXENTRY}: high input utilization|<p>-</p>|warning|
|{#IFNAME} {#IFXENTRY}: high output utilization|<p>-</p>|warning|
|{#IFNAME} {#IFXENTRY}: In half-duplex mode|<p>Last value: {ITEM.LASTVALUE1}. Please check autonegotiation settings and cabling</p>|information|
|{#IFNAME} {#IFXENTRY}: RX errors|<p>There have been input errors in the last 20 minutes.</p>|warning|
|{#IFNAME} {#IFXENTRY}: TX errors|<p>There have been outpup errors in the last 20 minutes.</p>|warning|
