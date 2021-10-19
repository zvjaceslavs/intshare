# Template IPMI Supermicro X10SRL-F

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
|Peripheral - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.peripheral.temp<p>Update: 240</p>|
|PCH - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.pch.temp<p>Update: 240</p>|
|Fan 2|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.fan2<p>Update: 240</p>|
|System - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.system.temp<p>Update: 240</p>|
|Vcpu|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.Vcpu<p>Update: 240</p>|
|VDIMMCD|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.VDIMMCD<p>Update: 240</p>|
|VcpuVRM - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.VcpuVRM.temp<p>Update: 240</p>|
|Fan 5|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.fan5<p>Update: 240</p>|
|Fan A|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.fana<p>Update: 240</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.VBAT<p>Update: 240</p>|
|VDIMMAB|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.VDIMMAB<p>Update: 240</p>|
|DIMMD2 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimmd2.temp<p>Update: 240</p>|
|5VCC|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.5VCC<p>Update: 240</p>|
|Fan 4|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.fan4<p>Update: 240</p>|
|VmemCDVRM - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.VmemCDVRM.temp<p>Update: 240</p>|
|DIMMC1 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimmc1.temp<p>Update: 240</p>|
|DIMMD1 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimmd1.temp<p>Update: 240</p>|
|DIMMA1 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimma1.temp<p>Update: 240</p>|
|DIMMB1 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimmb1.temp<p>Update: 240</p>|
|3.3VCC|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.3.3VCC<p>Update: 240</p>|
|1.05V PCH|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.1.05VPCH<p>Update: 240</p>|
|DIMMB2 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimmb2.temp<p>Update: 240</p>|
|DIMMA2 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimma2.temp<p>Update: 240</p>|
|Fan 3|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.fan3<p>Update: 240</p>|
|Fan 1|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.fan1<p>Update: 240</p>|
|5VSB|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.5VSB<p>Update: 240</p>|
|DIMMC2 - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.p1.dimmc2.temp<p>Update: 240</p>|
|1.2V BMC|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.1.2VBMC<p>Update: 240</p>|
|CPU - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.cpu.temp<p>Update: 45</p>|
|VmemABVRM - Temp|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.VmemABVRM.temp<p>Update: 240</p>|
|1.5V PCH|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.1.5VPCH<p>Update: 240</p>|
|12V|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.12V<p>Update: 240</p>|
|3.3VSB|<p>-</p>|`IPMI agent`|ipmi.supermicro.x10srl-f.3.3VSB<p>Update: 240</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU temperature critical on {HOSTNAME}|<p>-</p>|high|
|DIMMA1 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMA2 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMB1 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMB2 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMC1 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMC2 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMD1 temperature critical on {HOSTNAME}|<p>-</p>|average|
|DIMMD2 temperature critical on {HOSTNAME}|<p>-</p>|average|
|Fan1 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan2 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan3 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan4 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan5 critical on {HOSTNAME}|<p>-</p>|warning|
|FanA critical on {HOSTNAME}|<p>-</p>|warning|
|System temperature critical on  {HOSTNAME}|<p>-</p>|high|
