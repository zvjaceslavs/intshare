# Template Oracle DB

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ASM_USAGE_THRESHOLD}|<p>-</p>|`1.0`|Text macro|
|{$BACKUP_DSN}|<p>-</p>|`{$DSN}`|Text macro|
|{$BLOCK_THRESHOLD}|<p>-</p>|`20`|Text macro|
|{$DB_PASSWORD}|<p>-</p>|`zabbix`|Text macro|
|{$DB_USERNAME}|<p>-</p>|`zabbix`|Text macro|
|{$DSN}|<p>-</p>|``|Text macro|
|{$FRA_USAGE_THRESHOLD}|<p>-</p>|`1.0`|Text macro|
|{$MIN_READ_BPS}|<p>-</p>|`10485760`|Text macro|
|{$MIN_WRITE_BPS}|<p>-</p>|`1048576`|Text macro|
|{$ORACLE_BACKUP_HOUR}|<p>-</p>|`0`|Text macro|
|{$TB_USAGE_THRESHOLD}|<p>-</p>|`1.0`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Active session discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[active session discovery,{$DSN}]<p>Update: 5m</p>|
|Archive destination discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[Archive destination discovery,{$DSN}]<p>Update: 1h</p>|
|ASM disk discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[ASM Disk Discovery,{$DSN}]<p>Update: 1m</p>|
|Blocking session discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[blocking sessions discovery,{$DSN}]<p>Update: 5m</p>|
|Flash Recovery Area Discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[Flash Recovery Area Discovery,{$DSN}]<p>Update: 5m</p>|
|Scheduler jobs discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[job discovery,{$DSN}]<p>Update: 5m</p>|
|Schema discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[Schema Discovery,{$DSN}]<p>Update: 6h</p>|
|Tablespace discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[Tablespace Discovery,{$DSN}]<p>Update: 1h</p>|
|Top lasting SQLs discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[Top lasting SQLs discovery,{$DSN}]<p>Update: 5m</p>|
|Waiting session discovery|<p>-</p>|`Database monitor`|db.odbc.discovery[waiting session discovery,{$DSN}]<p>Update: 5m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Archived log Primary-Standby gap|<p>-</p>|`Database monitor`|db.odbc.select[archive log gap,{$DSN}]<p>Update: 10m</p>|
|Last 24h backup details|<p>when status = 'COMPLETED' then 1 when status = 'FAILED' then -1 when status like 'WITH WARNINGS' then 2 when status like 'WITH ERRORS' then 3 else 0</p>|`Database monitor`|db.odbc.select[backup status,{$BACKUP_DSN}]<p>Update: 1h</p>|
|Blocked sessions count|<p>-</p>|`Database monitor`|db.odbc.select[Blocked sessions count,{$DSN}]<p>Update: 5m</p>|
|Buffer Cache Hit Ratio|<p>-</p>|`Database monitor`|db.odbc.select[Buffer Cache Hit Ratio,{$DSN}]<p>Update: 5m</p>|
|Cursor Cache Hit Ratio|<p>-</p>|`Database monitor`|db.odbc.select[Cursor Cache Hit Ratio,{$DSN}]<p>Update: 5m</p>|
|Database CPU Time Ratio|<p>-</p>|`Database monitor`|db.odbc.select[Database CPU Time Ratio,{$DSN}]<p>Update: 5m</p>|
|Database lock count|<p>-</p>|`Database monitor`|db.odbc.select[Database lock count,{$DSN}]<p>Update: 5m</p>|
|Database session count|<p>-</p>|`Database monitor`|db.odbc.select[db session count,{$DSN}]<p>Update: 5m</p>|
|Global DB name|<p>-</p>|`Database monitor`|db.odbc.select[global_db_name,{$DSN}]<p>Update: 1d</p>|
|Host CPU Utilization %|<p>-</p>|`Database monitor`|db.odbc.select[Host CPU Utilization,{$DSN}]<p>Update: 5m</p>|
|Instance CPU count|<p>-</p>|`Database monitor`|db.odbc.select[Instance CPU count,{$DSN}]<p>Update: 1h</p>|
|Instance name|<p>-</p>|`Database monitor`|db.odbc.select[instance_name,{$DSN}]<p>Update: 1d</p>|
|Instance status|<p>-</p>|`Database monitor`|db.odbc.select[Instance Status,{$DSN}]<p>Update: 60</p>|
|Long table scans per sec|<p>-</p>|`Database monitor`|db.odbc.select[Long Table Scans Per Sec,{$DSN}]<p>Update: 5m</p>|
|Max applied archived log|<p>-</p>|`Database monitor`|db.odbc.select[max applied archived log,{$DSN}]<p>Update: 5m</p>|
|Max archived log|<p>-</p>|`Database monitor`|db.odbc.select[max archived log,{$DSN}]<p>Update: 5m</p>|
|Maximum processes|<p>-</p>|`Database monitor`|db.odbc.select[max number of processes,{$DSN}]<p>Update: 1h</p>|
|Maximum sessions|<p>-</p>|`Database monitor`|db.odbc.select[max number of sessions,{$DSN}]<p>Update: 1h</p>|
|PGA Cache Hit %|<p>-</p>|`Database monitor`|db.odbc.select[PGA Cache Hit Percentage,{$DSN}]<p>Update: 5m</p>|
|Physical Read Bytes Per Sec|<p>-</p>|`Database monitor`|db.odbc.select[Physical Read Bytes Per Sec,{$DSN}]<p>Update: 2m</p>|
|Physical reads direct per sec|<p>-</p>|`Database monitor`|db.odbc.select[Physical reads direct per sec,{$DSN}]<p>Update: 5m</p>|
|Physical reads direct temporary tablespace per sec|<p>-</p>|`Database monitor`|db.odbc.select[physical reads direct temporary tablespace per sec,{$DSN}]<p>Update: 5m</p>|
|Physical Reads Per Sec|<p>-</p>|`Database monitor`|db.odbc.select[Physical Reads Per Sec,{$DSN}]<p>Update: 5m</p>|
|Physical Write Bytes Per Sec|<p>-</p>|`Database monitor`|db.odbc.select[Physical Write Bytes Per Sec,{$DSN}]<p>Update: 2m</p>|
|Physical writes direct per sec|<p>-</p>|`Database monitor`|db.odbc.select[Physical writes direct per sec,{$DSN}]<p>Update: 5m</p>|
|Physical Writes Per Sec|<p>-</p>|`Database monitor`|db.odbc.select[Physical Writes Per Sec,{$DSN}]<p>Update: 5m</p>|
|Redo Allocation Hit Ratio|<p>-</p>|`Database monitor`|db.odbc.select[Redo Allocation Hit Ratio,{$DSN}]<p>Update: 5m</p>|
|Session blockers count|<p>-</p>|`Database monitor`|db.odbc.select[session blockers count,{$DSN}]<p>Update: 5m</p>|
|Shared Pool Free %|<p>-</p>|`Database monitor`|db.odbc.select[Shared Pool Free %,{$DSN}]<p>Update: 5m</p>|
|Soft Parse Ratio|<p>-</p>|`Database monitor`|db.odbc.select[Soft Parse Ratio,{$DSN}]<p>Update: 5m</p>|
|Waiting sessions count|<p>-</p>|`Database monitor`|db.odbc.select[Waiting sessions count,{$DSN}]<p>Update: 5m</p>|
|Session {#SID} CPU used in seconds|<p>-</p>|`Database monitor`|db.odbc.select[session {#SID} CPU time,{$DSN}]<p>Update: 2m</p>|
|Session {#SID} SQL ID|<p>-</p>|`Database monitor`|db.odbc.select[session {#SID} SQL ID,{$DSN}]<p>Update: 5m</p>|
|Session {#SID} username|<p>-</p>|`Database monitor`|db.odbc.select[session {#SID} username,{$DSN}]<p>Update: 5m</p>|
|Session {#SID} change in CPU time per sec|<p>-</p>|`Dependent item`|oracle.db.session.cpu_time_change[{#SID}]<p>Update: 0</p>|
|Destination {#DEST_ID} status|<p>'VALID' 1 'INACTIVE' 2 'DEFERRED' 3 'ERROR' 4 'DISABLED' 5 'BAD PARAM' 6 'ALTERNATE' 7 'FULL' 8 else -1</p>|`Database monitor`|db.odbc.select[Dest {#DEST_ID} status. {#DSN}]<p>Update: 5m</p>|
|ASM disk: {#DISK_NAME}: mode status|<p>when 'OFFLINE' then 0 when 'ONLINE' then 1</p>|`Calculated`|oracle.asm.disk.mode_status[{#DISK_NAME}]<p>Update: 5m</p>|
|ASM disk: {#DISK_NAME}: mount status|<p>when 'MISSING' then -3 when 'CLOSED' then -2 when 'CLOSING' then -1 when 'IGNORED' then 0 when 'OPENED' then 1 when 'CACHED' then 2</p>|`Calculated`|oracle.asm.disk.mount_status[{#DISK_NAME}]<p>Update: 5m</p>|
|ASM disk: {#DISK_NAME}: state|<p>when 'NORMAL' then 1 when 'UNKNOWN' then 0 when 'ADDING' then 2 when 'DROPPING' then 3 when 'HUNG' then -1 when 'FORCING' then -2</p>|`Calculated`|oracle.asm.disk.state[{#DISK_NAME}]<p>Update: 1m</p>|
|ASM disk: {#DISK_NAME}: total space|<p>-</p>|`Calculated`|oracle.asm.disk.total_space[{#DISK_NAME}]<p>Update: 5m</p>|
|ASM disk: {#DISK_NAME}: free space|<p>-</p>|`Calculated`|oracle.db.disk.free_space[{#DISK_NAME}]<p>Update: 5m</p>|
|ASM disk: {#DISK_NAME}: pct free|<p>-</p>|`Calculated`|oracle.db.disk.pct_free[{#DISK_NAME}]<p>Update: 5m</p>|
|Total wait time on Blocking session: {#SID}|<p>-</p>|`Database monitor`|db.odbc.select[waiting time -  {#SID},{$DSN}]<p>Update: 5m</p>|
|FRA: {#NAME}: pct_used|<p>-</p>|`Calculated`|db.oracle.fra.pct_used[{#NAME}]<p>Update: 4m</p>|
|FRA: {#NAME}: size|<p>-</p>|`Calculated`|db.oracle.fra.size[{#NAME}]<p>Update: 4m</p>|
|FRA: {#NAME}: space_used|<p>-</p>|`Calculated`|db.oracle.fra.space_used[{#NAME}]<p>Update: 4m</p>|
|Schema {#OWNER}: size|<p>SIze of the schema.</p>|`Database monitor`|db.odbc.select[Schema {#OWNER} size,{$DSN}]<p>Update: 1h</p>|
|Tablespace: {#TABLESPACE_NAME}: bigfile|<p>-</p>|`Calculated`|db.oracle.tablespace.bigfile[{#TABLESPACE_NAME}]<p>Update: 1h</p>|
|Tablespace: {#TABLESPACE_NAME}: contents|<p>-</p>|`Calculated`|db.oracle.tablespace.contents[{#TABLESPACE_NAME}]<p>Update: 4m</p>|
|Tablespace: {#TABLESPACE_NAME}: max_size|<p>-</p>|`Calculated`|db.oracle.tablespace.max_size[{#TABLESPACE_NAME}]<p>Update: 4m</p>|
|Tablespace: {#TABLESPACE_NAME}: pct_used|<p>-</p>|`Calculated`|db.oracle.tablespace.pct_used[{#TABLESPACE_NAME}]<p>Update: 4m</p>|
|Tablespace: {#TABLESPACE_NAME}: size|<p>-</p>|`Calculated`|db.oracle.tablespace.size[{#TABLESPACE_NAME}]<p>Update: 4m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} bind variables|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} bind variables,{$DSN}]<p>Update: 5m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} CPU time|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} CPU time,{$DSN}]<p>Update: 2m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} parsing schema|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} parsing schema,{$DSN}]<p>Update: 5m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} physical read bytes|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} physical read bytes,{$DSN}]<p>Update: 5m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} physical write bytes|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} physical write bytes,{$DSN}]<p>Update: 5m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} plan|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} plan,{$DSN}]<p>Update: 5m</p>|
|Top SQL {#SQL_ID}:{#CHILD_ADDRESS} text|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID}:{#CHILD_ADDRESS} text,{$DSN}]<p>Update: 5m</p>|
|Top SQL {#SQL_ID} total CPU time|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID} total CPU time,{$DSN}]<p>Update: 30m</p>|
|Top SQL {#SQL_ID} total physical read bytes|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID} total physical read bytes,{$DSN}]<p>Update: 30m</p>|
|Top SQL {#SQL_ID} total physical write bytes|<p>-</p>|`Database monitor`|db.odbc.select[Top SQL {#SQL_ID} total physical write bytes,{$DSN}]<p>Update: 30m</p>|
|Session {#SID} total wait time in seconds|<p>-</p>|`Database monitor`|db.odbc.select[session {#SID} wait time,{$DSN}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Database extreme session count => {ITEM.VALUE1}|<p>-</p>|disaster|
|Database has no backup last 24hrs|<p>-</p>|average|
|Database high session count|<p>-</p>|warning|
|Database Is Down|<p>-</p>|disaster|
|Database is not in archive mode|<p>-</p>|warning|
|Database Read Bps is abnormal => {ITEM.VALUE1}|<p>-</p>|warning|
|Database Read Bps is high => {ITEM.VALUE1}|<p>-</p>|average|
|Database Read Bps is very high => {ITEM.VALUE1}|<p>-</p>|high|
|Database very high session count => {ITEM.VALUE1}|<p>-</p>|high|
|Database Write Bps is abnormal => {ITEM.VALUE1}|<p>-</p>|warning|
|Database Write Bps is high => {ITEM.VALUE1}|<p>-</p>|average|
|Database Write Bps is very high => {ITEM.VALUE1}|<p>-</p>|high|
|DB - DG archive gap detected => {ITEM.VALUE1}|<p>-</p>|warning|
|DB - DG massive archive gap detected => {ITEM.VALUE1}|<p>-</p>|high|
|Last DB backup contains errors|<p>-</p>|high|
|Last DB backup contains warnings|<p>-</p>|warning|
|Last DB backup is failed|<p>-</p>|high|
|Session {#SID} is devouring CPU!|<p>-</p>|high|
|Session {#SID} is eating CPU!|<p>-</p>|average|
|Session {#SID} is hogging CPU!|<p>-</p>|warning|
|ASM disk {#DISK_NAME} extremely low free space => {ITEM.VALUE1}|<p>-</p>|high|
|ASM disk {#DISK_NAME} is => {ITEM.VALUE1}|<p>-</p>|disaster|
|ASM disk {#DISK_NAME} low free space => {ITEM.VALUE1}|<p>-</p>|warning|
|ASM disk {#DISK_NAME} very low free space => {ITEM.VALUE1}|<p>-</p>|average|
|ASM disk {#DISK_NAME} zero free space|<p>-</p>|disaster|
|Session {#SID} is an intensive blocker|<p>-</p>|warning|
|FRA is almost full => {ITEM.VALUE1}|<p>-</p>|high|
|FRA is full => {ITEM.VALUE1}|<p>-</p>|disaster|
|FRA space usage is high => {ITEM.VALUE1}|<p>-</p>|warning|
|FRA space usage is very high => {ITEM.VALUE1}|<p>-</p>|average|
|Tablespace {#TABLESPACE_NAME} almost full => {ITEM.VALUE1}|<p>-</p>|high|
|Tablespace {#TABLESPACE_NAME} full => {ITEM.VALUE1}|<p>-</p>|disaster|
|Tablespace {#TABLESPACE_NAME} space usage is high => {ITEM.VALUE1}|<p>-</p>|warning|
|Tablespace {#TABLESPACE_NAME} space usage is very high => {ITEM.VALUE1}|<p>-</p>|average|
|Long waiting session: {#SID} => {ITEM.LASTVALUE} seconds|<p>-</p>|warning|
