# Template App Axigen-Services

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
|POP3 response time|<p>-</p>|`Simple check`|net.tcp.service.perf[pop]<p>Update: 60</p>|
|SMTP-IN authenticated|<p>-</p>|`SNMP agent`|SmtpInAuthenticated<p>Update: 60</p>|
|Queue size|<p>-</p>|`SNMP agent`|QueueSize<p>Update: 60</p>|
|SMTP-IN accepted|<p>-</p>|`SNMP agent`|SmtpInAccepted<p>Update: 60</p>|
|WebAdmin service is running|<p>-</p>|`Zabbix agent`|net.tcp.service[tcp,,9000]<p>Update: 60</p>|
|CLI service is running|<p>-</p>|`Zabbix agent`|net.tcp.service[tcp,,7000]<p>Update: 60</p>|
|SMTP response time|<p>-</p>|`Simple check`|net.tcp.service.perf[smtp]<p>Update: 60</p>|
|SMTP-IN connections|<p>-</p>|`SNMP agent`|SmtpInConnections<p>Update: 60</p>|
|SMTP-IN rejected|<p>-</p>|`SNMP agent`|SmtpInRejected<p>Update: 60</p>|
|SMTP-IN failed authentications|<p>-</p>|`SNMP agent`|SmtpInFailedAuthentications<p>Update: 60</p>|
|IMAP response time|<p>-</p>|`Simple check`|net.tcp.service.perf[imap]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|IMAP service is down on {HOST.NAME}|<p>-</p>|high|
|IMAP service low performance on {HOST.NAME}|<p>-</p>|average|
|POP3 service is down on {HOST.NAME}|<p>-</p>|high|
|POP3 service low performance on {HOST.NAME}|<p>-</p>|average|
|SMTP service is down on {HOST.NAME}|<p>-</p>|high|
|SMTP service low performance on {HOST.NAME}|<p>-</p>|average|
|CLI service is down on {HOST.NAME}|<p>-</p>|high|
|WebAdmin service is down on {HOST.NAME}|<p>-</p>|high|
|Queue size 650+ on {HOST.NAME}|<p>-</p>|warning|
|Queue size 1000+ on {HOST.NAME}|<p>-</p>|average|
|Reporting service down on {HOST.NAME}|<p>-</p>|high|
