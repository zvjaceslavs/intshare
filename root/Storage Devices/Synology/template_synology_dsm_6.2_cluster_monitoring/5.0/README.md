# Zshare Synology Cluster

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Cluster Name|<p>Hostname of High-Availability cluster</p>|`SNMP agent`|clusterName<p>Update: 60</p>|
|Cluster AutoFailover|<p>Whether cluster can failover once something went wrong true (1) false (2)</p>|`SNMP agent`|clusterAutoFailover<p>Update: 60</p>|
|Active Server Name|<p>Hostname of active server/NAS</p>|`SNMP agent`|activeNodeName<p>Update: 60</p>|
|Heartbeat Transfer Speed|<p>Transfer speed of heartbeat in kilo-byte-per-second</p>|`SNMP agent`|heartbeatTxRate<p>Update: 60</p>|
|Cluster Status|<p>Status of High-Availability cluster Possible values: normal (0) - The High-Availability cluster is healthy warning (1) - The High-Availability cluster has something went wrong. Action should be taken to resume High-Availability feature. Please refer to High-Availability Manager for more details. critical (2) - The High-Availability cluster is in danger, and should be resolved as soon as possible.Please refer to High-Availability Manager for more details. upgrading (3) - The High-Availability cluster is upgrading. processing (4) - The High-Availability cluster is undergoing some operation.</p>|`SNMP agent`|clusterStatus<p>Update: 60</p>|
|Passive Server Name|<p>Hostname of passive server</p>|`SNMP agent`|passiveNodeName<p>Update: 60</p>|
|Heartbeat Latency|<p>Heartbeat latency in microseconds (10^-6 seconds)</p>|`SNMP agent`|heartbeatLatency<p>Update: 60</p>|
|Heartbeat Status|<p>Status of heartbeat connection Possible values: normal (0) - The heartbeat connection is normal abnormal (1) - Some information about heartbeat is not available disconnected (2) - The High-Availability cluster loses connection to passive server through heartbeat interface, or it is currently in split-brain mode empty (3) - The High-Availability cluster has no passive server.</p>|`SNMP agent`|heartbeatStatus<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} AutoFailover is not enabled|<p>Cluster can't do failover by itself. This can lead to big downtime</p>|high|
|{HOST.NAME} Cluster in Failed state|<p>The High-Availability cluster has something went wrong. Action should be taken to resume High-Availability feature. Possible values: normal (0) - The High-Availability cluster is healthy warning (1) - The High-Availability cluster has something went wrong. Action should be taken to resume High-Availability feature. Please refer to High-Availability Manager for more details. critical (2) - The High-Availability cluster is in danger, and should be resolved as soon as possible.Please refer to High-Availability Manager for more details. upgrading (3) - The High-Availability cluster is upgrading. processing (4) - The High-Availability cluster is undergoing some operation.</p>|disaster|
|{HOST.NAME} Heartbeat Failed|<p>Possible values: normal (0) - The heartbeat connection is normal abnormal (1) - Some information about heartbeat is not available disconnected (2) - The High-Availability cluster loses connection to passive server through heartbeat interface, or it is currently in split-brain mode empty (3) - The High-Availability cluster has no passive server.</p>|disaster|
|{HOST.NAME} Heartbeat Latency is over 10 sec|<p>Heartbeat Latency is over 10 sec on {HOST.NAME}. Check network between the NAS or maybe you have high traffic</p>|disaster|
