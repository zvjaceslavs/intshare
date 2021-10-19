# Template OS Windows Disk Space

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DISK_UTIL_CRIT}|<p>-</p>|`200M`|Text macro|
|{$DISK_UTIL_WARN}|<p>-</p>|`2G`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Mounted filesystem discovery|<p>Discovery of file systems of different types as defined in global regular expression "File systems for discovery".</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Free disk space on {#FSNAME}|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},free]<p>Update: 60</p>|
|Free disk space on {#FSNAME} (percentage)|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},pfree]<p>Update: 60</p>|
|Total disk space on {#FSNAME}|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},total]<p>Update: 3600</p>|
|Used disk space on {#FSNAME}|<p>-</p>|`Zabbix agent`|vfs.fs.size[{#FSNAME},used]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Free disk space on {HOST.NAME} is less than {$DISK_UTIL_CRIT} on volume {#FSNAME}|<p>-</p>|average|
|Free disk space on {HOST.NAME} is less than {$DISK_UTIL_WARN} on volume {#FSNAME}|<p>-</p>|warning|
