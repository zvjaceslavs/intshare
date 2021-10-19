# Template 3CX Services Linux

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
|3CX Configuration Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXSLDBServ]<p>Update: 1m</p>|
|3CX Audio Provider Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXAudioProvider]<p>Update: 1m</p>|
|3CX Media Server Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXMediaServer]<p>Update: 1m</p>|
|3CX Tunnel Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXTunnel]<p>Update: 1m</p>|
|3CX Phone System Service|<p>-</p>|`Zabbix agent`|proc.num[,,,/usr/sbin/3CXPhoneSystem]<p>Update: 1m</p>|
|PostgreSQL Service|<p>-</p>|`Zabbix agent`|proc.num[,,,postgres]<p>Update: 1m</p>|
|3CX Event Notification Manager|<p>-</p>|`Zabbix agent`|proc.num[,,,CloudServicesWatcher]<p>Update: 1m</p>|
|3CX IVR Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXIVR]<p>Update: 1m</p>|
|3CX System Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3cxSystemService]<p>Update: 1m</p>|
|3CX Call Flow Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXCallFlow]<p>Update: 1m</p>|
|3CX Queue Manager Service|<p>-</p>|`Zabbix agent`|proc.num[,,,TcxQMsrv]<p>Update: 1m</p>|
|3CX Management Console Service|<p>-</p>|`Zabbix agent`|proc.num[,,,3CXManagementConsole]<p>Update: 1m</p>|
|Nginx Service|<p>-</p>|`Zabbix agent`|proc.num[,,,nginx]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|3CX Phone System Service is not running|<p>-</p>|high|
|3CX Audio Provider Service is not running|<p>-</p>|high|
|3CX Call Flow Service is not running|<p>-</p>|high|
|3CX IVR Service is not running|<p>-</p>|high|
|3CX Management Console Service is not running|<p>-</p>|high|
|3CX Media Server Service is not running|<p>-</p>|high|
|3CX Configuration Service is not running|<p>-</p>|high|
|3CX System Service is not running|<p>-</p>|high|
|3CX Tunnel Service is not running|<p>-</p>|high|
|3CX Event Notification Manager is not running|<p>-</p>|high|
|Nginx Service is not running|<p>-</p>|high|
|PostgreSQL is not running|<p>-</p>|high|
|3CX Queue Manager Service is not running|<p>-</p>|high|
