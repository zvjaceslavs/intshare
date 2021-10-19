# Template IPMI Supermicro X9SCLX9SCM

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
|Fan 1|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.fan1<p>Update: 240</p>|
|-12V|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.-12V<p>Update: 240</p>|
|5VCC|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.5VCC<p>Update: 240</p>|
|PS Status|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.ps.status<p>Update: 240</p>|
|Peripheral - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.peripheral.temp<p>Update: 240</p>|
|Fan A|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.fana<p>Update: 240</p>|
|System - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.system.temp<p>Update: 45</p>|
|VCore|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.VCore<p>Update: 240</p>|
|Fan 4|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.fan4<p>Update: 240</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.VBAT<p>Update: 240</p>|
|Fan 3|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.fan3<p>Update: 240</p>|
|VDIMM|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.VDIMM<p>Update: 240</p>|
|AVCC|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.AVCC<p>Update: 240</p>|
|CPU Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.cpu.temp<p>Update: 240</p>|
|VSB|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.VSB<p>Update: 240</p>|
|3.3VCC|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.3.3VCC<p>Update: 240</p>|
|12V|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.12V<p>Update: 240</p>|
|Fan 2|<p>-</p>|`IPMI agent`|ipmi.supermicro.x9sclx9scm.fan2<p>Update: 240</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Cpu temperature high on {HOSTNAME}|<p>-</p>|disaster|
|Fan1 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan2 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan3 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan4 critical on {HOSTNAME}|<p>-</p>|warning|
|FanA critical on {HOSTNAME}|<p>-</p>|warning|
|Power supply issue on {HOSTNAME}|<p>-</p>|disaster|
|System temperature critical on  {HOSTNAME}|<p>-</p>|high|
