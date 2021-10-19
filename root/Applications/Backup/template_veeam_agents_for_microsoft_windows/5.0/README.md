# Template VEEAM-Agents

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
|VeeamAgent_EventLog_Synchronisation|<p>-</p>|`Zabbix agent (active)`|eventlog[Veeam Agent,,,Veeam Agent,195,,skip]<p>Update: 5m</p>|
|VeeamAgent_Service|<p>-</p>|`Zabbix agent (active)`|service.info[VeeamEndpointBackupSvc]<p>Update: 5m</p>|
|VeeamAgent_EventLog_JobResult|<p>-</p>|`Zabbix agent (active)`|eventlog[Veeam Agent,,,Veeam Agent,190,,skip]<p>Update: 5m</p>|
|VeeamAgent_EventLog_JobRetry|<p>-</p>|`Zabbix agent (active)`|eventlog[Veeam Agent,,,Veeam Agent,191,,skip]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|VeeamAgent - No job result since 1 Week|<p>-</p>|high|
|VeeamAgent - No result from service since 24h|<p>-</p>|high|
|VeeamAgent Job completed successfull|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|information|
|VeeamAgent Job completed successfull  (warning about free space)|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|information|
|VeeamAgent Job completed with error|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|high|
|VeeamAgent Job completed with warning|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|average|
|VeeamAgent Job Retry|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|warning|
|VeeamAgent Service Down|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|high|
|VeeamAgent Synchronization completed with error|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|high|
|VeeamAgent Synchronization completed with warning|<p>{ITEM.LASTVALUE1} {ITEM.LASTVALUE2} {ITEM.LASTVALUE3}</p>|warning|
