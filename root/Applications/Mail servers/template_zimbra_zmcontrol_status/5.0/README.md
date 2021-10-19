# Template Zimbra

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
|Status Amavis Zimbra|<p>-</p>|`Zabbix agent`|zimbra.amavis.status<p>Update: 3m</p>|
|Status AntiSpam Zimbra|<p>-</p>|`Zabbix agent`|zimbra.antispam.status<p>Update: 3m</p>|
|Status Antivírus Zimbra|<p>-</p>|`Zabbix agent`|zimbra.antivirus.status<p>Update: 3m</p>|
|Status Mailbox Zimbra|<p>-</p>|`Zabbix agent`|zimbra.mailbox.status<p>Update: 3m</p>|
|Status MTA Zimbra|<p>-</p>|`Zabbix agent`|zimbra.mta.status<p>Update: 3m</p>|
|Status Proxy Zimbra|<p>-</p>|`Zabbix agent`|zimbra.proxy.status<p>Update: 3m</p>|
|Status Admin Console Zimbra|<p>-</p>|`Zabbix agent`|zimbra.webadm.status<p>Update: 3m</p>|
|Status Webmail Zimbra Service|<p>-</p>|`Zabbix agent`|zimbra.webmail.status<p>Update: 3m</p>|
|Status Zmconfigd Zimbra|<p>-</p>|`Zabbix agent`|zimbra.zmconfigd.status<p>Update: 3m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service Amavis Stopped|<p>-</p>|high|
|Service AntiSpam Stopped|<p>-</p>|high|
|Service Antivírus Stopped|<p>-</p>|high|
|Service Mailbox Stopped|<p>-</p>|disaster|
|Service MTA Stopped|<p>-</p>|disaster|
|Service Proxy Stopped|<p>-</p>|disaster|
|Service Admin Console Stopped|<p>-</p>|high|
|Service Webmail Stopped|<p>-</p>|disaster|
|Service Zmconfigd Stopped|<p>-</p>|high|
