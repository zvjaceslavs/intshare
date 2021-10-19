# Template APCUPSd

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
|Температура ИБП|<p>Внутренняя температура ИБП</p>|`Zabbix agent`|ITEMP<p>Update: 3600</p>|
|Текущий статус ИБП|<p>-</p>|`Zabbix agent`|STATUS<p>Update: 3600</p>|
|Количество переходов на питание от батареи с момента запуска apcupsd|<p>-</p>|`Zabbix agent`|NUMXFERS<p>Update: 3600</p>|
|Уровень заряда батареи|<p>-</p>|`Zabbix agent`|BCHARGE<p>Update: 3600</p>|
|Напряжение на входе ИБП|<p>-</p>|`Zabbix agent`|LINEV<p>Update: 600</p>|
|Уровень нагрузки ИБП|<p>-</p>|`Zabbix agent`|LOADPCT<p>Update: 3600</p>|
|Имя ИБП|<p>Имя ИБП</p>|`Zabbix agent`|UPSNAME<p>Update: 3600</p>|
|Текущий статус ИБП 2|<p>-</p>|`Zabbix agent`|STATUS_2<p>Update: 3600</p>|
|Уровень чувствительности ИБП|<p>-</p>|`Zabbix agent`|SENSE<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Батареи отсутствуют|<p>Нужно подключить батареи</p>|high|
|Замените батареи|<p>Нужно заменить батареи</p>|high|
|Работа от батарей|<p>ИБП работет от батарей</p>|information|
