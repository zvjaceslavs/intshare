# Template IPMI Supermicro SYS-5019S-L

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
|FAN2|<p>-</p>|`IPMI agent`|FAN2<p>Update: 60</p>|
|PCH Temp|<p>-</p>|`IPMI agent`|PCHTemp<p>Update: 60</p>|
|VBAT|<p>-</p>|`IPMI agent`|VBAT<p>Update: 60</p>|
|DIMMB1 Temp|<p>-</p>|`IPMI agent`|DIMMB1Temp<p>Update: 60</p>|
|3.3VCC|<p>-</p>|`IPMI agent`|3.3VCC<p>Update: 60</p>|
|VBMC 1.2V|<p>-</p>|`IPMI agent`|VBMC1.2V<p>Update: 60</p>|
|3.3VSB|<p>-</p>|`IPMI agent`|3.3VSB<p>Update: 60</p>|
|VDIMMAB|<p>-</p>|`IPMI agent`|VDIMMAB<p>Update: 60</p>|
|5VCC|<p>-</p>|`IPMI agent`|5VCC<p>Update: 60</p>|
|DIMMA1 Temp|<p>-</p>|`IPMI agent`|DIMMA1Temp<p>Update: 60</p>|
|5VSB|<p>-</p>|`IPMI agent`|5VSB<p>Update: 60</p>|
|Peripheral Temp|<p>-</p>|`IPMI agent`|PeripheralTemp<p>Update: 60</p>|
|VCPU|<p>-</p>|`IPMI agent`|VCPU<p>Update: 60</p>|
|VPCH 1.0V|<p>-</p>|`IPMI agent`|VPCH1.0V<p>Update: 60</p>|
|VcpuVRM Temp|<p>-</p>|`IPMI agent`|VcpuVRMTemp<p>Update: 60</p>|
|CPU Temp|<p>-</p>|`IPMI agent`|CPUTemp<p>Update: 60</p>|
|System Temp|<p>-</p>|`IPMI agent`|SystemTemp<p>Update: 60</p>|
|12V|<p>-</p>|`IPMI agent`|12V<p>Update: 60</p>|
|FAN3|<p>-</p>|`IPMI agent`|FAN3<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|3.3VCC Voltage too high {HOST.NAME}|<p>-</p>|high|
|3.3VCC Voltage too low {HOST.NAME}|<p>-</p>|high|
|3.3VSB Voltage too high {HOST.NAME}|<p>-</p>|high|
|3.3VSB Voltage too low {HOST.NAME}|<p>-</p>|high|
|5VCC Voltage too high {HOST.NAME}|<p>-</p>|high|
|5VCC Voltage too low {HOST.NAME}|<p>-</p>|high|
|5VSB Voltage too high {HOST.NAME}|<p>-</p>|high|
|5VSB Voltage too low {HOST.NAME}|<p>-</p>|high|
|12V Voltage too high {HOST.NAME}|<p>-</p>|high|
|12V Voltage too low {HOST.NAME}|<p>-</p>|high|
|CPU Temp too high {HOST.NAME}|<p>-</p>|high|
|CPU Temp too low {HOST.NAME}|<p>-</p>|high|
|DIMMA1 Temp too high {HOST.NAME}|<p>-</p>|high|
|DIMMB1 Temp too high {HOST.NAME}|<p>-</p>|high|
|DIMMB1 Temp too low {HOST.NAME}|<p>-</p>|high|
|FAN2 too fast {HOST.NAME}|<p>-</p>|high|
|FAN3 too fast {HOST.NAME}|<p>-</p>|high|
|FAN3 too slow {HOST.NAME}|<p>-</p>|high|
|PCH Temp too high {HOST.NAME}|<p>-</p>|high|
|PCH Temp too low {HOST.NAME}|<p>-</p>|high|
|Peripheral Temp too high {HOST.NAME}|<p>-</p>|high|
|Peripheral Temp too low {HOST.NAME}|<p>-</p>|high|
|System Temp too high {HOST.NAME}|<p>-</p>|high|
|System Temp too low {HOST.NAME}|<p>-</p>|high|
|VBAT Voltage too low {HOST.NAME}|<p>-</p>|high|
|VBMC 1.2V Voltage too high {HOST.NAME}|<p>-</p>|high|
|VBMC 1.2V Voltage too low {HOST.NAME}|<p>-</p>|high|
|VCPU Voltage too low {HOST.NAME}|<p>-</p>|high|
|VcpuVRM Temp too high {HOST.NAME}|<p>-</p>|high|
|VcpuVRM Temp too low {HOST.NAME}|<p>-</p>|high|
|VDIMMAB Voltage too high {HOST.NAME}|<p>-</p>|high|
|VDIMMAB Voltage too low {HOST.NAME}|<p>-</p>|high|
|VPCH 1.0 V Voltage too high {HOST.NAME}|<p>-</p>|high|
|VPCH 1.0 V Voltage too low {HOST.NAME}|<p>-</p>|high|
