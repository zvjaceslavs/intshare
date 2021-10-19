# _Template Nevis

## Overview

Template for monitoring Nevis Appliances (nevis mib only).


Not all of the items are in there but the most for admin, proxy and auth have been added with also some triggers.


The template is built with discovery Rules only.

## Author

Stefan Müller

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|nevisProxyInstance Discovery|<p>-</p>|`SNMP agent`|nevisInstanceProxy.discovery<p>Update: 1m</p>|
|nevisAdminInstance Discovery|<p>-</p>|`SNMP agent`|nevisInstanceAdmin.discovery<p>Update: 1m</p>|
|nevisApplianceInstance Discovery|<p>-</p>|`SNMP agent`|nevisInstanceAppliance.discovery<p>Update: 1m</p>|
|nevisAuthInstance Discovery|<p>-</p>|`SNMP agent`|nevisInstanceAuth.discovery<p>Update: 1m</p>|
|nevisKeyboxInstance Discovery|<p>-</p>|`SNMP agent`|nevisInstanceKeybox.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|#{#SNMPINDEX}: nevisinstanceConnectionsLimit (LLD)|<p>Number of the configured MaxClients value.</p>|`SNMP agent`|nevisinstanceConnectionsLimit[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceResponse2xx (LLD)|<p>Number of requests per minute with the response status code 200-299 (optional).</p>|`SNMP agent`|nevisinstanceProxyResponse2xx[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyVersion (LLD)|<p>The software version information.</p>|`SNMP agent`|nevisinstanceProxyVersion[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyStatus (LLD)|<p>Indicates if the instance has been started (=1) or stopped (=0).</p>|`SNMP agent`|nevisinstanceProxyStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxySessions (LLD)|<p>Number of busy sessions of the observed instance (optional).</p>|`SNMP agent`|nevisinstanceProxySessions[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxySessionsCreated01 (LLD)|<p>Number of sessions created per minute (optional).</p>|`SNMP agent`|nevisinstanceProxySC01[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceResponseTime (LLD)|<p>Average request duration (optional).</p>|`SNMP agent`|nevisinstanceProxyResponseTime[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceResponse5xx (LLD)|<p>Number of requests per minute with the response status code 500-599 (optional).</p>|`SNMP agent`|nevisinstanceProxyResponse5xx[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceResponse4xx (LLD)|<p>Number of requests per minute with the response status code 400-499 (optional).</p>|`SNMP agent`|nevisinstanceProxyResponse4xx[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceResponse3xx (LLD)|<p>Number of requests per minute with the response status code 300-399 (optional).</p>|`SNMP agent`|nevisinstanceProxyResponse3xx[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceResponse1xx (LLD)|<p>Number of requests per minute with the response status code 100-199 (optional).</p>|`SNMP agent`|nevisinstanceProxyResponse1xx[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyAuthentication05 (LLD)|<p>Number of successfull authentication process per minute (optional).</p>|`SNMP agent`|nevisinstanceProxyAU05[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyReqPerSec (LLD)|<p>Number of requests per second processed by the instnce (optional).</p>|`SNMP agent`|nevisinstanceProxyReqPerSec[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyName (LLD)|<p>-</p>|`SNMP agent`|nevisinstanceProxyName[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyMemory (LLD)|<p>Memory consumption (virtual memory size) of the working nevisProxy process in kbytes.</p>|`SNMP agent`|nevisinstanceProxyMemory[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceFailoverStatus (LLD)|<p>Indicates instance status (1=okay, 0=failure) for a failover cluster.</p>|`SNMP agent`|nevisinstanceProxyFOStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyErrors (LLD)|<p>Number of error messages within the last 5 minutes which are currently within the navajo.log and apache.log files (Linux only).</p>|`SNMP agent`|nevisinstanceProxyErrors[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyCPU (LLD)|<p>CPU utilization (ps -o pcpu) of the working nevisProxy process in percent.</p>|`SNMP agent`|nevisinstanceProxyCPU[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyCPU1s (LLD)|<p>Current CPU utilization (top/prstat) of the working nevisProxy process in percent.</p>|`SNMP agent`|nevisinstanceProxyCPU1s[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceProxyConenctions (LLD)|<p>Number of establish TCP connections to the observed instance.</p>|`SNMP agent`|nevisinstanceProxyConnections[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceBytesPerSec (LLD)|<p>Bytes per second downloaded via this instance (optional).</p>|`SNMP agent`|nevisinstanceProxyBytesPerSec[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceSessionsLimit (LLD)|<p>Number of maxEntries configured for the local HTTP session cache.</p>|`SNMP agent`|nevisinstanceSessionsLimit[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceAdminJVMKBHeapUsage (LLD)|<p>Usage of the heap within the Java virtual machine in kbytes.</p>|`SNMP agent`|nevisinstanceAdminJVMKBHeapUsage[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAdminName (LLD)|<p>The instance name we're counting/checking on.</p>|`SNMP agent`|nevisinstanceAdminName[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceAdminStatus (LLD)|<p>Indicates if the instance has been started (=1) or stopped (=0).</p>|`SNMP agent`|nevisinstanceAdminStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceCicapDStatus (LLD)|<p>Status of the c-icap daemon.</p>|`SNMP agent`|nevisinstanceApplianceCicapDStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceLogstashStatus (LLD)|<p>Indicates if the logstash process is running (1).</p>|`SNMP agent`|nevisinstanceApplianceLogstashStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceMySqlSlaveStatus (LLD)|<p>The slave status (replication).</p>|`SNMP agent`|nevisinstanceApplianceMySqlSlaveStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceMySqlNodes (LLD)|<p>The number of running mysqld processes.</p>|`SNMP agent`|nevisinstanceApplianceMySqlNodes[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceMySqlClusterNDBMGRNodes (LLD)|<p>The number of running ndb_mgmd processes.</p>|`SNMP agent`|nevisinstanceApplianceMySqlClusterNDBMGRNodes[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceMySqlClusterNDBFreePages (LLD)|<p>Free data pages of the local NDB node.</p>|`SNMP agent`|nevisinstanceApplianceMySqlClusterNDBFreePages[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceMySqlClusterNDBCNodes (LLD)|<p>The number of running ndbmtd processes.</p>|`SNMP agent`|nevisinstanceApplianceMySqlClusterNDBCNodes[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceMySqlClusterConnectedNodes (LLD)|<p>The number of connected MySQL cluster nodes.</p>|`SNMP agent`|nevisinstanceApplianceMySqlClusterConnectedNodes[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceLogstashForwarderStatus (LLD)|<p>Indicates if the logstash forwarder process is running (1).</p>|`SNMP agent`|nevisinstanceApplianceLogstashForwarderStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceCouchbaseStatus (LLD)|<p>Number of running couchbase server processes.</p>|`SNMP agent`|nevisinstanceApplianceCouchbaseStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceLoad (LLD)|<p>System load</p>|`SNMP agent`|nevisinstanceApplianceLoad[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceFreshClamStatus (LLD)|<p>Freshclam status.</p>|`SNMP agent`|nevisinstanceApplianceFreshClamStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceFreeSwap (LLD)|<p>Free swap memory in mbytes.</p>|`SNMP agent`|nevisinstanceApplianceFreeSwap[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceFreeDiskSpace (LLD)|<p>Free disk space in kbytes.</p>|`SNMP agent`|nevisinstanceApplianceFreeDiskSpace[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceElasticsearchStatus (LLD)|<p>Indicates if the elasticsearch process is running (1).</p>|`SNMP agent`|nevisinstanceApplianceElasticsearchStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceDiskDeviceOnline (LLD)|<p>The number of disk devices which are online (used to monitor disk mirroring).</p>|`SNMP agent`|nevisinstanceApplianceDiskDeviceOnline[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceApplianceVersion (LLD)|<p>The software version information.</p>|`SNMP agent`|nevisinstanceApplianceVersion[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthCPU (LLD)|<p>CPU utilization (ps -o pcpu) of the working nevisAuth process in percent.</p>|`SNMP agent`|nevisinstanceAuthCPU[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthErrors (LLD)|<p>Number of error messages within the last 5 minutes which are currently within the esauth4sv.log file (Linux only).</p>|`SNMP agent`|nevisinstanceAuthErrors[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthJVMKBHeapLimit (LLD)|<p>Configured max. heap (Xmx) in kbytes.</p>|`SNMP agent`|nevisinstanceAuthJVMKBHeapLimit[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthJVMKBHeapUsage (LLD)|<p>Usage of the heap within the Java virtual machine in kbytes.</p>|`SNMP agent`|nevisinstanceAuthJVMKBHeapUsage[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthMemory (LLD)|<p>Memory consumption (virtual memory size) of the working nevisAuth process in kbytes.</p>|`SNMP agent`|nevisinstanceAuthMemory[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthName (LLD)|<p>The instance name we're counting/checking on.</p>|`SNMP agent`|nevisinstanceAuthName[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthStatus (LLD)|<p>Indicates if the instance has been started (=1) or stopped (=0).</p>|`SNMP agent`|nevisinstanceAuthStatus[{#SNMPINDEX}]<p>Update: 1m</p>|
|#{#SNMPINDEX}: nevisinstanceAuthVersion (LLD)|<p>The software version information.</p>|`SNMP agent`|nevisinstanceAuthVersion[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceKeyboxKeystoreExp (LLD)|<p>Number of own certificates expiring within 30 days</p>|`SNMP agent`|nevisinstanceKeyboxKeystoreExp[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceKeyboxName (LLD)|<p>The instance name we're counting/checking on.</p>|`SNMP agent`|nevisinstanceKeyboxName[{#SNMPINDEX}]<p>Update: 5m</p>|
|#{#SNMPINDEX}: nevisinstanceKeyboxTruststoreExp (LLD)|<p>Number of trusted certificates expiring within 30 days.</p>|`SNMP agent`|nevisinstanceKeyboxTruststoreExp[{#SNMPINDEX}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|nevisInstanceAdminStatus|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceAdminStatus[{#SNMPINDEX}].min(5)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceAuthStatus|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceAuthStatus[{#SNMPINDEX}].min(5)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceFailoverStatus|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceProxyFOStatus[{#SNMPINDEX}].min(5)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceProxyStatus|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceProxyStatus[{#SNMPINDEX}].min(5m)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceFailoverStatus (LLD)|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceProxyFOStatus[{#SNMPINDEX}].min(5)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceProxyStatus (LLD)|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceProxyStatus[{#SNMPINDEX}].min(5m)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceAdminStatus (LLD)|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceAdminStatus[{#SNMPINDEX}].min(5)}=0</p><p>**Recovery expression**: </p>|average|
|nevisInstanceAuthStatus (LLD)|<p>-</p>|<p>**Expression**: {_Template Nevis:nevisinstanceAuthStatus[{#SNMPINDEX}].min(5)}=0</p><p>**Recovery expression**: </p>|average|
