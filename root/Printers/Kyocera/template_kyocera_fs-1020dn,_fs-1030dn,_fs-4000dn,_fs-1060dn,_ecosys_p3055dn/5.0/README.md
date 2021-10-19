# Принтеры Kyocera

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
|KyoceraPrint|<p>-</p>|`SNMP agent`|KyoceraPrint<p>Update: 60</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Строка состояния1|<p>-</p>|`SNMP agent`|StatusStr1<p>Update: 3600</p>|
|Сетевой интерфейс|<p>-</p>|`SNMP agent`|NetworkInterface<p>Update: 3600</p>|
|Количество тонера|<p>-</p>|`Calculated`|Persent<p>Update: 60</p>|
|Код ошибки|<p>-</p>|`SNMP agent`|ErrorCode<p>Update: 60</p>|
|Контактная информация|<p>snmp/snmp.htm</p>|`SNMP agent`|sysContact<p>Update: 3600</p>|
|Отпечатанно страниц|<p>Общее количество отпечатанных страниц</p>|`SNMP agent`|PageCounter<p>Update: 60</p>|
|Серийный номер|<p>-</p>|`SNMP agent`|SerialNumber<p>Update: 3600</p>|
|Местоположение|<p>-</p>|`SNMP agent`|sysLocation<p>Update: 3600</p>|
|Тонер: текущее кол-во|<p>-</p>|`SNMP agent`|TonerCurrent<p>Update: 60</p>|
|Модель|<p>-</p>|`SNMP agent`|ModelName<p>Update: 3600</p>|
|Строка состояния2|<p>-</p>|`SNMP agent`|StatusStr2<p>Update: 3600</p>|
|Тонер: максимальное кол-во|<p>-</p>|`SNMP agent`|TonerMax<p>Update: 60</p>|
|Время работы|<p>Время работы с момента последнего включения</p>|`SNMP agent`|UpTime<p>Update: 60</p>|
|Тип картриджа|<p>-</p>|`SNMP agent`|TonerBox<p>Update: 3600</p>|
|Имя|<p>snmp/snmp.htm</p>|`SNMP agent`|sysName<p>Update: 3600</p>|
|MAC адрес|<p>-</p>|`SNMP agent`|MAC<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Замените тонер (12)|<p>Нужно заменить тонер</p>|average|
|Замените тонер (18)|<p>Нужно заменить тонер</p>|average|
|Замените тонер (4096)|<p>Нужно заменить тонер</p>|average|
|Тонера меньше $1%|<p>Нужно добавить тонер {Kyocera Printers:Persent.last(0)}<5</p>|information|
