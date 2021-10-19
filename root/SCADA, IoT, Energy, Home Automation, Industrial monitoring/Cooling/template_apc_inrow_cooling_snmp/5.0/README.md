# APC InRow Cooling

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
|Operating Mode|<p>-</p>|`SNMP agent`|coolingUnitStatusDiscreteIntegerAsString.1.2<p>Update: 1h</p>|
|Dew Point|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.49<p>Update: 10s</p>|
|Return  Air Temp Threshold|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogValue.1.5<p>Update: 1d</p>|
|Supply Air Temp Threshold|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogValue.1.3<p>Update: 1d</p>|
|Humidify Output|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.18<p>Update: 10s</p>|
|Humidifier Run Hrs|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.38<p>Update: 1h</p>|
|Return Humidity Low Threshold|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogValue.1.7<p>Update: 1d</p>|
|Condensate Pump Run Hrs|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.39<p>Update: 1h</p>|
|Supply Humidity|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.10<p>Update: 10s</p>|
|Discharge Pressure|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.24<p>Update: 10s</p>|
|Cooling Demand Power|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.12<p>Update: 30s</p>|
|Airflow|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.3<p>Update: 10s</p>|
|System Name|<p>-</p>|`SNMP agent`|sysName.0<p>Update: 1d</p>|
|Suction Pressure|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.22<p>Update: 10s</p>|
|Suction Temp|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.21<p>Update: 10s</p>|
|Supply Air Set Point|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogValue.1.12<p>Update: 10s</p>|
|Cool Set Point|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogValue.1.9<p>Update: 1d</p>|
|Cooling Output Power|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.13<p>Update: 30s</p>|
|Return Air Temp|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.8<p>Update: 10s</p>|
|Return Humidity High Threshold|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogValue.1.8<p>Update: 1d</p>|
|Supply Air Temp|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.6<p>Update: 10s</p>|
|System Up Time|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 1h</p>|
|Return Humidity|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.11<p>Update: 10s</p>|
|Fan Speed|<p>-</p>|`SNMP agent`|coolingUnitConfigurationAnalogDescription.1.5<p>Update: 10s</p>|
|Dehumidify Output|<p>-</p>|`SNMP agent`|coolingUnitStatusAnalogValue.1.16<p>Update: 10s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Return Humidity High {HOST.NAME}|<p>-</p>|warning|
|Return Humidity Low {HOST.NAME}|<p>-</p>|warning|
|Return Temp High {HOST.NAME}|<p>-</p>|high|
|Supply Temp High {HOST.NAME}|<p>-</p>|high|
