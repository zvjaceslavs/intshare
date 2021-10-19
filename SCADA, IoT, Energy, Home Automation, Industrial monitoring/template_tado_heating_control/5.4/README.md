# Tado Template

## Overview

This is not an official tool from Tado or Zabbix. I just an end user of both.


Zabbix template tested on Zabbix 5.2 running on Raspberry Pi 3.


Need to put a go binary under Zabbix's "ExternalScripts" directory. That Go program source code can find on <https://github.com/alantang888/tado_client_for_zabbix>


It discovery zone. And record temperature, target temperature, humidity and heating power.


 


You need to set marco {$TADO\_USER} and {$TADO\_PASSWD} to your Tado account login and password.

## Author

Alan Tang

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$TADO_PASSWD}|<p>Password for Tado</p>|`****`|Secret macro|
|{$TADO_USER}|<p>Username for Tado</p>|`this_is_dummy_password`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Zones|<p>-</p>|`External check`|tado_client_for_zabbix["-u","{$TADO_USER}","-p","{$TADO_PASSWD}","list_zones"]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Outside Temperature|<p>-</p>|`External check`|tado_client_for_zabbix["-u","{$TADO_USER}","-p","{$TADO_PASSWD}","outside_temp"]<p>Update: 15m</p>|
|Zone {#TADO_ZONE_NAME} Status (LLD)|<p>-</p>|`External check`|tado_client_for_zabbix["-u","{$TADO_USER}","-p","{$TADO_PASSWD}","zone_status","{#TADO_ZONE_ID}"]<p>Update: 5m</p>|
|Zone {#TADO_ZONE_NAME} Heating Power (LLD)|<p>-</p>|`Dependent item`|tado.zone.heating_power_percentage[{#TADO_ZONE_NAME}]<p>Update: 0</p>|
|Zone {#TADO_ZONE_NAME} Humidity (LLD)|<p>-</p>|`Dependent item`|tado.zone.humidity[{#TADO_ZONE_NAME}]<p>Update: 0</p>|
|Zone {#TADO_ZONE_NAME} Target Temperature (LLD)|<p>-</p>|`Dependent item`|tado.zone.target_temp[{#TADO_ZONE_NAME}]<p>Update: 0</p>|
|Zone {#TADO_ZONE_NAME} Temperature (LLD)|<p>-</p>|`Dependent item`|tado.zone.temp[{#TADO_ZONE_NAME}]<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

