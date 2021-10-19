# Template Microsoft Exchange Server 2016

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Service Status Microsoft Exchange Notifications Broker|<p>-</p>|`Zabbix agent`|service_state[MSExchangeNotificationsBroker]<p>Update: 30</p>|
|Service Status Microsoft Exchange Compliance Service|<p>-</p>|`Zabbix agent`|service_state[MSExchangeCompliance]<p>Update: 30</p>|
|Service Status Microsoft Exchange RPC Client Access|<p>-</p>|`Zabbix agent`|service_state[MSExchangeRPC]<p>Update: 30</p>|
|Service Status Microsoft Exchange Active Directory Topology|<p>-</p>|`Zabbix agent`|service_state[MSExchangeADTopology]<p>Update: 30</p>|
|Service Status Microsoft Exchange Information Store|<p>-</p>|`Zabbix agent`|service_state[MSExchangeIS]<p>Update: 30</p>|
|Service Status Microsoft Exchange Transport Log Search|<p>-</p>|`Zabbix agent`|service_state[MSExchangeTransportLogSearch]<p>Update: 30</p>|
|Service Status Microsoft Exchange Health Manager|<p>-</p>|`Zabbix agent`|service_state[MSExchangeHM]<p>Update: 30</p>|
|Service Status Microsoft Exchange Transport Delivery|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDelivery]<p>Update: 30</p>|
|Service Status Microsoft Exchange EdgeSync|<p>-</p>|`Zabbix agent`|service_state[MSExchangeEdgeSync]<p>Update: 30</p>|
|Service Status Microsoft Exchange Anti-spam update|<p>-</p>|`Zabbix agent`|service_state[MSExchangeAntispamUpdate]<p>Update: 30</p>|
|Service Status Microsoft Exchange Transport Submission|<p>-</p>|`Zabbix agent`|service_state[MSExchangeSubmission]<p>Update: 30</p>|
|Service Status Microsoft Exchange Replication|<p>-</p>|`Zabbix agent`|service_state[MSExchangeRepl]<p>Update: 30</p>|
|Service Status Microsoft Exchange DAG Management|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDagMgmt]<p>Update: 30</p>|
|Service Status Microsoft Exchange Search Host Controller|<p>-</p>|`Zabbix agent`|service_state[HostControllerService]<p>Update: 30</p>|
|Service Status Microsoft Exchange Unified Messaging Call Router|<p>-</p>|`Zabbix agent`|service_state[MSExchangeUMCR]<p>Update: 30</p>|
|Service Status Microsoft Exchange Throttling|<p>-</p>|`Zabbix agent`|service_state[MSExchangeThrottling]<p>Update: 30</p>|
|Service Status Microsoft Exchange Transport|<p>-</p>|`Zabbix agent`|service_state[MSExchangeTransport]<p>Update: 30</p>|
|Service Status Microsoft Exchange Unified Messaging|<p>-</p>|`Zabbix agent`|service_state[MSExchangeUM]<p>Update: 30</p>|
|Service Status Microsoft Exchange IMAP4|<p>-</p>|`Zabbix agent`|service_state[MSExchangeImap4]<p>Update: 30</p>|
|Service Status Microsoft Exchange Diagnostics|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDiagnostics]<p>Update: 30</p>|
|Service Status Microsoft Exchange Search Indexer|<p>-</p>|`Zabbix agent`|service_state[MSExchangeFastSearch]<p>Update: 30</p>|
|Service Status Microsoft Exchange Mailbox Replication|<p>-</p>|`Zabbix agent`|service_state[MSExchangeMailboxReplication]<p>Update: 30</p>|
|Service Status Microsoft Exchange Frontend Transport|<p>-</p>|`Zabbix agent`|service_state[MSExchangeFrontEndTransport]<p>Update: 30</p>|
|Service Status Microsoft Exchange Mailbox Assistants|<p>-</p>|`Zabbix agent`|service_state[MSExchangeMailboxAssistants]<p>Update: 30</p>|
|Service Status Microsoft Exchange Service Host|<p>-</p>|`Zabbix agent`|service_state[MSExchangeServiceHost]<p>Update: 30</p>|
|Service Status Microsoft Exchange Health Manager Recovery|<p>-</p>|`Zabbix agent`|service_state[MSExchangeHMRecovery]<p>Update: 30</p>|
|Service Status Microsoft Exchange POP3|<p>-</p>|`Zabbix agent`|service_state[MSExchangePop3]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Microsoft Exchange Active Directory Topology Service Stopped|<p>-</p>|average|
|Microsoft Exchange Anti-spam Update Service Service Stopped|<p>-</p>|average|
|Microsoft Exchange Compliance Service Service Stopped|<p>-</p>|average|
|Microsoft Exchange DAG Management Service Stopped|<p>-</p>|average|
|Microsoft Exchange Diagnostics Service Stopped|<p>-</p>|average|
|Microsoft Exchange Edge Sync Service Stopped|<p>-</p>|average|
|Microsoft Exchange FrontEnd Transport Delivery Service Stopped|<p>-</p>|average|
|Microsoft Exchange Health Manager Recovery Service Stopped|<p>-</p>|average|
|Microsoft Exchange Health Manager Service Stopped|<p>-</p>|average|
|Microsoft Exchange IMAP4 Service Stopped|<p>-</p>|average|
|Microsoft Exchange Information Store Service Stopped|<p>-</p>|average|
|Microsoft Exchange Mailbox Assistants Service Stopped|<p>-</p>|average|
|Microsoft Exchange Mailbox Replication Service Stopped|<p>-</p>|average|
|Microsoft Exchange Notifications Broker Service Stopped|<p>-</p>|average|
|Microsoft Exchange POP3 Service Stopped|<p>-</p>|average|
|Microsoft Exchange Replication Service Stopped|<p>-</p>|average|
|Microsoft Exchange RPC Client Access Service Stopped|<p>-</p>|average|
|Microsoft Exchange Search Host Controller Service Stopped|<p>-</p>|average|
|Microsoft Exchange Search Indexer Service Stopped|<p>-</p>|average|
|Microsoft Exchange Service Host Service Stopped|<p>-</p>|average|
|Microsoft Exchange Throttling Service Stopped|<p>-</p>|average|
|Microsoft Exchange Transport Delivery Service Stopped|<p>-</p>|average|
|Microsoft Exchange Transport Log Search Service Stopped|<p>-</p>|average|
|Microsoft Exchange Transport Service Stopped|<p>-</p>|average|
|Microsoft Exchange Transport Submission Service Stopped|<p>-</p>|average|
|Microsoft Exchange Unified Messaging Call Router Service Stopped|<p>-</p>|average|
|Microsoft Exchange Unified Messaging Service Stopped|<p>-</p>|average|
