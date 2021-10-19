# Template App BackupPC by Zabbix agent

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BACKUPPC.HOST}|<p>Hostname or IP of the BackupPC server.</p>|`127.0.0.1`|Text macro|
|{$BACKUPPC.OLDBACKUP.CRIT}|<p>Days before critical old backups</p>|`7d`|Text macro|
|{$BACKUPPC.OLDBACKUP.WARN}|<p>Days before warning old backups</p>|`3d`|Text macro|
|{$BACKUPPC.PASSWORD}|<p>Password of username which can access metrics of the BackupPC server.</p>|`backuppc`|Text macro|
|{$BACKUPPC.PATH}|<p>Path to BackupPC web interface</p>|`/backuppc`|Text macro|
|{$BACKUPPC.PORT}|<p>HTTP/HTTPS port</p>|`443`|Text macro|
|{$BACKUPPC.SCHEME}|<p>Metrics access scheme (http/https).</p>|`https`|Text macro|
|{$BACKUPPC.SIZECHANGE.CRIT}|<p>Crit backup `size` or `new files size` difference</p>|`5G`|Text macro|
|{$BACKUPPC.SIZECHANGE.WARN}|<p>Warn backup `size` or `new files size` difference</p>|`1G`|Text macro|
|{$BACKUPPC.USERNAME}|<p>Metrics access username.</p>|`backuppc`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discover backed up hosts|<p>-</p>|`Dependent item`|backuppc.hosts.discovery<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disk usage|<p>-</p>|`Dependent item`|backuppc.disk.usage<p>Update: 0</p>|
|Inode usage|<p>-</p>|`Dependent item`|backuppc.inode.usage<p>Update: 0</p>|
|Determine last backup data|<p>-</p>|`Dependent item`|backuppc.metrics.last<p>Update: 0</p>|
|Start time|<p>-</p>|`Dependent item`|backuppc.server.start_time<p>Update: 0</p>|
|Version|<p>-</p>|`Dependent item`|backuppc.server.version<p>Update: 0</p>|
|BackupPC get metrics|<p>Fetches BackupPC server metrics</p>|`Zabbix agent`|web.page.get[{$BACKUPPC.SCHEME}://{$BACKUPPC.USERNAME}:{$BACKUPPC.PASSWORD}@{$BACKUPPC.HOST}:{$BACKUPPC.PORT}/{$BACKUPPC.PATH}?action=metrics]<p>Update: 5m</p>|
|[{#HOST}] Disabled|<p>-</p>|`Dependent item`|backuppc.disabled.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr duration|<p>-</p>|`Dependent item`|backuppc.incr_duration.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Reason|<p>-</p>|`Dependent item`|backuppc.reason.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr start time|<p>-</p>|`Dependent item`|backuppc.incr_start_time.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr size|<p>-</p>|`Dependent item`|backuppc.incr_size.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr rate|<p>-</p>|`Dependent item`|backuppc.incr_rate.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Error|<p>-</p>|`Dependent item`|backuppc.error.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr keep count|<p>-</p>|`Dependent item`|backuppc.incr_keep_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr count|<p>-</p>|`Dependent item`|backuppc.incr_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full start time|<p>-</p>|`Dependent item`|backuppc.full_start_time.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full size|<p>-</p>|`Dependent item`|backuppc.full_size.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full rate|<p>-</p>|`Dependent item`|backuppc.full_rate.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full keep count|<p>-</p>|`Dependent item`|backuppc.full_keep_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full duration|<p>-</p>|`Dependent item`|backuppc.full_duration.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full count|<p>-</p>|`Dependent item`|backuppc.full_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] State|<p>-</p>|`Dependent item`|backuppc.state.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last # of new files|<p>-</p>|`Dependent item`|backuppc.last_nfiles_new.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last size|<p>-</p>|`Dependent item`|backuppc.last_size.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last new files size|<p>-</p>|`Dependent item`|backuppc.last_size_new.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last start time|<p>-</p>|`Dependent item`|backuppc.last_start_time.[{#HOST}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#HOST}: Backup error|<p>{ITEM.LASTVALUE1}</p>|information|
|{#HOST}: No new backups for {$BACKUPPC.OLDBACKUP.CRIT:"{#HOST}"}|<p>No backups were taken for {$BACKUPPC.OLDBACKUP.CRIT:"{#HOST}"} Critical period per backup server or per backup host can be adjusted.</p>|average|
|{#HOST}: No new backups for {$BACKUPPC.OLDBACKUP.WARN:"{#HOST}"}|<p>No backups were taken for {$BACKUPPC.OLDBACKUP.WARN:"{#HOST}"} Warning period per backup server or per backup host can be adjusted.</p>|warning|
|{#HOST}: Not enough full backups|<p>{ITEM.LASTVALUE1} full backup(s) exist which is less than configured {ITEM.LASTVALUE2} full backup(s) value for this host A newly added most may not have enough full backups</p>|information|
|{#HOST}: Not enough incr backups|<p>{ITEM.LASTVALUE1} incr backup(s) exist which is less than configured {ITEM.LASTVALUE2} incr backup(s) value for this host A newly added most may not have enough incremental backups</p>|information|
|{#HOST}: Size difference larger than {$BACKUPPC.SIZECHANGE.CRIT:"{#HOST}"}|<p>There are new files larger than or size difference larger than {$BACKUPPC.SIZECHANGE.CRIT:"{#HOST}"} between last backup and previus backup. Critical size per backup server or per backup host can be adjusted.</p>|average|
|{#HOST}: Size difference larger than {$BACKUPPC.SIZECHANGE.WARN:"{#HOST}"}|<p>There are new files larger than or size difference larger than {$BACKUPPC.SIZECHANGE.WARN:"{#HOST}"} between last backup and previus backup. Warning size per backup server or per backup host can be adjusted.</p>|warning|
