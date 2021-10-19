# Template App Kaspersky

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
|Host licença expirada|<p>O número de hosts com a licença expirada.</p>|`SNMP agent`|hostsLicenceExpired.0<p>Update: 1d</p>|
|Licença expirando em 7 dias|<p>O número de hosts com a licença expirando. A licença considera expirar se expirou menos de 7 dias.</p>|`SNMP agent`|hostsLicenceExpiring.0<p>Update: 1d</p>|
|Hosts sem conexão|<p>O número de hosts que não está conectado ao servidor por um longo tempo.</p>|`SNMP agent`|hostsNotConnectedLongTime.0<p>Update: 5h</p>|
|Hosts não verificados|<p>O número de hosts que não foram verificados ultimamente.</p>|`SNMP agent`|hostsNotScannedLately.0<p>Update: 200m</p>|
|Status atualização da base|<p>Status atualizado da base</p>|`SNMP agent`|updatesStatus.0<p>Update: 5h</p>|
|Número de host|<p>O número de hosts na console</p>|`SNMP agent`|hostsInGroups.0<p>Update: 1d</p>|
|Quantidade de Eventos Criticos|<p>O número de eventos críticos no servidor.</p>|`SNMP agent`|criticalEventsCount.0<p>Update: 10m</p>|
|Número de host com Antivirus|<p>O número de hosts com software antivírus.</p>|`SNMP agent`|hostsWithAntivirus.0<p>Update: 1d</p>|
|Número de Host com vírus Unprocessed Files|<p>O número de hosts com objetos Unprocessed Files</p>|`SNMP agent`|hostsNotCuredObject.0<p>Update: 20m</p>|
|Ultimo update|<p>A última vez em que o servidor foi atualizado</p>|`SNMP agent`|lastServerUpdateTime.0<p>Update: 700m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Mais de 15 host com licença expirada|<p>-</p>|warning|
