# Template NetScaler

## Description

Same as v2.0 with valuemap and application prototype added.

## Overview

Adapted for Zabbix 3 version by [dav3860](owner/tatapoum). Valuemaps included.

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Vservers|<p>-</p>|`SNMP agent`|snmp.vservers.discovery<p>Update: 1m</p>|
|Interfaces|<p>-</p>|`SNMP agent`|snmp.interfaces.discovery<p>Update: 1m</p>|
|Services|<p>-</p>|`SNMP agent`|snmp.services.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|haCurState|<p>State of the node, based on its health, in a high availability setup. Possible values are: UP - Indicates that the node is accessible and can function as either a primary or secondary node. DISABLED - Indicates that the high availability status of the node has been manually disabled. Synchronization and propagation cannot take place between the peer nodes. INIT - Indicates that the node is in the process of becoming part of the high availability configuration. PARTIALFAIL - Indicates that one of the high availability monitored interfaces has failed because of a card or link failure. This state triggers a failover. COMPLETEFAIL - Indicates that all the interfaces of the node are unusable, because the interfaces on which high availability monitoring is enabled are not connected or are manually disabled. This state triggers a failover. DUMB - Indicates that the node is in listening mode. It does not participate in high availability transitions or transfer configuration from the peer node. This is a configured value, not a statistic. PARTIALFAILSSL - Indicates that the SSL card has failed. This state triggers a failover. ROUTEMONITORFAIL - Indicates that the route monitor has failed. This state triggers a failover.</p>|`SNMP agent`|haCurState<p>Update: 15s</p>|
|haCurStatus|<p>Indicates whether a NetScaler is set up for high availability. Possible values are YES and NO. If the value is NO, the high availability statistics below are invalid.</p>|`SNMP agent`|haCurStatus<p>Update: 30s</p>|
|haErrSyncFailure|<p>Number of times the configuration of the primary and secondary nodes failed to synchronize since that last transition. A synchronization failure results in mismatched configuration. It can be caused by a mismatch in the Remote Procedural Call (RPC) password on the two nodes forming the high availability pair.</p>|`SNMP agent`|haErrSyncFailure<p>Update: 15s</p>|
|haLastMasterStateTransitionReason|<p>The reason for the last master state transition. This gives the conditions under which this node assumed the current state. The current state is available at the oid sysHighAvailabilityMode.0</p>|`SNMP agent`|haLastMasterStateTransitionReason<p>Update: 15s</p>|
|haPeerState|<p>This represents the state of the failover peer NetScaler whether Primary or Secondary</p>|`SNMP agent`|haPeerState<p>Update: 15s</p>|
|haTimeofLastStateTransition|<p>This represents the time since the NetScaler underwent a state change from primary to secondary or vice-versa</p>|`SNMP agent`|haTimeofLastStateTransition<p>Update: 15s</p>|
|httpTot11Requests|<p>-</p>|`SNMP agent`|httpTot11Requests<p>Update: 1m</p>|
|httpTot11Responses|<p>-</p>|`SNMP agent`|httpTot11Responses<p>Update: 1m</p>|
|httpTotRequests|<p>-</p>|`SNMP agent`|httpTotRequests<p>Update: 1m</p>|
|memSizeMB|<p>-</p>|`SNMP agent`|memSizeMB<p>Update: 1h</p>|
|numCPUs|<p>-</p>|`SNMP agent`|numCPUs<p>Update: 1h</p>|
|resCpuUsage|<p>-</p>|`SNMP agent`|resCpuUsage<p>Update: 60s</p>|
|resMemUsage|<p>-</p>|`SNMP agent`|resMemUsage<p>Update: 1m</p>|
|SNMP authenticationFailure trap|<p>-</p>|`SNMP trap`|snmptrap[authenticationFailure]<p>Update: 0</p>|
|Generic SNMP Trap|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|UpTime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 1m</p>|
|tcpActiveServerConn|<p>Connections to a server currently responding to requests.</p>|`SNMP agent`|tcpActiveServerConn<p>Update: 1m</p>|
|Vserver {#SNMPVALUE} Client Connections (LLD)|<p>-</p>|`SNMP agent`|vsvr.cl_conn.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} Health (LLD)|<p>-</p>|`SNMP agent`|vsvr.health.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} Server Connections (LLD)|<p>-</p>|`SNMP agent`|vsvr.sr_conn.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} State (LLD)|<p>-</p>|`SNMP agent`|vsvr.state.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} Total Clients (LLD)|<p>The total number of established client connections.</p>|`SNMP agent`|vsvr.TotalClients.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} Total Servers (LLD)|<p>The total number of established server connections.</p>|`SNMP agent`|vsvr.TotalServers.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} vsvrCurServicesDown (LLD)|<p>-</p>|`SNMP agent`|vsvr.vsvrCurServicesDown.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} vsvrCurServicesOutOfSvc (LLD)|<p>-</p>|`SNMP agent`|vsvr.vsvrCurServicesOutOfSvc.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} vsvrCurServicesTransToOutOfSvc (LLD)|<p>-</p>|`SNMP agent`|vsvr.vsvrCurServicesTransToOutOfSvc.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} vsvrCurServicesUnKnown (LLD)|<p>-</p>|`SNMP agent`|vsvr.vsvrCurServicesUnKnown.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} vsvrCurServicesUp (LLD)|<p>-</p>|`SNMP agent`|vsvr.vsvrCurServicesUp.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} RxBytesRate (LLD)|<p>The total number of established client connections.</p>|`SNMP agent`|vsvr.vsvrRxBytesRate.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Vserver {#SNMPVALUE} TxBytesRate (LLD)|<p>This represents the response rate in bytes per second for this service/vserver.</p>|`SNMP agent`|vsvr.vsvrTxBytesRate.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Interface {#SNMPVALUE} received bytes (LLD)|<p>-</p>|`SNMP agent`|r_bytes.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Interface {#SNMPVALUE} received packets (LLD)|<p>-</p>|`SNMP agent`|r_pks.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Interface {#SNMPVALUE} type (LLD)|<p>-</p>|`SNMP agent`|type.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Interface {#SNMPVALUE} transmitted bytes (LLD)|<p>-</p>|`SNMP agent`|t_bytes.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Interface {#SNMPVALUE} transmitted packets (LLD)|<p>-</p>|`SNMP agent`|t_pks.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Act conn (LLD)|<p>-</p>|`SNMP agent`|service.actconn.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Est conn (LLD)|<p>-</p>|`SNMP agent`|service.estconn.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} IP (LLD)|<p>-</p>|`SNMP agent`|service.ip.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Service {#SNMPVALUE} port (LLD)|<p>-</p>|`SNMP agent`|service.port.[{#SNMPVALUE}]<p>Update: 1h</p>|
|Service {#SNMPVALUE} Total req (LLD)|<p>-</p>|`SNMP agent`|service.totreq.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Total req bytes (LLD)|<p>-</p>|`SNMP agent`|service.totreqb.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Total resp (LLD)|<p>-</p>|`SNMP agent`|service.totresp.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Total resp bytes (LLD)|<p>-</p>|`SNMP agent`|service.totrespb.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Total recvd pkts (LLD)|<p>-</p>|`SNMP agent`|service.totresvdpkts.[{#SNMPVALUE}]<p>Update: 15s</p>|
|Service {#SNMPVALUE} Total sent pkts (LLD)|<p>-</p>|`SNMP agent`|service.totrsentpkts.[{#SNMPVALUE}]<p>Update: 15s</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|vServer {#SNMPVALUE} services are degraded: {ITEM.VALUE1}|<p>Le vserver a des services associés mais tous ne répondent pas.</p>|<p>**Expression**: {Template NetScaler:vsvr.health.[{#SNMPVALUE}].last()}<100 and {Template NetScaler:vsvr.health.[{#SNMPVALUE}].last()}>0 and ({Template NetScaler:vsvr.vsvrCurServicesDown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesTransToOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUnKnown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUp.[{#SNMPVALUE}].last()})>0</p><p>**Recovery expression**: </p>|average|
|vServer {#SNMPVALUE} services are down|<p>Tous les services associés au vserver sont inactifs.</p>|<p>**Expression**: {Template NetScaler:vsvr.health.[{#SNMPVALUE}].last()}=0 and ({Template NetScaler:vsvr.vsvrCurServicesDown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesTransToOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUnKnown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUp.[{#SNMPVALUE}].last()})>0</p><p>**Recovery expression**: </p>|high|
|vServer {#SNMPVALUE} state: {ITEM.VALUE}|<p>L'état du vserver n'est pas "up".</p>|<p>**Expression**: {Template NetScaler:vsvr.state.[{#SNMPVALUE}].last()}<>7</p><p>**Recovery expression**: </p>|high|
|vServer {#SNMPVALUE} services are degraded: {ITEM.VALUE1} (LLD)|<p>Le vserver a des services associés mais tous ne répondent pas.</p>|<p>**Expression**: {Template NetScaler:vsvr.health.[{#SNMPVALUE}].last()}<100 and {Template NetScaler:vsvr.health.[{#SNMPVALUE}].last()}>0 and ({Template NetScaler:vsvr.vsvrCurServicesDown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesTransToOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUnKnown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUp.[{#SNMPVALUE}].last()})>0</p><p>**Recovery expression**: </p>|average|
|vServer {#SNMPVALUE} services are down (LLD)|<p>Tous les services associés au vserver sont inactifs.</p>|<p>**Expression**: {Template NetScaler:vsvr.health.[{#SNMPVALUE}].last()}=0 and ({Template NetScaler:vsvr.vsvrCurServicesDown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesTransToOutOfSvc.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUnKnown.[{#SNMPVALUE}].last()} + {Template NetScaler:vsvr.vsvrCurServicesUp.[{#SNMPVALUE}].last()})>0</p><p>**Recovery expression**: </p>|high|
|vServer {#SNMPVALUE} state: {ITEM.VALUE} (LLD)|<p>L'état du vserver n'est pas "up".</p>|<p>**Expression**: {Template NetScaler:vsvr.state.[{#SNMPVALUE}].last()}<>7</p><p>**Recovery expression**: </p>|high|
