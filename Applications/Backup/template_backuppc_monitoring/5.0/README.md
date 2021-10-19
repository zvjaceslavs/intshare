# Template App BackupPC by Zabbix agent

## Description

The template to monitor BackupPC metrics API by Zabbix agent without need for extra scripts on server. Template Version v0.0.1 - Evren Yurtesen Tested on Zabbix5 and BackupPC 4.4.1 (needs updated metrics)

## Overview

Please see the GitHub repository for newest version and reporting issues.


<https://github.com/yurtesen/zabbix_backuppc>


 


This template requires no external scripts. 


 


It is tested with latest BackupPC which has updated metrics. It may function partially in older BackupPC versions.


https://github.com/backuppc/backuppc/pull/391



## Author

Evren Yurtesen

## Macros used

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
|[{#HOST}] Disabled (LLD)|<p>-</p>|`Dependent item`|backuppc.disabled.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr duration (LLD)|<p>-</p>|`Dependent item`|backuppc.incr_duration.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Reason (LLD)|<p>-</p>|`Dependent item`|backuppc.reason.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr start time (LLD)|<p>-</p>|`Dependent item`|backuppc.incr_start_time.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr size (LLD)|<p>-</p>|`Dependent item`|backuppc.incr_size.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr rate (LLD)|<p>-</p>|`Dependent item`|backuppc.incr_rate.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Error (LLD)|<p>-</p>|`Dependent item`|backuppc.error.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr keep count (LLD)|<p>-</p>|`Dependent item`|backuppc.incr_keep_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Incr count (LLD)|<p>-</p>|`Dependent item`|backuppc.incr_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full start time (LLD)|<p>-</p>|`Dependent item`|backuppc.full_start_time.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full size (LLD)|<p>-</p>|`Dependent item`|backuppc.full_size.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full rate (LLD)|<p>-</p>|`Dependent item`|backuppc.full_rate.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full keep count (LLD)|<p>-</p>|`Dependent item`|backuppc.full_keep_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full duration (LLD)|<p>-</p>|`Dependent item`|backuppc.full_duration.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Full count (LLD)|<p>-</p>|`Dependent item`|backuppc.full_count.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] State (LLD)|<p>-</p>|`Dependent item`|backuppc.state.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last # of new files (LLD)|<p>-</p>|`Dependent item`|backuppc.last_nfiles_new.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last size (LLD)|<p>-</p>|`Dependent item`|backuppc.last_size.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last new files size (LLD)|<p>-</p>|`Dependent item`|backuppc.last_size_new.[{#HOST}]<p>Update: 0</p>|
|[{#HOST}] Last start time (LLD)|<p>-</p>|`Dependent item`|backuppc.last_start_time.[{#HOST}]<p>Update: 0</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#HOST}: Backup error|<p>{ITEM.LASTVALUE1}</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.error.[{#HOST}].strlen()}<>0 and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|information|
|{#HOST}: No new backups for {$BACKUPPC.OLDBACKUP.CRIT:"{#HOST}"}|<p>No backups were taken for {$BACKUPPC.OLDBACKUP.CRIT:"{#HOST}"} Critical period per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.last_start_time.[{#HOST}].fuzzytime(7d)}=0 and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|average|
|{#HOST}: No new backups for {$BACKUPPC.OLDBACKUP.WARN:"{#HOST}"}|<p>No backups were taken for {$BACKUPPC.OLDBACKUP.WARN:"{#HOST}"} Warning period per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.last_start_time.[{#HOST}].fuzzytime(3d)}=0 and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|warning|
|{#HOST}: Not enough full backups|<p>{ITEM.LASTVALUE1} full backup(s) exist which is less than configured {ITEM.LASTVALUE2} full backup(s) value for this host A newly added most may not have enough full backups</p>|<p>**Expression**: ({Template App BackupPC by Zabbix agent:backuppc.full_count.[{#HOST}].last()}<{Template App BackupPC by Zabbix agent:backuppc.full_keep_count.[{#HOST}].last()}) and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|information|
|{#HOST}: Not enough incr backups|<p>{ITEM.LASTVALUE1} incr backup(s) exist which is less than configured {ITEM.LASTVALUE2} incr backup(s) value for this host A newly added most may not have enough incremental backups</p>|<p>**Expression**: ({Template App BackupPC by Zabbix agent:backuppc.incr_count.[{#HOST}].last()}<{Template App BackupPC by Zabbix agent:backuppc.incr_keep_count.[{#HOST}].last()}) and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|information|
|{#HOST}: Size difference larger than {$BACKUPPC.SIZECHANGE.CRIT:"{#HOST}"}|<p>There are new files larger than or size difference larger than {$BACKUPPC.SIZECHANGE.CRIT:"{#HOST}"} between last backup and previus backup. Critical size per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0 and ({Template App BackupPC by Zabbix agent:backuppc.last_size_new.[{#HOST}].last()}>5G or {Template App BackupPC by Zabbix agent:backuppc.last_size.[{#HOST}].abschange()}>5G)</p><p>**Recovery expression**: </p>|average|
|{#HOST}: Size difference larger than {$BACKUPPC.SIZECHANGE.WARN:"{#HOST}"}|<p>There are new files larger than or size difference larger than {$BACKUPPC.SIZECHANGE.WARN:"{#HOST}"} between last backup and previus backup. Warning size per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0 and ({Template App BackupPC by Zabbix agent:backuppc.last_size_new.[{#HOST}].last()}>1G or {Template App BackupPC by Zabbix agent:backuppc.last_size.[{#HOST}].abschange()}>1G)</p><p>**Recovery expression**: </p>|warning|
|{#HOST}: Backup error (LLD)|<p>{ITEM.LASTVALUE1}</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.error.[{#HOST}].strlen()}<>0 and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|information|
|{#HOST}: No new backups for {$BACKUPPC.OLDBACKUP.CRIT:"{#HOST}"} (LLD)|<p>No backups were taken for {$BACKUPPC.OLDBACKUP.CRIT:"{#HOST}"} Critical period per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.last_start_time.[{#HOST}].fuzzytime(7d)}=0 and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|average|
|{#HOST}: No new backups for {$BACKUPPC.OLDBACKUP.WARN:"{#HOST}"} (LLD)|<p>No backups were taken for {$BACKUPPC.OLDBACKUP.WARN:"{#HOST}"} Warning period per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.last_start_time.[{#HOST}].fuzzytime(3d)}=0 and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|warning|
|{#HOST}: Not enough full backups (LLD)|<p>{ITEM.LASTVALUE1} full backup(s) exist which is less than configured {ITEM.LASTVALUE2} full backup(s) value for this host A newly added most may not have enough full backups</p>|<p>**Expression**: ({Template App BackupPC by Zabbix agent:backuppc.full_count.[{#HOST}].last()}<{Template App BackupPC by Zabbix agent:backuppc.full_keep_count.[{#HOST}].last()}) and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|information|
|{#HOST}: Not enough incr backups (LLD)|<p>{ITEM.LASTVALUE1} incr backup(s) exist which is less than configured {ITEM.LASTVALUE2} incr backup(s) value for this host A newly added most may not have enough incremental backups</p>|<p>**Expression**: ({Template App BackupPC by Zabbix agent:backuppc.incr_count.[{#HOST}].last()}<{Template App BackupPC by Zabbix agent:backuppc.incr_keep_count.[{#HOST}].last()}) and {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0</p><p>**Recovery expression**: </p>|information|
|{#HOST}: Size difference larger than {$BACKUPPC.SIZECHANGE.CRIT:"{#HOST}"} (LLD)|<p>There are new files larger than or size difference larger than {$BACKUPPC.SIZECHANGE.CRIT:"{#HOST}"} between last backup and previus backup. Critical size per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0 and ({Template App BackupPC by Zabbix agent:backuppc.last_size_new.[{#HOST}].last()}>5G or {Template App BackupPC by Zabbix agent:backuppc.last_size.[{#HOST}].abschange()}>5G)</p><p>**Recovery expression**: </p>|average|
|{#HOST}: Size difference larger than {$BACKUPPC.SIZECHANGE.WARN:"{#HOST}"} (LLD)|<p>There are new files larger than or size difference larger than {$BACKUPPC.SIZECHANGE.WARN:"{#HOST}"} between last backup and previus backup. Warning size per backup server or per backup host can be adjusted.</p>|<p>**Expression**: {Template App BackupPC by Zabbix agent:backuppc.disabled.[{#HOST}].last()}=0 and ({Template App BackupPC by Zabbix agent:backuppc.last_size_new.[{#HOST}].last()}>1G or {Template App BackupPC by Zabbix agent:backuppc.last_size.[{#HOST}].abschange()}>1G)</p><p>**Recovery expression**: </p>|warning|