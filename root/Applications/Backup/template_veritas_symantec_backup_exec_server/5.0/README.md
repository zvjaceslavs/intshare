# Template Backup Exec Server

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BE.PASSWORD}|<p>-</p>|`PASSWORD`|Text macro|
|{$BE.USER}|<p>-</p>|`LOGIN`|Text macro|
|{$HISTORY}|<p>-</p>|`14d`|Text macro|
|{$TRENDS}|<p>-</p>|`180d`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Backup Exec Services|<p>Discovery Backup Exec Services.</p>|`Zabbix agent (active)`|service.discovery<p>Update: 3h</p>|
|Backup Exec Jobs Discovery (INCREMENTAL)|<p>Discover Incremental Backup Exec jobs by SQL query.</p>|`Database monitor`|db.odbc.discovery[be.jobs.incr,{HOST.HOST}]<p>Update: 1h</p>|
|Backup Exec Jobs Discovery (FULL)|<p>Discover Full Backup Exec jobs by SQL query.</p>|`Database monitor`|db.odbc.discovery[be.jobs.full,{HOST.HOST}]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Service {#SERVICE.NAME} status|<p>{#SERVICE.NAME} status Display name: {#SERVICE.DISPLAYNAME} Description: {#SERVICE.DESCRIPTION}</p>|`Zabbix agent (active)`|service.info[{#SERVICE.NAME}]<p>Update: 1m</p>|
|{#JOB.NAME}: Final Job Status|<p>{#JOB.NAME} final job status</p>|`Database monitor`|db.odbc.select[be.job.incr.{#JOB.NAME}.finaljobstatus,{HOST.HOST}]<p>Update: 15m</p>|
|{#JOB.NAME}: Total Data Size, bytes|<p>{#JOB.NAME} total bytes</p>|`Database monitor`|db.odbc.select[be.job.incr.{#JOB.NAME}.totalbytes,{HOST.HOST}]<p>Update: 15m</p>|
|{#JOB.NAME}: Final Job Status|<p>{#JOB.NAME} final job status</p>|`Database monitor`|db.odbc.select[be.job.full.{#JOB.NAME}.finaljobstatus,{HOST.HOST}]<p>Update: 15m</p>|
|{#JOB.NAME}: Total Data Size, bytes|<p>{#JOB.NAME} total bytes</p>|`Database monitor`|db.odbc.select[be.job.full.{#JOB.NAME}.totalbytes,{HOST.HOST}]<p>Update: 15m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service {#SERVICE.NAME} in {ITEM.VALUE} state|<p>Service {#SERVICE.NAME} ({#SERVICE.DISPLAYNAME}) not in 'Running' state</p>|warning|
|Backup job {#JOB.NAME}: {ITEM.VALUE}|<p>Backup job {#JOB.NAME} finished with error: {ITEM.LASTVALUE}.</p>|warning|
|Backup job {#JOB.NAME}: {ITEM.VALUE}|<p>Backup job {#JOB.NAME} finished with error: {ITEM.LASTVALUE}.</p>|average|
