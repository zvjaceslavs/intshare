# Template SNMP Eaton ATS

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
|PowerStatusInputDephasing|<p>-</p>|`SNMP agent`|PowerStatusInputDephasing<p>Update: 30</p>|
|PowerStatusInputFrequency2|<p>-</p>|`SNMP agent`|PowerStatusInputFrequency2<p>Update: 30</p>|
|DeviceStatusTransferTest|<p>-</p>|`SNMP agent`|DeviceStatusTransferTest<p>Update: 30</p>|
|EnvHumLowerLimit|<p>-</p>|`SNMP agent`|EnvHumLowerLimit<p>Update: 3600</p>|
|PowerStatusInputUsed2|<p>-</p>|`SNMP agent`|PowerStatusInputUsed2<p>Update: 30</p>|
|PowerInputVoltage1|<p>-</p>|`SNMP agent`|PowerInputVoltage1<p>Update: 15</p>|
|EnvHumUpperLimit|<p>-</p>|`SNMP agent`|EnvHumUpperLimit<p>Update: 3600</p>|
|PowerInputVoltage2|<p>-</p>|`SNMP agent`|PowerInputVoltage2<p>Update: 15</p>|
|PowerStatusInputGood2|<p>-</p>|`SNMP agent`|PowerStatusInputGood2<p>Update: 30</p>|
|DeviceStatusOverload|<p>-</p>|`SNMP agent`|DeviceStatusOverload<p>Update: 30</p>|
|PowerStatusInputInternalFailure1|<p>-</p>|`SNMP agent`|PowerStatusInputInternalFailure1<p>Update: 30</p>|
|DeviceStatusOperationMode|<p>-</p>|`SNMP agent`|DeviceStatusOperationMode<p>Update: 5</p>|
|DeviceStatusShortCircuit|<p>-</p>|`SNMP agent`|DeviceStatusShortCircuit<p>Update: 30</p>|
|PowerStatusInputInternalFailure2|<p>-</p>|`SNMP agent`|PowerStatusInputInternalFailure2<p>Update: 30</p>|
|PowerOutputCurrent|<p>-</p>|`SNMP agent`|PowerOutputCurrent<p>Update: 15</p>|
|PowerStatusInputUsed1|<p>-</p>|`SNMP agent`|PowerStatusInputUsed1<p>Update: 30</p>|
|PowerStatusInputVoltage1|<p>-</p>|`SNMP agent`|PowerStatusInputVoltage1<p>Update: 30</p>|
|EnvHum|<p>-</p>|`SNMP agent`|EnvHum<p>Update: 15</p>|
|EnvTemp|<p>-</p>|`SNMP agent`|EnvTemp<p>Update: 15</p>|
|DeviceStatusInternalFailure|<p>-</p>|`SNMP agent`|DeviceStatusInternalFailure<p>Update: 30</p>|
|EnvTempUpperLimit|<p>-</p>|`SNMP agent`|EnvTempUpperLimit<p>Update: 3600</p>|
|PowerStatusInputFrequency1|<p>-</p>|`SNMP agent`|PowerStatusInputFrequency1<p>Update: 30</p>|
|PowerInputFrequency2|<p>-</p>|`SNMP agent`|PowerInputFrequency2<p>Update: 900</p>|
|PowerInputFrequency1|<p>-</p>|`SNMP agent`|PowerInputFrequency1<p>Update: 900</p>|
|PowerInputIndex2|<p>-</p>|`SNMP agent`|PowerInputIndex2<p>Update: 900</p>|
|DeviceStatusOverTemperature|<p>-</p>|`SNMP agent`|DeviceStatusOverTemperature<p>Update: 30</p>|
|PowerInputIndex1|<p>-</p>|`SNMP agent`|PowerInputIndex1<p>Update: 900</p>|
|PowerStatusInputVoltage2|<p>-</p>|`SNMP agent`|PowerStatusInputVoltage2<p>Update: 30</p>|
|EnvTempLowerLimit|<p>-</p>|`SNMP agent`|EnvTempLowerLimit<p>Update: 3600</p>|
|PowerOutputVoltage|<p>-</p>|`SNMP agent`|PowerOutputVoltage<p>Update: 15</p>|
|PowerStatusInputGood1|<p>-</p>|`SNMP agent`|PowerStatusInputGood1<p>Update: 30</p>|
|DeviceStatusOutput|<p>-</p>|`SNMP agent`|DeviceStatusOutput<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} - Humidity High|<p>-</p>|warning|
|{HOST.NAME} - Input Status Source1|<p>-</p>|high|
|{HOST.NAME} - Input Status Source2|<p>-</p>|high|
|{HOST.NAME} - Output Power|<p>-</p>|high|
|{HOST.NAME} - Power Overload|<p>-</p>|high|
|{HOST.NAME} - Power ShortCircuit|<p>-</p>|high|
|{HOST.NAME} - Power Source Changed|<p>-</p>|warning|
|{HOST.NAME} - Temperature High|<p>-</p>|warning|
|{HOST.NAME} - Test Status|<p>-</p>|warning|
