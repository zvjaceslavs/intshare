# Template Huawei OceanStor Rest-API v2

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$API_PASSWORD}|<p>-</p>|``|Text macro|
|{$API_PORT}|<p>-</p>|`8088`|Text macro|
|{$API_USER}|<p>-</p>|``|Text macro|
|{$SUBSCRIBED_PERCENT}|<p>-</p>|`91`|Text macro|
|{$USED_PERCENT}|<p>-</p>|`91`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DiskDomain|<p>-</p>|`Zabbix trapper`|diskpool<p>Update: 0</p>|
|Lun|<p>-</p>|`Zabbix trapper`|lun<p>Update: 0</p>|
|PortFibreChannel|<p>-</p>|`Zabbix trapper`|fc_port<p>Update: 0</p>|
|BBU|<p>-</p>|`Zabbix trapper`|backup_power<p>Update: 0</p>|
|PSU|<p>-</p>|`Zabbix trapper`|power<p>Update: 0</p>|
|FAN|<p>-</p>|`Zabbix trapper`|fan<p>Update: 0</p>|
|Controller|<p>-</p>|`Zabbix trapper`|controller<p>Update: 0</p>|
|InterfaceModule|<p>-</p>|`Zabbix trapper`|intf_module<p>Update: 0</p>|
|Pool|<p>-</p>|`Zabbix trapper`|storagepool<p>Update: 0</p>|
|Disk|<p>-</p>|`Zabbix trapper`|disk<p>Update: 0</p>|
|PortEth|<p>-</p>|`Zabbix trapper`|eth_port<p>Update: 0</p>|
|Enclosure|<p>-</p>|`Zabbix trapper`|enclosure<p>Update: 0</p>|
|ExpBoard|<p>-</p>|`Zabbix trapper`|expboard<p>Update: 0</p>|
|PortSAS|<p>-</p>|`Zabbix trapper`|sas_port<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|get discovery|<p>-</p>|`External check`|huawei_get_state.py["--api_ip={HOST.IP}","--api_port={$API_PORT}","--api_user={$API_USER}","--api_password={$API_PASSWORD}","--storage_name={HOST.NAME}","--discovery"]<p>Update: 1h</p>|
|get health state|<p>-</p>|`External check`|huawei_get_state.py["--api_ip={HOST.IP}","--api_port={$API_PORT}","--api_user={$API_USER}","--api_password={$API_PASSWORD}","--storage_name={HOST.NAME}","--status"]<p>Update: 1m</p>|
|Health status of a DiskDomain "{#NAME}"|<p>-</p>|`Zabbix trapper`|health.diskpool.[{#NAME}]<p>Update: 0</p>|
|Running status of a DiskDomain "{#NAME}"|<p>-</p>|`Zabbix trapper`|running.diskpool.[{#NAME}]<p>Update: 0</p>|
|Health status of the LUN "{#NAME}"|<p>-</p>|`Zabbix trapper`|health.lun.[{#NAME}]<p>Update: 0</p>|
|Running status of the LUN "{#NAME}"|<p>-</p>|`Zabbix trapper`|running.lun.[{#NAME}]<p>Update: 0</p>|
|Health status of a Fibre Channel port "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.fc_port.[{#LOCATION}]<p>Update: 0</p>|
|Running status of a Fibre Channel port "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.fc_port.[{#LOCATION}]<p>Update: 0</p>|
|Health status of a BBU "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.backup_power.[{#LOCATION}]<p>Update: 0</p>|
|Running status of a BBU "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.backup_power.[{#LOCATION}]<p>Update: 0</p>|
|Health Status of a PSU "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.power.[{#LOCATION}]<p>Update: 0</p>|
|Running Status of a PSU "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.power.[{#LOCATION}]<p>Update: 0</p>|
|Health Status of a FAN "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.fan.[{#LOCATION}]<p>Update: 0</p>|
|Running status of a FAN "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.fan.[{#LOCATION}]<p>Update: 0</p>|
|Health status of a Controller "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.controller.[{#LOCATION}]<p>Update: 0</p>|
|Running status of a Controller "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.controller.[{#LOCATION}]<p>Update: 0</p>|
|Health status of an interface module "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.intf_module.[{#LOCATION}]<p>Update: 0</p>|
|Running status of an interface module "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.intf_module.[{#LOCATION}]<p>Update: 0</p>|
|Free capacity of a Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|free.capacity.storagepool.[{#NAME}]<p>Update: 0</p>|
|Health status of a Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|health.storagepool.[{#NAME}]<p>Update: 0</p>|
|Running status of a Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|running.storagepool.[{#NAME}]<p>Update: 0</p>|
|Subscribed capacity of a Pool "{#NAME}" in percent|<p>-</p>|`Calculated`|subscribed.capacity.percent.storagepool.[{#NAME}]<p>Update: 3m</p>|
|Subscribed capacity of a Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|subscribed.capacity.storagepool.[{#NAME}]<p>Update: 0</p>|
|Total capacity of a Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|total.capacity.storagepool.[{#NAME}]<p>Update: 0</p>|
|Used capacity of a Pool "{#NAME}" in percent|<p>-</p>|`Calculated`|used.capacity.percent.storagepool.[{#NAME}]<p>Update: 3m</p>|
|Used capacity of a Pool "{#NAME}"|<p>-</p>|`Zabbix trapper`|used.capacity.storagepool.[{#NAME}]<p>Update: 0</p>|
|Health status of disk "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.disk.[{#LOCATION}]<p>Update: 0</p>|
|Running status of disk "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.disk.[{#LOCATION}]<p>Update: 0</p>|
|Health status of an Ethernet port "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.eth_port.[{#LOCATION}]<p>Update: 0</p>|
|Running status of an Ethernet port "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.eth_port.[{#LOCATION}]<p>Update: 0</p>|
|Health status of an enclosure "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.enclosure.[{#LOCATION}]<p>Update: 0</p>|
|Running status of an enclosure "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.enclosure.[{#LOCATION}]<p>Update: 0</p>|
|Health status of an expansion module "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.expboard.[{#LOCATION}]<p>Update: 0</p>|
|Running status of an expansion module "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.expboard.[{#LOCATION}]<p>Update: 0</p>|
|Health status of a SAS port "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|health.sas_port.[{#LOCATION}]<p>Update: 0</p>|
|Running status of a SAS port "{#LOCATION}"|<p>-</p>|`Zabbix trapper`|running.sas_port.[{#LOCATION}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Error occurs on sending metrics|<p>-</p>|high|
|No data from storage in next 1 hour|<p>-</p>|high|
|DiskDomain "{#NAME}" health status is {ITEM.VALUE}|<p>-</p>|disaster|
|DiskDomain "{#NAME}" running status is {ITEM.VALUE}|<p>-</p>|disaster|
|LUN "{#NAME}" health status is {ITEM.VALUE}|<p>-</p>|high|
|LUN "{#NAME}" running status is {ITEM.VALUE}|<p>-</p>|high|
|PortFibreChannel "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|PortFibreChannel "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|BBU "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|BBU "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|PSU "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|PSU "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|FAN "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|FAN "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|Controller "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|Controller "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|InterfaceModule "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|InterfaceModule "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|Pool "{#NAME}" health status is {ITEM.VALUE}|<p>-</p>|disaster|
|Pool "{#NAME}" running status is {ITEM.VALUE}|<p>-</p>|disaster|
|Subscribed capacity on pool "{#NAME}" > {$SUBSCRIBED_PERCENT:"{#NAME}"}%|<p>-</p>|high|
|Used capacity on pool "{#NAME}" > {$USED_PERCENT:"{#NAME}"}%|<p>-</p>|high|
|Hard disk "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|Hard disk "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|PortEth "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|PortEth "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|Enclosure "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|Enclosure "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|ExpBoard "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|ExpBoard "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
|PortSAS "{#LOCATION}" health status is {ITEM.VALUE}|<p>-</p>|high|
|PortSAS "{#LOCATION}" running status is {ITEM.VALUE}|<p>-</p>|high|
