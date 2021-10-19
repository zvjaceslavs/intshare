# Template Juniper SRX

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
|JunOS Interfaces|<p>-</p>|`SNMP agent`|discovery.ifDescr<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Flow sessions (Available)|<p>-</p>|`Calculated`|jnxJsSPUMonitoringAvailableFlowSession.0<p>Update: 60</p>|
|Node 0 PFE Memory usage|<p>-</p>|`SNMP agent`|jnxJsSPUMonitoringMemoryUsage.0<p>Update: 30</p>|
|Node 0 RE CPU usage|<p>-</p>|`SNMP agent`|jnxOperatingCPU.9.1.0.0<p>Update: 30</p>|
|Node1 PFE CPU usage|<p>-</p>|`SNMP agent`|jnxJsSPUMonitoringCPUUsage.10<p>Update: 30</p>|
|Node 1 PFE Memory usage|<p>-</p>|`SNMP agent`|jnxJsSPUMonitoringMemoryUsage.10<p>Update: 30</p>|
|Node 1 RE Memory usage|<p>-</p>|`SNMP agent`|jnxOperatingBuffer.9.2.0.0<p>Update: 30</p>|
|Node 1 CPU temperature|<p>-</p>|`SNMP agent`|jnxOperatingTemp.9.2.0.0<p>Update: 60</p>|
|Yellow alarm|<p>-</p>|`SNMP agent`|jnxYellowAlarmState<p>Update: 60</p>|
|Node 1 RE CPU usage|<p>-</p>|`SNMP agent`|jnxOperatingCPU.9.2.0.0<p>Update: 30</p>|
|Ping check|<p>-</p>|`Simple check`|icmpping<p>Update: 30</p>|
|Node 0 RE Memory usage|<p>-</p>|`SNMP agent`|jnxOperatingBuffer.9.1.0.0<p>Update: 30</p>|
|Red alarm|<p>-</p>|`SNMP agent`|jnxRedAlarmState<p>Update: 30</p>|
|Uptime|<p>-</p>|`SNMP agent`|Uptime<p>Update: 60</p>|
|Node 0 CPU temperature|<p>-</p>|`SNMP agent`|jnxOperatingTemp.9.1.0.0<p>Update: 60</p>|
|Node 0 PFE CPU usage|<p>-</p>|`SNMP agent`|jnxJsSPUMonitoringCPUUsage.0<p>Update: 30</p>|
|Flow sessions (Max)|<p>-</p>|`SNMP agent`|jnxJsSPUMonitoringMaxFlowSession.0<p>Update: 60</p>|
|Flow sessions (Current)|<p>-</p>|`SNMP agent`|jnxJsSPUMonitoringCurrentFlowSession.0<p>Update: 60</p>|
|{#SNMPVALUE} - Inbound discarded packets|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.13.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Inbound traffic|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.10.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Inbound errors|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.14.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Outbound traffic|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.16.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Outbound discarded packets|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.19.[{#SNMPINDEX}]<p>Update: 60</p>|
|{#SNMPVALUE} - Outbound errors|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.20.[{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Flow sessions (10% Available)|<p>>90% Reaching Device limits Actions: Review traffic patterns Look for sessions with high inactivity timeouts Review Device type</p>|high|
|Flow sessions (20% Available)|<p>80% -90 of Max PFE Sessions may be considered normal depending upon network traffic but requires investigation if increase is sudden Actions: Review traffic patterns Look for sessions with high inactivity timeouts Review Device type</p>|warning|
|High CPU temperature on {HOSTNAME} node 0|<p>-</p>|average|
|High CPU temperature on {HOSTNAME} node 1|<p>-</p>|average|
|Ping check|<p>The firewall device has stopped responding. This could indicate a failure and needs to be investigated.</p>|disaster|
|Red alarm on {HOSTNAME}|<p>-</p>|high|
|Yellow alarm on {HOSTNAME}|<p>-</p>|average|
|{HOSTNAME} Has just been restarted|<p>-</p>|average|
|{HOSTNAME} node 0 high PFE CPU usage|<p>>95% Device responsiveness for transit traffic is likely to be impacted including session buildup Actions: Review Traffic pattern Review PPS Review Session counts</p>|average|
|{HOSTNAME} node 0 high PFE memory usage|<p>>95% Transit traffic may be impacted due to inability for forwarding operations Actions: Review system logs Verify configuration for unused features that be removed Disable non needed ALGs</p>|average|
|{HOSTNAME} node 0 high RE CPU usage|<p>>95% Device responsiveness for self traffic is likely to be impacted Actions: Disable traceoptions Clean up storage Verify system processes</p>|average|
|{HOSTNAME} node 0 high RE memory usage|<p>>95% Device will begin active memory clean up attempts Actions: Verify routing table size Verify System Processes in use Review system logs</p>|average|
|{HOSTNAME} node 1 high PFE CPU usage|<p>>95% Device responsiveness for transit traffic is likely to be impacted including session buildup Actions: Review Traffic pattern Review PPS Review Session counts</p>|average|
|{HOSTNAME} node 1 high PFE memory usage|<p>>95% Transit traffic may be impacted due to inability for forwarding operations Actions: Review system logs Verify configuration for unused features that be removed Disable non needed ALGs</p>|average|
|{HOSTNAME} node 1 high RE CPU usage|<p>>95% Device responsiveness for self traffic is likely to be impacted Actions: Disable traceoptions Clean up storage Verify system processes</p>|average|
|{HOSTNAME} node 1 high RE memory usage|<p>>95% Device will begin active memory clean up attempts Actions: Verify routing table size Verify System Processes in use Review system logs</p>|average|
