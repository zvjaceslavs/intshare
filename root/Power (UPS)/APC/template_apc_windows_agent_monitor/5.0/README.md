# APC Windows agent monitor

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
|ИБП на батарее|<p>UPS On Battery</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,2000,,skip]<p>Update: 30s</p>|
|Требуется замена батареи|<p>Battery Needs Replacing</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,3016,,skip]<p>Update: 5m</p>|
|Связь с ИБП не установлена|<p>Communication Not Established</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,3005,,skip]<p>Update: 5m</p>|
|Батарея разряжена (ЖОПА!)|<p>Батарея разряжена Low Battery Condition</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,2003,,skip]<p>Update: 30s</p>|
|Превышен порог времени работы от батареи|<p>Time On Battery Threshold Exceeded</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,2060,,skip]<p>Update: 1m</p>|
|Повышение напряжения в электросети|<p>AVR Trim Active</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,2007,,skip]<p>Update: 5m</p>|
|Потеряна связь с ИБП|<p>Lost Communication With UPS</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,3000,,skip]<p>Update: 5m</p>|
|Падение напряжения в электросети|<p>AVR Boost Active</p>|`Zabbix agent (active)`|eventlog[Application,,,APCPBEAgent,0,,skip]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} Батарея разряжена|<p>Low Battery Condition</p>|disaster|
|{HOSTNAME} ИБП на батарее|<p>UPS On Battery</p>|high|
|{HOSTNAME} Падение напряжения в электросети|<p>AVR Boost Active</p>|average|
|{HOSTNAME} Повышение напряжения в электросети|<p>AVR Trim Active</p>|average|
|{HOSTNAME} Потеряна связь с ИБП|<p>Lost Communication With UPS</p>|high|
|{HOSTNAME} Превышен порог времени работы от батареи|<p>Time On Battery Threshold Exceeded</p>|disaster|
|{HOSTNAME} Связь с ИБП не установлена|<p>Communication Not Established</p>|average|
|{HOSTNAME} Требуется замена батареи|<p>Battery Needs Replacing</p>|disaster|
