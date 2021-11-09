# Microsoft Exchange Server 2019

## Description

## Overview Exchange 2019 template - Work in progress ,Updated on 10-April-2019 added perfmon monitoring, first batch Generated with: [https://xh-compiler.com](https://xh-compiler.com/) ## Author eXtremeHosting (https://xh-compiler.com/) 

## Overview

Exchange 2019 template - Work in progress  
,Updated on 10-April-2019 added perfmon monitoring, first batch  
  
Generated with: [https://xh-compiler.com](https://xh-compiler.com/)



## Author

eXtremeHosting  (https://xh-compiler.com/)

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Number of timeouts in the last hour for external connections|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Number of timeouts in the last hour for external connections"]<p>Update: 1s</p>|
|SMTP Receive Connections Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SMTPReceive(_total)\Connections Total"]<p>Update: 120s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average inbound messages/connection
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average inbound messages/connection
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Health Manager|<p>-</p>|`Zabbix agent`|service_state[MSExchangeHM]<p>Update: 30</p>|
|Service Status Microsoft Exchange Search Indexer|<p>-</p>|`Zabbix agent`|service_state[MSExchangeFastSearch]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average SMTP receive session duration (sec)\ over last 10 minutes
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average SMTP receive session duration (sec)\ over last 10 minutes
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failure responses sent in the last hour
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failure responses sent in the last hour
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received/sec
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received/sec
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received/sec"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received/sec"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received Total"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Anti-spam update|<p>-</p>|`Zabbix agent`|service_state[MSExchangeAntispamUpdate]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received Total
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Current
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Current
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec for inbound proxy messages
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec for inbound proxy messages
"]<p>Update: 1s</p>|
|Queues Items Queued for Delivery Per Second|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport Queues(normal priority)\Items Queued for Delivery Per Second"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\InboundRecipients accepted Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\InboundRecipients accepted Total"]<p>Update: 1s</p>|
|SmtpErrors TLS errors last hour (outbound proxy)|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SmtpErrors(_total)\TLS errors last hour (outbound proxy)"]<p>Update: 60s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failures in the last hour|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failures in the last hour"]<p>Update: 1s</p>|
|Queues(_total) Items Completed Delivery Per Second"|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport Queues(_total)\Items Completed Delivery Per Second"]<p>Update: 30s</p>|
|SMTPReceive Message Bytes Received Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SMTPReceive(_total)\Message Bytes Received Total"]<p>Update: 190s</p>|
|Service Status Microsoft Exchange Mailbox Replication|<p>-</p>|`Zabbix agent`|service_state[MSExchangeMailboxReplication]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received/sec"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average inbound messages/connection|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average inbound messages/connection"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failures in the last hour
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failures in the last hour
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Transport Log Search|<p>-</p>|`Zabbix agent`|service_state[MSExchangeTransportLogSearch]<p>Update: 30</p>|
|SMTP  Message Bytes Received/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SMTPReceive(_total)\Message Bytes Received/sec"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average recipients/inbound message
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average recipients/inbound message
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH XOAUTH2 AD lookups last hour|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH XOAUTH2 AD lookups last hour"]<p>Update: 1s</p>|
|SMTP Messages Received/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SMTPReceive(_total)\Messages Received/sec"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Current
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Current
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Health Manager Recovery|<p>-</p>|`Zabbix agent`|service_state[MSExchangeHMRecovery]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received/sec
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received/sec
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failure responses sent in the last hour|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Client certificate validation failure responses sent in the last hour"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/connection|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/connection"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/inbound message
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/inbound message
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for internal connections|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for internal connections"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH OLCCS AD lookups last hour|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH OLCCS AD lookups last hour"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections By Agents
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections By Agents
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for internal connections
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for internal connections
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received Total
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Information Store|<p>-</p>|`Zabbix agent`|service_state[MSExchangeIS]<p>Update: 30</p>|
|Service Status Microsoft Exchange Unified Messaging|<p>-</p>|`Zabbix agent`|service_state[MSExchangeUM]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections by Agents/second
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections by Agents/second
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Total
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\InboundRecipients accepted Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\InboundRecipients accepted Total
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average SMTP receive session duration (sec)\ over last 10 minutes|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average SMTP receive session duration (sec)\ over last 10 minutes"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange RPC Client Access|<p>-</p>|`Zabbix agent`|service_state[MSExchangeRPC]<p>Update: 30</p>|
|Service Status Microsoft Exchange Search Host Controller|<p>-</p>|`Zabbix agent`|service_state[HostControllerService]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/inbound message|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/inbound message"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Compliance Service|<p>-</p>|`Zabbix agent`|service_state[MSExchangeCompliance]<p>Update: 30</p>|
|SMTP Send Connections Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SmtpSend(_total)\Connections Total"]<p>Update: 190s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received Total"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/connection
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average bytes/connection
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Total
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Throttling|<p>-</p>|`Zabbix agent`|service_state[MSExchangeThrottling]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\InboundMessages Refused for Size|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\InboundMessages Refused for Size"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received Total
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange POP3|<p>-</p>|`Zabbix agent`|service_state[MSExchangePop3]<p>Update: 30</p>|
|Service Status Microsoft Exchange Mailbox Assistants|<p>-</p>|`Zabbix agent`|service_state[MSExchangeMailboxAssistants]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received/sec
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Consumer Messages Received/sec
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange EdgeSync|<p>-</p>|`Zabbix agent`|service_state[MSExchangeEdgeSync]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH XOAUTH2 AD lookups last hour
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH XOAUTH2 AD lookups last hour
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Diagnostics|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDiagnostics]<p>Update: 30</p>|
|Service Status Microsoft Exchange Service Host|<p>-</p>|`Zabbix agent`|service_state[MSExchangeServiceHost]<p>Update: 30</p>|
|Service Status Microsoft Exchange IMAP4|<p>-</p>|`Zabbix agent`|service_state[MSExchangeImap4]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Number of timeouts in the last hour for external connections
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Number of timeouts in the last hour for external connections
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Replication|<p>-</p>|`Zabbix agent`|service_state[MSExchangeRepl]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for external connections
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for external connections
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Total"]<p>Update: 1s</p>|
|SMTP Messages Send /sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SmtpSend(_total)\Messages Sent/sec"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for external connections|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Number of idle timeouts in the last hour for external connections"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Average recipients/inbound message|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Average recipients/inbound message"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Active Directory Topology|<p>-</p>|`Zabbix agent`|service_state[MSExchangeADTopology]<p>Update: 30</p>|
|Service Status Microsoft Exchange DAG Management|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDagMgmt]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Transport Delivery|<p>-</p>|`Zabbix agent`|service_state[MSExchangeDelivery]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Current|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Current"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received/sec"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Transport Submission|<p>-</p>|`Zabbix agent`|service_state[MSExchangeSubmission]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Total"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH OLCCS AD lookups last hour
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH OLCCS AD lookups last hour
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Bytes Received Total"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections By Agents|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections By Agents"]<p>Update: 1s</p>|
|SMTP Messages Received Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SMTPReceive(_total)\Messages Received Total"]<p>Update: 120s</p>|
|Queues Messages Completed Delivery Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport Queues(normal priority)\Messages Completed Delivery Total"]<p>Update: 190s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\InboundMessages Refused for Size
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\InboundMessages Refused for Size
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec"]<p>Update: 1s</p>|
|SmtpErrors TLS errors last hour (send)|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SmtpErrors(_total)\TLS errors last hour (send)"]<p>Update: 60s</p>|
|Queues(_total) Messages Submitted Per Second|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport Queues(_total)\Messages Submitted Per Second"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections by Agents/second|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Disconnections by Agents/second"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Notifications Broker|<p>-</p>|`Zabbix agent`|service_state[MSExchangeNotificationsBroker]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received/sec
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received/sec
"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec for inbound proxy messages|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Connections Created/sec for inbound proxy messages"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH LOGIN AD lookups last hour
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH LOGIN AD lookups last hour
"]<p>Update: 1s</p>|
|SmtpErrors TLS errors last hour (receive)|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeTransport SmtpErrors(_total)\TLS errors last hour (receive)"]<p>Update: 60s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received Total|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Messages Received Total"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Frontend Transport|<p>-</p>|`Zabbix agent`|service_state[MSExchangeFrontEndTransport]<p>Update: 30</p>|
|Service Status Microsoft Exchange Transport|<p>-</p>|`Zabbix agent`|service_state[MSExchangeTransport]<p>Update: 30</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Current|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Connections Current"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH LOGIN AD lookups last hour|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Failed Authenticated Sender SMTP AUTH LOGIN AD lookups last hour"]<p>Update: 1s</p>|
|MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received Total
|<p>-</p>|`Zabbix agent`|perf_counter["\MSExchangeFrontEndTransport SmtpReceive(_total)\Inbound Message Bytes Received Total
"]<p>Update: 1s</p>|
|Service Status Microsoft Exchange Unified Messaging Call Router|<p>-</p>|`Zabbix agent`|service_state[MSExchangeUMCR]<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

