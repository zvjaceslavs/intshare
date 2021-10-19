# Template SAP Availability Linux

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
|sap.discovery|<p>-</p>|`Zabbix agent`|sap.availability[database]<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|[$2 - $3] [ HDB CompileServer ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbcompileserver,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
|[$2 - $3] [ HDB Daemon ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbdaemon,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
|[$2 - $3] [ HDB IndexServer ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbindexserver,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
|[$2 - $3] [ HDB NameServer ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbnameserver,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
|[$2 - $3] [ HDB PreProcessor ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbpreprocessor,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
|[$2 - $3] [ HDB Webdispatcher ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbwebdispatcher,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
|[$2 - $3] [ HDB Engine ]|<p>-</p>|`Zabbix agent`|sap.availability[hdbxsengine,{#COD_ID},{#NAME_ID}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} - Process CompileServer is not running|<p>-</p>|disaster|
|{HOSTNAME} - Process Daemon is not running|<p>-</p>|disaster|
|{HOSTNAME} - Process Engine is not running|<p>-</p>|disaster|
|{HOSTNAME} - Process IndexServer is not running|<p>-</p>|disaster|
|{HOSTNAME} - Process NameServer is not running|<p>-</p>|disaster|
|{HOSTNAME} - Process  PreProcessor is not running|<p>-</p>|disaster|
|{HOSTNAME} - Process  Webdispatcher is not running|<p>-</p>|disaster|
