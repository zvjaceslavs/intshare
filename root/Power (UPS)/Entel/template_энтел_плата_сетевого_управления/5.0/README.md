# ENTEL 1PH UPS

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
|Частота выхода|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 10</p>|
|Время работы от АКБ|<p>-</p>|`SNMP agent`|upsSecondsOnBattery<p>Update: 30</p>|
|Статус АКБ|<p>-</p>|`SNMP agent`|upsBatteryStatus<p>Update: 30</p>|
|Напряжение АКБ|<p>-</p>|`SNMP agent`|upsBatteryVoltage<p>Update: 30</p>|
|Заряд АКБ|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 30</p>|
|Расчетное время автономии|<p>-</p>|`SNMP agent`|upsEstimatedMinutesRemaining<p>Update: 30</p>|
|Напряжение выхода|<p>-</p>|`SNMP agent`|upsOutputVoltage<p>Update: 30</p>|
|Режим работы|<p>-</p>|`SNMP agent`|upsOutputSource<p>Update: 10</p>|
|Температура АКБ|<p>-</p>|`SNMP agent`|upsBatteryTemperature<p>Update: 30</p>|
|Нагрузка в процентах|<p>-</p>|`SNMP agent`|upsOutputPercentLoad<p>Update: 30</p>|
|Частота входа|<p>-</p>|`SNMP agent`|upsInputFrequency<p>Update: 30</p>|
|Напряжение входа|<p>-</p>|`SNMP agent`|upsInputVoltage<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Высокое входное напряжение на {HOST.NAME}|<p>Высокое входное напряжение на {HOST.NAME}</p>|high|
|ИБП {HOST.NAME} Высокая температура АКБ|<p>ИБП {HOST.NAME} Низкая температура АКБ</p>|warning|
|ИБП {HOST.NAME} Низкая температура АКБ|<p>ИБП {HOST.NAME} Низкая температура АКБ</p>|warning|
|ИБП {HOST.NAME} не отвечает на запросы  в течение 5 минут|<p>ИБП {HOST.NAME} не отвечает на запросы в течение 5 минут</p>|information|
|ИБП {HOST.NAME} работает в режиме Байпас|<p>ИБП {HOST.NAME} работает в режиме Байпас</p>|warning|
|ИБП {HOST.NAME} работает от АКБ|<p>ИБП {HOST.NAME} работает от АКБ</p>|high|
|Критическая нагрузка на {HOST.NAME}|<p>Критическая нагрузка на {HOST.NAME}</p>|high|
|Малый заряд АКБ на {HOST.NAME}|<p>Малый заряд АКБ на {HOST.NAME}</p>|high|
|Низкое входное напряжение на {HOST.NAME}|<p>Низкое входное напряжение на {HOST.NAME}</p>|high|
|Перегрузка на {HOST.NAME}|<p>Перегрузка на {HOST.NAME}</p>|disaster|
