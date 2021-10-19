# Template_Arcserve UDP VM Backup Check

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ARCSERVE_DOMAIN}|<p>-</p>|``|Text macro|
|{$ARCSERVE_HOST}|<p>-</p>|``|Text macro|
|{$ARCSERVE_PASS}|<p>-</p>|``|Text macro|
|{$ARCSERVE_USER}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Arcserve UDP JobCancelledCount|<p>Arcserve UDP JobCancelledCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobCancelledCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobFailedCount|<p>Arcserve UDP JobFailedCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobFailedCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobIdleCount|<p>Arcserve UDP JobIdleCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobIdleCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobIncompleteCount|<p>Arcserve UDP JobIncompleteCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobIncompleteCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobInProgressCount|<p>Arcserve UDP JobInProgressCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobInProgressCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobMissedCount|<p>Arcserve UDP JobMissedCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobMissedCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobOtherCount|<p>Arcserve UDP JobOtherCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobOtherCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobSuccessCount|<p>Arcserve UDP JobSuccessCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobSuccessCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|Arcserve UDP JobWaitingCount|<p>Arcserve UDP JobWaitingCount from VM Backups</p>|`Zabbix agent`|custom.arcserveudpvm[{$ARCSERVE_DOMAIN},{$ARCSERVE_USER},{$ARCSERVE_PASS},"JobWaitingCount",{$ARCSERVE_HOST}]<p>Update: 5m</p>|
|ArcserveBackup: Arcserve UDP-Identitätsdienst|<p>-</p>|`Zabbix agent`|service_state[ArcserveUDPIS]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve UDP-Verwaltungsport-Freigabedienst|<p>-</p>|`Zabbix agent`|service_state[ArcserveUDPPS]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve Event Log Watch|<p>-</p>|`Zabbix agent`|service_state[ASLogWatch]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve UDP-Verwaltungsdienst|<p>-</p>|`Zabbix agent`|service_state[CAARCAppSvc]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve UDP-Aktualisierungsdienst|<p>-</p>|`Zabbix agent`|service_state[CAARCUpdateSvc]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve UDP-Agent-Dienst|<p>-</p>|`Zabbix agent`|service_state[CASAD2DWebSvc]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve UDP-RPS-Port-Freigabedienst|<p>-</p>|`Zabbix agent`|service_state[CASARPSWebSvc]<p>Update: 2m</p>|
|ArcserveBackup: Arcserve UDP-RPS-Datenspeicherdienst|<p>-</p>|`Zabbix agent`|service_state[CASDatastoreSvc]<p>Update: 2m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Arcserver UDP all VM Backup missed|<p>Arcserve UDP all VM Backup are MISSED count.</p>|high|
|Arcserver UDP VM Backup cancelled|<p>Arcserve VM Backup VM Backup cancelled count.</p>|warning|
|Arcserver UDP VM Backup failed|<p>Arcserve VM Backup FAILED count.</p>|high|
|Arcserver UDP VM Backup incomplete|<p>Arcserve VM Backup INCOMPLETE count.</p>|average|
|Arcserver UDP VM Backup active|<p>Arcserve VM Backup running.</p>|information|
|Arcserver UDP VM Backup missed|<p>Arcserve VM Backup MISSED count.</p>|average|
|Arcserver UDP VM Backup other|<p>Arcserve VM Backup VM Backup other count.</p>|information|
|Arcserver UDP VM Backup OK|<p>Arcserve VM Backup OK count.</p>|not classified|
|{HOST.NAME} - ArcserveBackup - UDP-Verwaltungsport-Freigabedienst|<p>The Arcserve UDP-Verwaltungsport-Freigabedienst service is not running on this server.</p>|average|
|{HOST.NAME} - ArcserveBackup - Event Log Watch|<p>Then Arcserve Event Log Watch service is not running on this server.</p>|average|
|{HOST.NAME} - ArcserveBackup - UDP-Verwaltungsdienst|<p>The Arcserve UDP-Verwaltungsdienst service is not running on this server.</p>|average|
|{HOST.NAME} - ArcserveBackup - UDP-Agent-Dienst|<p>The Arcserve UDP-Agent-Dienst service is not running on this server.</p>|average|
|{HOST.NAME} - ArcserveBackup - UDP-RPS-Port-Freigabedienst|<p>The Arcserve UDP-RPS-Port-Freigabedienst service is not running on this server.</p>|average|
|{HOST.NAME} - ArcserveBackup - UDP-RPS-Datenspeicherdienst|<p>The Arcserve UDP-RPS-Datenspeicherdienst service is not running on this server.</p>|average|
