# Template Pyora active send

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ASMHIGH}|<p>-</p>|`85`|Text macro|
|{$DATABASE}|<p>-</p>|``|Text macro|
|{$HIGH}|<p>-</p>|`80`|Text macro|
|{$ZABBIXPASSWORD}|<p>-</p>|``|Text macro|
|{$ZABBIXURL}|<p>-</p>|``|Text macro|
|{$ZABBIXUSER}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Oracle tablespaces|<p>-</p>|`Zabbix agent`|pyora-discovery[{$ADDRESS},{$DATABASE},show_tablespaces]<p>Update: 3600</p>|
|Discovery Oracle ASM volumes|<p>-</p>|`Zabbix agent`|pyora-discovery[{$ADDRESS},{$DATABASE},show_asm_volumes]<p>Update: 3600</p>|
|Discovery Oracle temp tablespaces|<p>-</p>|`Zabbix agent`|pyora-discovery[{$ADDRESS},{$DATABASE},show_tablespaces_temp]<p>Update: 3600</p>|
|Discovery Oracle users|<p>-</p>|`Zabbix agent`|pyora-discovery[{$ADDRESS},{$DATABASE},show_users]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Oracle/Version on {$DATABASE}|<p>-</p>|`Zabbix trapper`|version<p>Update: 0</p>|
|Oracle/dbscattread on {$DATABASE}|<p>-</p>|`Zabbix trapper`|dbscattread<p>Update: 0</p>|
|Oracle/Database CPU Time Ratio on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_sysmetrics[Database_CPU_Time_Ratio]<p>Update: 0</p>|
|Oracle/Lastarclog on {$DATABASE}|<p>-</p>|`Zabbix trapper`|lastarclog<p>Update: 0</p>|
|Oracle/Netsent on {$DATABASE}|<p>-</p>|`Zabbix trapper`|netsent<p>Update: 0</p>|
|Oracle/Read Cache hit ratio on {$DATABASE}|<p>-</p>|`Zabbix trapper`|rcachehit<p>Update: 0</p>|
|Oracle/fra_use on {$DATABASE}|<p>-</p>|`Zabbix trapper`|fra_use<p>Update: 0</p>|
|Oracle/Buffer busy waits on {$DATABASE}|<p>-</p>|`Zabbix trapper`|bufbusywaits<p>Update: 0</p>|
|Oracle/Hard parse ratio on {$DATABASE}|<p>-</p>|`Zabbix trapper`|hparsratio<p>Update: 0</p>|
|Oracle/Index fast full scans (full) on {$DATABASE}|<p>-</p>|`Zabbix trapper`|indexffs<p>Update: 0</p>|
|Oracle/Netresv on {$DATABASE}|<p>-</p>|`Zabbix trapper`|netresv<p>Update: 0</p>|
|Oracle/Enqueue on {$DATABASE}|<p>-</p>|`Zabbix trapper`|enqueue<p>Update: 0</p>|
|Oracle/Deadlocks on {$DATABASE}|<p>-</p>|`Zabbix trapper`|deadlocks<p>Update: 0</p>|
|Oracle/Table scans (long tables) on {$DATABASE}|<p>-</p>|`Zabbix trapper`|tblscans<p>Update: 0</p>|
|Oracle/Query Lock on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_lock<p>Update: 0</p>|
|Oracle/Archive {$ARCHIVE} on {$DATABASE}|<p>-</p>|`Zabbix trapper`|check_archive[{$ARCHIVE}]<p>Update: 0</p>|
|Oracle/dbsnglwrite {$DATABASE}|<p>-</p>|`Zabbix trapper`|dbsnglwrite<p>Update: 0</p>|
|Oracle/Latchfree on {$DATABASE}|<p>-</p>|`Zabbix trapper`|latchfree<p>Update: 0</p>|
|Zabbix failed checks on {$DATABASE}|<p>-</p>|`Zabbix trapper`|failedchecks<p>Update: 0</p>|
|Oracle/dbseqread on {$DATABASE}|<p>-</p>|`Zabbix trapper`|dbseqread<p>Update: 0</p>|
|Oracle/Logonscurrent on {$DATABASE}|<p>-</p>|`Zabbix trapper`|logonscurrent<p>Update: 0</p>|
|Zabbix items list|<p>-</p>|`Zabbix agent`|pyora-items-list[{$ZABBIXURL},{$ZABBIXUSER},{$ZABBIXPASSWORD},{HOST.HOST},{$ADDRESS},{$DATABASE}]<p>Update: 3600</p>|
|Oracle/Query Redologs on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_redologs<p>Update: 0</p>|
|Oracle/dbprllwrite on {$DATABASE}|<p>-</p>|`Zabbix trapper`|dbprllwrite<p>Update: 0</p>|
|Oracle/Instance is active and open on {$DATABASE}|<p>-</p>|`Zabbix trapper`|check_active<p>Update: 0</p>|
|Oracle/Uptime on {$DATABASE}|<p>-</p>|`Zabbix trapper`|uptime<p>Update: 0</p>|
|Oracle/Size of user data (without temp) on {$DATABASE}|<p>-</p>|`Zabbix trapper`|dbsize<p>Update: 0</p>|
|Oracle/Logprllwrite on {$DATABASE}|<p>-</p>|`Zabbix trapper`|logprllwrite<p>Update: 0</p>|
|Oracle/freebufwaits on {$DATABASE}|<p>-</p>|`Zabbix trapper`|freebufwaits<p>Update: 0</p>|
|Oracle/User Transaction Per Sec on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_sysmetrics[User_Transaction_Per_Sec]<p>Update: 0</p>|
|Oracle/Netroundtrips on {$DATABASE}|<p>-</p>|`Zabbix trapper`|netroundtrips<p>Update: 0</p>|
|Oracle/Logfilesync on {$DATABASE}|<p>-</p>|`Zabbix trapper`|logfilesync<p>Update: 0</p>|
|Oracle/Query Sessions on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_sessions<p>Update: 0</p>|
|Oracle/Active user count on {$DATABASE}|<p>-</p>|`Zabbix trapper`|activeusercount<p>Update: 0</p>|
|Oracle/Disk sorts ratio on {$DATABASE}|<p>-</p>|`Zabbix trapper`|dsksortratio<p>Update: 0</p>|
|Oracle/Lastapplarclog on {$DATABASE}|<p>-</p>|`Zabbix trapper`|lastapplarclog<p>Update: 0</p>|
|Oracle/User Commits on {$DATABASE}|<p>-</p>|`Zabbix trapper`|commits<p>Update: 0</p>|
|Oracle/Table scan rows gotten on {$DATABASE}|<p>-</p>|`Zabbix trapper`|tblrowsscans<p>Update: 0</p>|
|Oracle/Logswcompletion on {$DATABASE}|<p>-</p>|`Zabbix trapper`|logswcompletion<p>Update: 0</p>|
|Oracle/Database Wait Time Ratio on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_sysmetrics[Database_Wait_Time_Ratio]<p>Update: 0</p>|
|Oracle/Directread on {$DATABASE}|<p>-</p>|`Zabbix trapper`|directread<p>Update: 0</p>|
|Query Lock list on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_lock_list2<p>Update: 0</p>|
|Oracle/Query Rollbacks on {$DATABASE}|<p>-</p>|`Zabbix trapper`|query_rollbacks<p>Update: 0</p>|
|Oracle/Size of all datafiles on {$DATABASE}|<p>-</p>|`Zabbix trapper`|dbfilesize<p>Update: 0</p>|
|Oracle/Redo Writes on {$DATABASE}|<p>-</p>|`Zabbix trapper`|redowrites<p>Update: 0</p>|
|Tablespace percentual use on {#TABLESPACE}|<p>-</p>|`Zabbix trapper`|tablespace[{#TABLESPACE}]<p>Update: 0</p>|
|Tablespace free on {#TABLESPACE}|<p>-</p>|`Zabbix trapper`|tablespace_abs[{#TABLESPACE}]<p>Update: 0</p>|
|ASM Volume Free on {#ASMVOLUME}|<p>-</p>|`Zabbix trapper`|asm_volume_free[{#ASMVOLUME}]<p>Update: 0</p>|
|ASM Volume Size on {#ASMVOLUME}|<p>-</p>|`Zabbix trapper`|asm_volume_size[{#ASMVOLUME}]<p>Update: 0</p>|
|ASM Volume Use on {#ASMVOLUME}|<p>-</p>|`Zabbix trapper`|asm_volume_use[{#ASMVOLUME}]<p>Update: 0</p>|
|Temp Tablespace Use on {#TABLESPACE_TEMP}|<p>-</p>|`Zabbix trapper`|tablespace_temp[{#TABLESPACE_TEMP}]<p>Update: 0</p>|
|{#DBUSER} user status|<p>-</p>|`Zabbix trapper`|user_status[{#DBUSER}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Can't create items list|<p>-</p>|average|
|Database {$DATABASE} is down or ORA error found|<p>Contact DBA.</p>|disaster|
|Database {$DATABASE} is not responding|<p>-</p>|high|
|fra_use used on {$DATABASE} > 90%|<p>Fast Recovery Area usage > 90%</p>|high|
|Query Lock list on {$DATABASE} not empty|<p>-</p>|average|
|Query Lock on {$DATABASE} > 1|<p>-</p>|average|
|Query Lock on {$DATABASE} > 1|<p>-</p>|average|
|Query Sessions on {$DATABASE} > 250|<p>-</p>|average|
|Zabbix sender failed checks count: {ITEM.LASTVALUE1}|<p>-</p>|average|
|Tablespace {#TABLESPACE} used on {$DATABASE} > {$HIGH} %|<p>-</p>|average|
|ASM Volume {#ASMVOLUME} used > {$ASMHIGH}% ({ITEM.LASTVALUE2} / {ITEM.LASTVALUE1})|<p>-</p>|average|
