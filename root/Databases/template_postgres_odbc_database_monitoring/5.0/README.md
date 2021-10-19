# Template Postgres ODBC

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
|tupupdated|<p>-</p>|`Database monitor`|db.odbc.select[tupupdated,{HOST.NAME}]<p>Update: 60s</p>|
|pmbcexclusivelock|<p>-</p>|`Database monitor`|db.odbc.select[pmbcexclusivelock,{HOST.NAME}]<p>Update: 60s</p>|
|accessexclusivelock|<p>-</p>|`Database monitor`|db.odbc.select[accessexclusivelock,{HOST.NAME}]<p>Update: 60s</p>|
|tupinserted|<p>-</p>|`Database monitor`|db.odbc.select[tupinserted,{HOST.NAME}]<p>Update: 60s</p>|
|tupdeleted|<p>-</p>|`Database monitor`|db.odbc.select[tupdeleted,{HOST.NAME}]<p>Update: 60s</p>|
|xactcommit|<p>-</p>|`Database monitor`|db.odbc.select[xactcommit,{HOST.NAME}]<p>Update: 60s</p>|
|tupfetched|<p>-</p>|`Database monitor`|db.odbc.select[tupfetched,{HOST.NAME}]<p>Update: 60s</p>|
|one|<p>-</p>|`Database monitor`|db.odbc.select[one,{HOST.NAME}]<p>Update: 60s</p>|
|shareupdateexclusivelock|<p>-</p>|`Database monitor`|db.odbc.select[shareupdateexclusivelock,{HOST.NAME}]<p>Update: 60s</p>|
|rowsharelock|<p>-</p>|`Database monitor`|db.odbc.select[rowsharelock,{HOST.NAME}]<p>Update: 60s</p>|
|checkpoints_req|<p>-</p>|`Database monitor`|db.odbc.select[checkpoints_req,{HOST.NAME}]<p>Update: 60s</p>|
|buffers_clean|<p>-</p>|`Database monitor`|db.odbc.select[buffers_clean,{HOST.NAME}]<p>Update: 60s</p>|
|sharerowexclusivelock|<p>-</p>|`Database monitor`|db.odbc.select[sharerowexclusivelock,{HOST.NAME}]<p>Update: 60s</p>|
|exclusivelock|<p>-</p>|`Database monitor`|db.odbc.select[exclusivelock,{HOST.NAME}]<p>Update: 60s</p>|
|rowexclusivelock|<p>-</p>|`Database monitor`|db.odbc.select[rowexclusivelock,{HOST.NAME}]<p>Update: 60s</p>|
|checkpoints_timed|<p>-</p>|`Database monitor`|db.odbc.select[checkpoints_timed,{HOST.NAME}]<p>Update: 60s</p>|
|accesssharelock|<p>-</p>|`Database monitor`|db.odbc.select[accesssharelock,{HOST.NAME}]<p>Update: 60s</p>|
|buffers_alloc|<p>-</p>|`Database monitor`|db.odbc.select[buffers_alloc,{HOST.NAME}]<p>Update: 60s</p>|
|buffers_backend|<p>-</p>|`Database monitor`|db.odbc.select[buffers_backend,{HOST.NAME}]<p>Update: 60s</p>|
|activeconn|<p>-</p>|`Database monitor`|db.odbc.select[activeconn,{HOST.NAME}]<p>Update: 60s</p>|
|tupreturned|<p>-</p>|`Database monitor`|db.odbc.select[tupreturned,{HOST.NAME}]<p>Update: 60s</p>|
|maxwritten_clean|<p>-</p>|`Database monitor`|db.odbc.select[maxwritten_clean,{HOST.NAME}]<p>Update: 60s</p>|
|xactrollback|<p>-</p>|`Database monitor`|db.odbc.select[xactrollback,{HOST.NAME}]<p>Update: 60s</p>|
|buffers_checkpoint|<p>-</p>|`Database monitor`|db.odbc.select[buffers_checkpoint,{HOST.NAME}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Database problem|<p>This query does a select 1 as 1 if it doesn't return 1 some thing is really messed up.</p>|average|
|To many exclusive locks|<p>-</p>|warning|
|To many PMBC exclusive locks|<p>-</p>|average|
|Too many active connections|<p>-</p>|warning|
