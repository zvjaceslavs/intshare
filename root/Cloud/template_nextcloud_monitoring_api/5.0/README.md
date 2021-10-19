# Template App Nextcloud Monitoring API

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CLOUD_ADMIN_PW}|<p>-</p>|`password`|Text macro|
|{$CLOUD_ADMIN_USER}|<p>-</p>|`user`|Text macro|
|{$FQDN_NEXTCLOUD}|<p>-</p>|`nextcloud.domain.com`|Text macro|
|{$HTTP_OR_HTTPS}|<p>-</p>|`https`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Nextcloud Number of Storages|<p>Nextcloud Number of Storages</p>|`Dependent item`|nextcloud.storage.numstorages<p>Update: 0</p>|
|Nextcloud Apps Installed|<p>Nextcloud Apps Installed</p>|`Dependent item`|nextcloud.system.apps.numinstalled<p>Update: 0</p>|
|Nextcloud Database Type|<p>Nextcloud Dababase Type</p>|`Dependent item`|nextcloud.server.database.type<p>Update: 0</p>|
|Nextcloud Monitoring API|<p>Master Item - Nextcloud Monitoring API</p>|`Zabbix agent`|system.run[curl -s --user {$CLOUD_ADMIN_USER}:{$CLOUD_ADMIN_PW}  {$HTTP_OR_HTTPS}://{$FQDN_NEXTCLOUD}/ocs/v2.php/apps/serverinfo/api/v1/info]<p>Update: 1m</p>|
|Nextcloud Webserver|<p>Nextcloud Webserver</p>|`Dependent item`|nextcloud.server.webserver<p>Update: 0</p>|
|Nextcloud PHP Memory Limit|<p>Nextcloud PHP Memory Limit</p>|`Dependent item`|nextcloud.php.memlimit<p>Update: 0</p>|
|Nextcloud Apps Needing Update|<p>Nextcloud Apps Needing Update</p>|`Dependent item`|nextcloud.system.apps.needingupdate<p>Update: 0</p>|
|Nextcloud PHP Version|<p>Nextcloud PHP Version</p>|`Dependent item`|nextcloud.php.version<p>Update: 0</p>|
|Nextcloud PHP Upload Max. Filesize|<p>Nextcloud PHP Upload Max. Filesize</p>|`Dependent item`|nextcloud.php.upmaxfilesize<p>Update: 0</p>|
|Nextcloud Version|<p>Nextcloud Version</p>|`Dependent item`|nextcloud.system.version<p>Update: 0</p>|
|Nextcloud Storage Users|<p>Nextcloud Storage Users</p>|`Dependent item`|nextcloud.storage.numusers<p>Update: 0</p>|
|Nextcloud Database Version|<p>Nextcloud Dababase Version</p>|`Dependent item`|nextcloud.server.database.version<p>Update: 0</p>|
|Nextcloud Storage Freespace|<p>Nextcloud Storage Freespace</p>|`Dependent item`|nextcloud.storage.freespace<p>Update: 0</p>|
|Nextcloud Database Size|<p>Nextcloud Dababase Type</p>|`Dependent item`|nextcloud.server.database.size<p>Update: 0</p>|
|Nextcloud Storage Files|<p>Nextcloud Storage Files</p>|`Dependent item`|nextcloud.storage.numfiles<p>Update: 0</p>|
|Nextcloud PHP Max. Execution Time|<p>Nextcloud PHP Max. Execution Time</p>|`Dependent item`|nextcloud.php.maxexectime<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Nextcloud Application Updates available|<p>-</p>|information|
