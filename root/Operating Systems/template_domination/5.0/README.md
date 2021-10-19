# Domination

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
|DnDiskNum|<p>-</p>|`SNMP agent`|DnDiskNum<p>Update: 5m</p>|
|DnCamNo|<p>-</p>|`SNMP agent`|DnCamNo<p>Update: 5m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Серийный номер видеосервера|<p>-</p>|`SNMP agent`|DnSerial<p>Update: 24h</p>|
|Количество неисправных HDD|<p>-</p>|`SNMP agent`|DnDiskFailedNum<p>Update: 10m</p>|
|Порт Видеосервера|<p>-</p>|`SNMP agent`|DnPort<p>Update: 24h</p>|
|Кол-во подключенных пользователей|<p>Количество соединений (клиентов, пользователей), подключенных к видеосерверу.</p>|`SNMP agent`|DnREALCLIENTS<p>Update: 30s</p>|
|Количество архивных подключений|<p>Количество архивных подключений к серверу.</p>|`SNMP agent`|DnPLAYERCONNECTIONS<p>Update: 30s</p>|
|Скорость записи на HDD|<p>Скорость записи (Кбайт/сек) на HDD. При включенной функции "зеркалирования" архива значение удваивается.</p>|`SNMP agent`|DnRECORD_SPEED<p>Update: 30s</p>|
|Нагрузка процессора .|<p>Нагрузка (%) процессора видеосервера.</p>|`SNMP agent`|DnCPU_LOAD<p>Update: 1m</p>|
|Входящий трафик|<p>-</p>|`SNMP agent`|Dn_RX_SPEED<p>Update: 30s</p>|
|Число потерянных кадров|<p>Число потерянных кадров от камер, которое не успевают записывать HDD видеосервера.</p>|`SNMP agent`|DnStorageDroppedFrames<p>Update: 30s</p>|
|Исходящий трафик|<p>-</p>|`SNMP agent`|Dn_TX_SPEED<p>Update: 30s</p>|
|IP-адрес видеосервера|<p>-</p>|`SNMP agent`|DnIP<p>Update: 10m</p>|
|Свободное место HDD $1|<p>-</p>|`SNMP agent`|DnDiskFreeSpace[{#SNMPINDEX}]<p>Update: 5m</p>|
|Жесткий диск $1|<p>-</p>|`SNMP agent`|DnDiskIndex[{#SNMPINDEX}]<p>Update: 30s</p>|
|Модель и SN HDD $1|<p>-</p>|`SNMP agent`|DnDiskSerial[{#SNMPINDEX}]<p>Update: 24h</p>|
|Статус HDD $1|<p>-</p>|`SNMP agent`|DnDiskStatus[{#SNMPINDEX}]<p>Update: 5m</p>|
|Объем HDD $1|<p>-</p>|`SNMP agent`|DnDiskTotalSpace[{#SNMPINDEX}]<p>Update: 24h</p>|
|IP-адрес камеры $1|<p>-</p>|`SNMP agent`|CamIPAddress.[{#SNMPINDEX}]<p>Update: 5m</p>|
|Состояние камеры $1|<p>-</p>|`SNMP agent`|DnCamConnected.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Состояние канала $1|<p>-</p>|`SNMP agent`|DnCamEnabled.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Количество FPS 1-го потока камеры $1|<p>-</p>|`SNMP agent`|DnCamFramerate.[{#SNMPINDEX}]<p>Update: 2m</p>|
|Статус второго потока Камера $1|<p>-</p>|`SNMP agent`|DnCamHasSubstream.[{#SNMPINDEX}]<p>Update: 2m</p>|
## Triggers

There are no triggers in this template.

