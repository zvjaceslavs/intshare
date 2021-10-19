# Geist Watchdog 1200s

## Description

Check the watchdogs for the temperature in each closet.

## Overview

SNMP discovery-based template for Vertiv Geist ITWatchdogs Watchdog 1200-series environmental monitoring appliances. Currently supports the onboard climate and IO sensors, and external airflow, temperature, and water sensors. Provides item and graph prototypes.


Where possible, this template will automatically detect and apply the sensor names to each item. Noticeably missing are the IO sensor names, because while you can name them in the Watchdog's interface, these names are not exposed via SNMP.


Device firmware 3.15.0 is recommended. Older firmware versions, such as 3.9.0, do not expose the external sensor data via SNMP


Due to a limitation in Zabbix, you cannot create a graph of one sensor item across multiple hosts. Please vote for issue <https://support.zabbix.com/browse/ZBXNEXT-1120> to have that feature added.



## Author

Webster Massingham

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Airflow sensor|<p>-</p>|`SNMP agent`|enviro.tempf[airflowSensor]<p>Update: 1m</p>|
|Temperature sensor|<p>-</p>|`SNMP agent`|enviro.tempf[tempSensor]<p>Update: 1m</p>|
|Onboard sensor|<p>-</p>|`SNMP agent`|enviro.tempf[climateAirflow]<p>Update: 1m</p>|
|Water sensor|<p>-</p>|`SNMP agent`|enviro.tempf[waterSensor]<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#DESC} availability (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[airFlowSensorAvail.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} dew point (F) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[airFlowSensorDewPointF.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} airflow (%) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[airFlowSensorFlow.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} relative humidity (%) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[airFlowSensorHumidity.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} temperature (C) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[airflowSensorTempC.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} temperature (F) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[airflowSensorTempF.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} availability (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[tempSensorAvail.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} temperature (C) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[tempSensorTempC.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} temperature (F) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[tempSensorTempF.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} airflow (%) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateAirflow.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} availability (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateAvail.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} IO1 (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateIO1.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} IO2 (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateIO2.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} IO3 (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateIO3.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} light (%) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateLight.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} sound (%) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateSound.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} temperature (C) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateTempC.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} temperature (F) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[climateTempF.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} availability (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[waterSensorAvail.{#SNMPINDEX}]<p>Update: 1m</p>|
|{#DESC} dampness (%) (LLD)|<p>-</p>|`SNMP agent`|enviro.tempf[waterSensorDampness.{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

