# Template OCE ColorWave 500

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
|Счетчик тонера - Цветной САПР|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.10.0<p>Update: 3h</p>|
|Общая площадь|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.7.0<p>Update: 3h</p>|
|Счетчик тонера - смешанный|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.11.0<p>Update: 3h</p>|
|OCE500 SN|<p>-</p>|`SNMP agent`|OCE500.SN<p>Update: 3h</p>|
|TAC - черно-белый|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.1.0<p>Update: 3h</p>|
|Общая площадь - Черно-белый САПР|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.13.0<p>Update: 3h</p>|
|OCE500.Toner.Cyan.level.now|<p>Cyan Toner level now.</p>|`SNMP agent`|OCE500.Toner.Cyan.level.now<p>Update: 100</p>|
|Счетчик тонера - Черно-белый САПР|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.9.0<p>Update: 3h</p>|
|OCE500.Toner.Black.level.now|<p>Black Toner level now.</p>|`SNMP agent`|OCE500.Toner.Black.level.now<p>Update: 100</p>|
|Счетчик тонера - пурпурный|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.4.0<p>Update: 3h</p>|
|Счетчик тонера - черный|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.6.0<p>Update: 3h</p>|
|OCE500.Toner.Magenta.level.now|<p>Magenta Toner level now.</p>|`SNMP agent`|OCE500.Toner.Magenta.level.now<p>Update: 100</p>|
|Счетчик тонера - голубой|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.3.0<p>Update: 3h</p>|
|Общая площадь - графика|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.16.0<p>Update: 3h</p>|
|OCE500 IP adress|<p>-</p>|`SNMP agent`|OCE500.system.ip<p>Update: 3h</p>|
|Счетчик тонера - графика|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.12.0<p>Update: 3h</p>|
|Общая площадь - смешанный|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.15.0<p>Update: 3h</p>|
|TAC - цветной|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.2.0<p>Update: 3h</p>|
|Общая длина|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.8.0<p>Update: 3h</p>|
|Общая площадь - цвет для САПР|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.14.0<p>Update: 3h</p>|
|OCE500.Toner.Yellow.level.now|<p>Yellow Toner level now.</p>|`SNMP agent`|OCE500.Toner.Yellow.level.now<p>Update: 100</p>|
|Счетчик тонера - желтый|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.1552.21.3.1.1.5.5.0<p>Update: 3h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Голубой тонер заканчивается {HOSTNAME} (<10%)|<p>-</p>|warning|
|Голубой тонер заканчивается {HOSTNAME} (<20%)|<p>-</p>|information|
|Желтый тонер заканчивается {HOSTNAME} (<10%)|<p>-</p>|warning|
|Желтый тонер заканчивается {HOSTNAME} (<20%)|<p>-</p>|information|
|Пурпурный тонер заканчивается {HOSTNAME} (<10%)|<p>-</p>|warning|
|Пурпурный тонер заканчивается {HOSTNAME} (<20%)|<p>-</p>|information|
|Черный тонер заканчиваетсяся {HOSTNAME} (<10%)|<p>-</p>|warning|
|Черный тонер заканчиваетсяся {HOSTNAME} (<20%)|<p>-</p>|information|
