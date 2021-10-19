# Huawei UPS

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
|Выходящая активная мощность|<p>-</p>|`SNMP agent`|hwUpsOutputActivePowerA<p>Update: 10s</p>|
|Входящее напряжение|<p>-</p>|`SNMP agent`|hwUpsInputRowStatus<p>Update: 5s</p>|
|Статус батарей|<p>-</p>|`SNMP agent`|hwUpsBatteryRowStatus<p>Update: 30s</p>|
|Напряжение батарей|<p>-</p>|`SNMP agent`|hwUpsBatteryVoltage<p>Update: 10s</p>|
|Модель|<p>-</p>|`SNMP agent`|hwUpsCtrlModelType<p>Update: 2800s</p>|
|Ток батарей|<p>-</p>|`SNMP agent`|hwUpsBatteryCurrent<p>Update: 30s</p>|
|Оставшаяся емкость аккумуляторов|<p>-</p>|`SNMP agent`|hwUpsBatteryCapacityLeft<p>Update: 30s</p>|
|Статус питания|<p>-</p>|`SNMP agent`|hwUpsDevicePowerSupplyMethod<p>Update: 5s</p>|
|Выходящий ток|<p>-</p>|`SNMP agent`|hwUpsOutputCurrentA<p>Update: 10s</p>|
|Выходящая нагрузка %|<p>-</p>|`SNMP agent`|hwUpsOutputLoadA<p>Update: 10s</p>|
|Статус ИБП|<p>-</p>|`SNMP agent`|hwUpsCtrlRowStatus<p>Update: 10s</p>|
|Версия ПО|<p>-</p>|`SNMP agent`|hwUpsDeviceSoftVersion<p>Update: 60m</p>|
|Выходящее напряжение|<p>-</p>|`SNMP agent`|hwUpsOutputVoltageA<p>Update: 10s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} в Бейпасе|<p>-</p>|high|
|{HOSTNAME} источник входного питания нестабилен (менее 100вольт) или отключен|<p>-</p>|high|
|{HOSTNAME} нет питания|<p>-</p>|high|
|{HOSTNAME} работает от Батарей|<p>-</p>|high|
|Высокая Выходная нагрузка на {HOST.NAME}|<p>-</p>|warning|
