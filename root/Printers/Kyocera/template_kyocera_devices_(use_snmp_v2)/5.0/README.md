# Принтеры Киосера v2

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
|Kyocera Detect|<p>-</p>|`SNMP agent`|find.device<p>Update: 15</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Модель|<p>-</p>|`SNMP agent`|model.device<p>Update: 86400</p>|
|Сколько бумаги помещается в лоток|<p>-</p>|`SNMP agent`|paper.device<p>Update: 86400</p>|
|Расположение|<p>-</p>|`SNMP agent`|whereis.device<p>Update: 86400</p>|
|Ресурс картриджа|<p>-</p>|`SNMP agent`|tonerboxpages.device<p>Update: 86400</p>|
|Поддержка сканирования|<p>-</p>|`SNMP agent`|scaner.device<p>Update: 86400</p>|
|Страниц откопировано|<p>-</p>|`SNMP agent`|copy.device<p>Update: 1800</p>|
|Всего отсканировано и копировано страниц|<p>-</p>|`SNMP agent`|scantotal.device<p>Update: 3600</p>|
|Остаток тонера в картридже|<p>-</p>|`SNMP agent`|tonergramms.device<p>Update: 60</p>|
|Модель картриджа|<p>-</p>|`SNMP agent`|tonerbox.device<p>Update: 30</p>|
|Отпечатано страниц А4|<p>-</p>|`SNMP agent`|a4.device<p>Update: 1800</p>|
|Время Uptime|<p>-</p>|`SNMP agent`|uptime.device<p>Update: 60</p>|
|Код ошибки|<p>-</p>|`SNMP agent`|error.device<p>Update: 10</p>|
|MAC Address|<p>-</p>|`SNMP agent`|mac.device<p>Update: 86400</p>|
|Серийный номер|<p>-</p>|`SNMP agent`|sn.device<p>Update: 86400</p>|
|Отсканировано страниц|<p>-</p>|`SNMP agent`|scan.device<p>Update: 1800</p>|
|Версия программного обеспеченгия|<p>-</p>|`SNMP agent`|firmware.device<p>Update: 86400</p>|
|Статус принтера|<p>-</p>|`SNMP agent`|status.device<p>Update: 10</p>|
|Отпечатано страниц всего|<p>-</p>|`SNMP agent`|a4total.device<p>Update: 1800</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Бумага застряла в принтере. Нужно вытащить бумагу|<p>-</p>|information|
|Замените тонер|<p>-</p>|information|
|Замените тонер|<p>-</p>|information|
|Замените тонер|<p>-</p>|information|
|Замятие бумаги. Произошла ошибка.|<p>-</p>|information|
|Мало тонера, замените пожалуйста|<p>-</p>|information|
|Необходим сервис. Требуется внимание специалиста.|<p>-</p>|information|
|Нет бумаги в принтере|<p>-</p>|information|
|Открыта дверца принтера|<p>-</p>|information|
|Узел проявки не установлен или принтер требует внимания|<p>-</p>|high|
