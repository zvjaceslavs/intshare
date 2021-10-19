# Force C150

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
|Interfaces|<p>-</p>|`SNMP agent`|snmp.discovery<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Температура 2 модуль|<p>-</p>|`SNMP agent`|chSysCardTemp_5<p>Update: 30</p>|
|Состояние БП 6|<p>The status of the power supply up (1), down (2)</p>|`SNMP agent`|chSysPowerSupplyOperStatus_6<p>Update: 30</p>|
|Состояние БП 5|<p>The status of the power supply up (1), down (2)</p>|`SNMP agent`|chSysPowerSupplyOperStatus_5<p>Update: 30</p>|
|Температура 3 модуль|<p>-</p>|`SNMP agent`|chSysCardTemp_6<p>Update: 30</p>|
|Состояние БП 2|<p>The status of the power supply up (1), down (2)</p>|`SNMP agent`|chSysPowerSupplyOperStatus_2<p>Update: 30</p>|
|Температура R1 головы|<p>-</p>|`SNMP agent`|chSysCardTemp_4<p>Update: 30</p>|
|Температура R0 головы|<p>-</p>|`SNMP agent`|chSysCardTemp2<p>Update: 30</p>|
|Состояние БП 3|<p>The status of the power supply up (1), down (2)</p>|`SNMP agent`|chSysPowerSupplyOperStatus_3<p>Update: 30</p>|
|Состояние БП 1|<p>The status of the power supply up (1), down (2)</p>|`SNMP agent`|chSysPowerSupplyOperStatus_1<p>Update: 30</p>|
|Загрузка CPU 5 сек|<p>C-Series CPU utilization in percentage for last 5 seconds.</p>|`SNMP agent`|chRpmCpuUtil5Sec<p>Update: 20</p>|
|Температура 0 модуль|<p>-</p>|`SNMP agent`|chSysCardTemp<p>Update: 30</p>|
|Состояние БП 4|<p>The status of the power supply up (1), down (2)</p>|`SNMP agent`|chSysPowerSupplyOperStatus_4<p>Update: 30</p>|
|Состояние вентиляторов|<p>"The status of the fan tray." up (1), down (2)</p>|`SNMP agent`|chSysFanTrayOperStatus<p>Update: 30</p>|
|Температура 1 модуль|<p>-</p>|`SNMP agent`|chSysCardTemp1<p>Update: 30</p>|
|Runts_err.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.6027.3.11.1.2.1.1.9.["{#SNMPINDEX}"]<p>Update: 30</p>|
|Giants_err.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.6027.3.11.1.2.1.1.10.["{#SNMPINDEX}"]<p>Update: 30</p>|
|CRC_err.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.6027.3.11.1.2.1.1.11.["{#SNMPINDEX}"]<p>Update: 30</p>|
|ifInOctets.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|IF-MIB_ifHCInOctets.["{#SNMPINDEX}"]<p>Update: 30</p>|
|ifOutOctets.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|IF-MIB_ifHCOutOctets.["{#SNMPINDEX}"]<p>Update: 30</p>|
|Состояние порта.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|IF-MIB_ifOperStatus.["{#SNMPINDEX}"]<p>Update: 30</p>|
|ifAlias.{#SNMPVALUE}|<p>-</p>|`SNMP agent`|str.IF-MIB_ifAlias.["{#SNMPINDEX}"]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Критическая температура модуля 0|<p>-</p>|disaster|
|{HOST.NAME} Критическая температура модуля 1|<p>-</p>|disaster|
|{HOST.NAME} Критическая температура модуля 2|<p>-</p>|disaster|
|{HOST.NAME} Повышенная температура головы 0|<p>-</p>|high|
|{HOST.NAME} Повышенная температура головы 1|<p>-</p>|high|
|{HOST.NAME} Повышенная температура модуля 0|<p>-</p>|high|
|{HOST.NAME} Повышенная температура модуля 1|<p>-</p>|high|
|{HOST.NAME} Повышенная температура модуля 2|<p>-</p>|high|
|{HOST.NAME} Повышенная температура модуля 3|<p>-</p>|high|
