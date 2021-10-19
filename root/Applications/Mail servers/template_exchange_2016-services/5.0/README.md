# Template Microsoft Exchange Server 2016 - Services

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
|{#SERVICE.NAME}|<p>-</p>|`Zabbix agent`|service_state<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Service Status Microsoft Exchange DAG Management|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDagMgmt]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Transport Submission|<p>-</p>|`Zabbix agent`|service_state[MSExchangeSubmission]<p>Update: 5m</p>|
|Service Status Microsoft Exchange POP3 Backend|<p>-</p>|`Zabbix agent`|service_state[MSExchangePOP3BE]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Diagnostics|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDiagnostics]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Transport|<p>-</p>|`Zabbix agent`|service_state[MSExchangeTransport]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Anti-spam update|<p>-</p>|`Zabbix agent`|service_state[MSExchangeAntispamUpdate]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Unified Messaging Call Router|<p>-</p>|`Zabbix agent`|service_state[MSExchangeUMCR]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Mailbox Replication|<p>-</p>|`Zabbix agent`|service_state[MSExchangeMailboxReplication]<p>Update: 5m</p>|
|Service Status Microsoft Exchange IMAP4|<p>-</p>|`Zabbix agent`|service_state[MSExchangeImap4]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Health Manager Recovery|<p>-</p>|`Zabbix agent`|service_state[MSExchangeHMRecovery]<p>Update: 1m</p>|
|Service Status Microsoft Exchange Notifications Broker|<p>-</p>|`Zabbix agent`|service_state[MSExchangeNotificationsBroker]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Active Directory Topology|<p>-</p>|`Zabbix agent`|service_state[MSExchangeADTopology]<p>Update: 5m</p>|
|Service Status Microsoft Exchange EdgeSync|<p>-</p>|`Zabbix agent`|service_state[MSExchangeEdgeSync]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Information Store|<p>-</p>|`Zabbix agent`|service_state[MSExchangeIS]<p>Update: 5m</p>|
|Service Status Microsoft Exchange POP3|<p>-</p>|`Zabbix agent`|service_state[MSExchangePop3]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Server Extension for Windows Server Backup|<p>-</p>|`Zabbix agent`|service_state[wsbexchange]<p>Update: 1m</p>|
|Service Status Microsoft Exchange IMAP4 Backend|<p>-</p>|`Zabbix agent`|service_state[MSExchangeIMAP4BE]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Mailbox Assistants|<p>-</p>|`Zabbix agent`|service_state[MSExchangeMailboxAssistants]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Compliance Audit|<p>-</p>|`Zabbix agent`|service_state[MSComplianceAudit]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Throttling|<p>-</p>|`Zabbix agent`|service_state[MSExchangeThrottling]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Replication|<p>-</p>|`Zabbix agent`|service_state[MSExchangeRepl]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Transport Delivery|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDelivery]<p>Update: 5m</p>|
|Service Status Microsoft Exchange RPC Client Access|<p>-</p>|`Zabbix agent`|service_state[MSExchangeRPC]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Health Manager|<p>-</p>|`Zabbix agent`|service_state[MSExchangeHM]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Service Host|<p>-</p>|`Zabbix agent`|service_state[MSExchangeServiceHost]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Unified Messaging|<p>-</p>|`Zabbix agent`|service_state[MSExchangeUM]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Compliance Service|<p>-</p>|`Zabbix agent`|service_state[MSExchangeCompliance]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Search|<p>-</p>|`Zabbix agent`|service_state[MSExchangeFastSearch]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Search Host Controller|<p>-</p>|`Zabbix agent`|service_state[HostControllerService]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Transport Log Search|<p>-</p>|`Zabbix agent`|service_state[MSExchangeTransportLogSearch]<p>Update: 5m</p>|
|Service Status Microsoft Exchange Frontend Transport|<p>-</p>|`Zabbix agent`|service_state[MSExchangeFrontEndTransport]<p>Update: 5m</p>|
|State of service "{#SERVICE.NAME}" ({#SERVICE.DISPLAYNAME})|<p>-</p>|`Zabbix agent`|service_state[{#SERVICE.NAME},state]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service: HostControllerService on {HOST.NAME}|<p>-</p>|high|
|Service: MSComplianceAudit on {HOST.NAME}|<p>-</p>|information|
|Service: MSExchangeADTopology on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeAntispamUpdate on {HOST.NAME}|<p>-</p>|warning|
|Service: MSExchangeCompliance on {HOST.NAME}|<p>-</p>|warning|
|Service: MSExchangeDagMgmt on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeDelivery on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeDiagnostics on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeEdgeSync on {HOST.NAME}|<p>-</p>|warning|
|Service: MSExchangeFastSearch on {HOST.NAME}|<p>-</p>|high|
|Service: MSExchangeFrontEndTransport on {HOST.NAME}|<p>-</p>|high|
|Service: MSExchangeHMRecovery on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeHM on {HOST.NAME}|<p>-</p>|high|
|Service: MSExchangeIMAP4BE on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeImap4 on {HOST.NAME}|<p>-</p>|high|
|Service: MSExchangeIS on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeMailboxAssistants on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeMailboxReplication on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeNotificationsBroker on {HOST.NAME}|<p>-</p>|warning|
|Service: MSExchangePOP3BE on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangePop3 on {HOST.NAME}|<p>-</p>|high|
|Service: MSExchangeRepl on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeRPC on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeServiceHost on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeSubmission on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeThrottling on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeTransportLogSearch on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeTransport on {HOST.NAME}|<p>-</p>|disaster|
|Service: MSExchangeUMCR on {HOST.NAME}|<p>-</p>|average|
|Service: MSExchangeUM on {HOST.NAME}|<p>-</p>|average|
|Service: wsbexchange on {HOST.NAME}|<p>-</p>|average|
|{#SERVICE.DISPLAYNAME} ({#SERVICE.NAME}) {#SERVICE.STATENAME} on {HOST.NAME} and be able to extract {#SERVICE.NAME} from it|<p>-</p>|not classified|
