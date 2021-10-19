# getWindowsMountPointsToFolders

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Volume Mountpoints filesystem discovery|<p>This Rule only Discover Disk at Mountpoints without Drive-Letters</p>|`Zabbix agent (active)`|vfs.fs.customfolders.windowsmountpoints.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Free disk space on $1|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#DISKNAME},free]<p>Update: 1h</p>|
|Free disk space on $1 (percentage)|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#DISKNAME},pfree]<p>Update: 1h</p>|
|Total disk space on $1|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#DISKNAME},total]<p>Update: 1h</p>|
|Used disk space on $1|<p>-</p>|`Zabbix agent (active)`|vfs.fs.size[{#DISKNAME},used]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Free disk space is less than 1% on volume {#DISKNAME} ({ITEM.LASTVALUE3} Free Space left)|<p>-</p>|disaster|
|Free disk space is less than 5% on volume {#DISKNAME} ({ITEM.LASTVALUE3} Free Space left)|<p>-</p>|high|
|Free disk space is less than 10% on volume {#DISKNAME} ({ITEM.LASTVALUE3} Free Space left)|<p>-</p>|warning|
|Free disk space is less than 20% on volume {#DISKNAME} ({ITEM.LASTVALUE3} Free Space left)|<p>-</p>|information|
