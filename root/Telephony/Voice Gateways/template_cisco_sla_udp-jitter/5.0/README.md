# VoIP IPSLA Discovery

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
|IPSLA tag discover|<p>-</p>|`SNMP agent`|discoverySLA<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Jitter AVG from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_JitterAVG_from.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Lantancy MAX to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_LatancyMAX_to.[{#SNMPINDEX}]<p>Update: 30s</p>|
|RTTmax between {#SNMPVALUE} and host|<p>-</p>|`SNMP agent`|SLADiscovery_RTTmax.[{#SNMPINDEX}]<p>Update: 30s</p>|
|MOS score {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_MOS.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Packet Loss from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_Lost_to_host.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Packet Loss to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_Lost_from_host.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Lantancy MIN to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_Latancymin_to.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Lantancy MIN from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_Latancymin_from.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Lantancy MAX from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_LatancyMAX_from.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Jitter AVG to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_JitterAVG_to.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Lantancy AVG to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_LatancyAVG_to.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Lantancy AVG from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_LatancyAVG_from.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Jitter MIN to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_JitterMIN_to.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Jitter MIN from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_JitterMIN_from.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Jitter MAX to {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_JitterMAX_to.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Jitter MAX from {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SLADiscovery_JitterMAX_from.[{#SNMPINDEX}]<p>Update: 30s</p>|
|RTTmin between {#SNMPVALUE} and host|<p>-</p>|`SNMP agent`|SLADiscovery_RTTmin.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Packet Loss for {#SNMPVALUE}|<p>-</p>|high|
|Please check the link between {HOST.NAME} and {#SNMPVALUE}|<p>-</p>|high|
