# Template VEEAM SMTP trapper

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BACKUP_PERIODICITY}|<p>-</p>|`52h`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Job Discovery|<p>-</p>|`Zabbix trapper`|smtp.trap.subject.discovery[veeamjob]<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Job {#VEEAMJOB} message|<p>-</p>|`Zabbix trapper`|smtp.trap.subject.match.body[veeamjob,{#VEEAMJOB}]<p>Update: 0</p>|
|Job {#VEEAMJOB} status|<p>-</p>|`Zabbix trapper`|smtp.trap.subject.match[veeamjob,{#VEEAMJOB},status]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Failure of job {#VEEAMJOB}|<p>-</p>|high|
|Job {#VEEAMJOB} did not occur last {$BACKUP_PERIODICITY:"{#VEEAMJOB}"}|<p>-</p>|high|
|Warning on job {#VEEAMJOB}|<p>-</p>|warning|
