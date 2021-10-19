# Blank AMD

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
|GPU 2 Temp|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/12" and SensorType="Temperature"]<p>Update: 60</p>|
|GPU 2 Fan|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/12" and SensorType="Control"]<p>Update: 60</p>|
|GPU 3 Load|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/18" and SensorType="Load"]<p>Update: 60</p>|
|GPU 0 Temp|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/0" and SensorType="Temperature"]<p>Update: 60</p>|
|GPU 0 Fan|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/0" and SensorType="Control"]<p>Update: 60</p>|
|GPU 2 Load|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/12" and SensorType="Load"]<p>Update: 60</p>|
|GPU 3 Temp|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/18" and SensorType="Temperature"]<p>Update: 60</p>|
|GPU 0 Load|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/0" and SensorType="Load"]<p>Update: 60</p>|
|GPU 1 Fan|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/6" and SensorType="Control"]<p>Update: 60</p>|
|GPU 3 Fan|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/18" and SensorType="Control"]<p>Update: 60</p>|
|GPU 1 Temp|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/6" and SensorType="Temperature"]<p>Update: 60</p>|
|GPU 1 Load|<p>-</p>|`Zabbix agent`|wmi.get[root\openhardwaremonitor,SELECT Value FROM Sensor WHERE Parent="/atigpu/6" and SensorType="Load"]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|GPU0 Temperature is extremely high|<p>A GPU's temperature is getting extremely high!</p>|disaster|
|GPU0 Temperature is high|<p>A GPU's temperature is getting high!</p>|warning|
|GPU0 Temperature is very high|<p>A GPU's temperature is getting very high!</p>|high|
|GPU1 Temperature is extremely high|<p>A GPU's temperature is getting extremely high!</p>|disaster|
|GPU1 Temperature is high|<p>A GPU's temperature is getting high!</p>|warning|
|GPU1 Temperature is very high|<p>A GPU's temperature is getting very high!</p>|high|
|GPU2 Temperature is extremely high|<p>A GPU's temperature is getting extremely high!</p>|disaster|
|GPU2 Temperature is high|<p>A GPU's temperature is getting high!</p>|warning|
|GPU2 Temperature is very high|<p>A GPU's temperature is getting very high!</p>|high|
|GPU3 Temperature is extremely high|<p>A GPU's temperature is getting extremely high!</p>|disaster|
|GPU3 Temperature is high|<p>A GPU's temperature is getting high!</p>|warning|
|GPU3 Temperature is very high|<p>A GPU's temperature is getting very high!</p>|high|
|GPU Load is Low|<p>GPU Load is low!!!!!!!!!!!!!!!</p>|disaster|
