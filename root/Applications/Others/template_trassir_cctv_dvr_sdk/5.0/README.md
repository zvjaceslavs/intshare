# Trassir-server

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
|Trassir archive sub days depth|<p>Текущая глубина архива дополнительного потока, в днях</p>|`Dependent item`|trassirdisksstatsubsdays<p>Update: 0</p>|
|Trassir server uptime|<p>Время работы сервера, в сек</p>|`Dependent item`|trassiruptime<p>Update: 0</p>|
|Trassir automation status|<p>Наличие ошибок при выполнении скриптов на данном сервере</p>|`Dependent item`|trassirautomation<p>Update: 0</p>|
|Trassir database status|<p>Наличие ошибок при подключении к базе данных сервера</p>|`Dependent item`|trassirdatabase<p>Update: 0</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Trassir archive privilege days depth|<p>Текущая глубина архива привилегированных каналов, в днях</p>|`Dependent item`|trassirdisksstatprivdays<p>Update: 0</p>|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Trassir SDK connection status|<p>Статус подключения к trassir SDK</p>|`Dependent item`|trassirsdkstatus<p>Update: 0</p>|
|Trassir channels online|<p>Количество камер, работающих без ошибок</p>|`Dependent item`|trassirchannelsonline<p>Update: 0</p>|
|Trassir server health string|<p>-</p>|`HTTP agent`|trassirhealthjson<p>Update: 60</p>|
|Trassir archive main days depth|<p>Текущая глубина архива основного потока, в днях</p>|`Dependent item`|trassirdisksstatmaindays<p>Update: 0</p>|
|Trassir disks status|<p>Наличие ошибок при работе дисков сервера</p>|`Dependent item`|trassirdisks<p>Update: 0</p>|
|Trassir network status|<p>Наличие ошибок в сетевых подключениях к другим серверам</p>|`Dependent item`|trassirnetwork<p>Update: 0</p>|
|Trassir channels total|<p>Общее количество подключенных камер</p>|`Dependent item`|trassirchannelstotal<p>Update: 0</p>|
|Trassir server cpu load|<p>Текущая загрузка центрального процессора сервера, в %</p>|`Dependent item`|trassircpuload<p>Update: 0</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|Archive depth on main channels is too low|<p>Глубина архива по основным каналом меньше заданного лимита.</p>|average|
|No new data from trassir server|<p>Невозможно получить новые данные о сервере trassir</p>|high|
|Not all cams online on trassir server|<p>-</p>|average|
|Trassir server automation problem|<p>Наличие ошибок при выполнении скриптов на данном сервере</p>|average|
|Trassir server cpu load too high|<p>-</p>|high|
|Trassir server database problem|<p>Наличие ошибок при подключении к базе данных сервера</p>|average|
|Trassir server disks problem|<p>Наличие ошибок при работе дисков сервера</p>|average|
|Trassir server network problem|<p>Наличие ошибок в сетевых подключениях к другим серверам</p>|average|
|Trassir server was restarted|<p>-</p>|warning|
|Wrong data from trassir server|<p>Получены неверные данные от сервера. Проверьте пароль.</p>|high|
