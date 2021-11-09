# SNMP ReadyNAS

## Description

## Overview Monitor NETGEAR ReadyNAS storage devices via SNMP. This template was developed for the ReadyNAS 316. It monitors these items: 1. diskState 2. diskTemperature 3. fanRPM 4. fanStatus 5. volumeFreeSpace 6. volumeSize 7. volumeStatus Appropriate triggers for each item are also provided. ## Author Jeffrey H. Simonson 

## Overview

Monitor NETGEAR ReadyNAS storage devices via SNMP. This template was developed for the ReadyNAS 316. It monitors these items:


1. diskState
2. diskTemperature
3. fanRPM
4. fanStatus
5. volumeFreeSpace
6. volumeSize
7. volumeStatus


Appropriate triggers for each item are also provided.



## Author

Jeffrey H. Simonson

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$FAN_MINIMUM_RPM}|<p>-</p>|`800`|Text macro|
|{$TEMPERATURE_LIMIT}|<p>-</p>|`85`|Text macro|
|{$TEMPERATURE_MAXIMUM}|<p>-</p>|`60`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|diskState.3|<p>-</p>|`SNMP agent`|diskState.3<p>Update: 30</p>|
|diskTemperature.4|<p>-</p>|`SNMP agent`|diskTemperature.4<p>Update: 60</p>|
|diskState.4|<p>-</p>|`SNMP agent`|diskState.4<p>Update: 30</p>|
|diskTemperature.6|<p>-</p>|`SNMP agent`|diskTemperature.6<p>Update: 60</p>|
|diskState.6|<p>-</p>|`SNMP agent`|diskState.6<p>Update: 30</p>|
|volumeFreeSpace|<p>-</p>|`SNMP agent`|volumeFreeSpace<p>Update: 60</p>|
|diskTemperature.2|<p>-</p>|`SNMP agent`|diskTemperature.2<p>Update: 60</p>|
|volumeSize|<p>-</p>|`SNMP agent`|volumeSize<p>Update: 60</p>|
|fanRPM|<p>-</p>|`SNMP agent`|fanRPM<p>Update: 60</p>|
|diskTemperature.5|<p>-</p>|`SNMP agent`|diskTemperature.5<p>Update: 60</p>|
|diskTemperature.1|<p>-</p>|`SNMP agent`|diskTemperature.1<p>Update: 60</p>|
|diskState.1|<p>-</p>|`SNMP agent`|diskState.1<p>Update: 30</p>|
|fanStatus|<p>-</p>|`SNMP agent`|fanStatus<p>Update: 60</p>|
|diskState.2|<p>-</p>|`SNMP agent`|diskState.2<p>Update: 30</p>|
|diskState.5|<p>-</p>|`SNMP agent`|diskState.5<p>Update: 30</p>|
|diskTemperature.3|<p>-</p>|`SNMP agent`|diskTemperature.3<p>Update: 60</p>|
|volumeStatus|<p>-</p>|`SNMP agent`|volumeStatus<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

