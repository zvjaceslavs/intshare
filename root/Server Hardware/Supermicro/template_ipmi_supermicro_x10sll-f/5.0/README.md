# IPMI Supermicro X10SLL-F

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
|CPU Temp|<p>-</p>|`IPMI agent`|ipmi.temp.cpu<p>Update: 30</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.temp.system<p>Update: 30</p>|
|Peripheral Temp|<p>-</p>|`IPMI agent`|ipmi.temp.peripheral<p>Update: 30</p>|
|1.2V BMC Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.12vbmc<p>Update: 300</p>|
|RAM2 Temp|<p>-</p>|`IPMI agent`|ipmi.temp.dimma2<p>Update: 30</p>|
|CPU Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.cpu<p>Update: 30</p>|
|5Vcc Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.5vcc<p>Update: 300</p>|
|3.3Vcc Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.33vcc<p>Update: 300</p>|
|Chassis Intrusion|<p>-</p>|`IPMI agent`|ipmi.intrusion.chassis<p>Update: 1200</p>|
|Fan 3 Speed|<p>-</p>|`IPMI agent`|ipmi.fans.fan3<p>Update: 300</p>|
|CPU Fan Speed|<p>-</p>|`IPMI agent`|ipmi.fans.fana<p>Update: 300</p>|
|3.3V Aux Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.33vaux<p>Update: 300</p>|
|RAM Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.dimm<p>Update: 30</p>|
|RAM4 Temp|<p>-</p>|`IPMI agent`|ipmi.temp.dimmb2<p>Update: 30</p>|
|12V Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.12v<p>Update: 300</p>|
|1.05V PCH Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.105vpch<p>Update: 300</p>|
|Fan 1 Speed|<p>-</p>|`IPMI agent`|ipmi.fans.fan1<p>Update: 300</p>|
|RAM1 Temp|<p>-</p>|`IPMI agent`|ipmi.temp.dimm1a<p>Update: 30</p>|
|Fan 2 Speed|<p>-</p>|`IPMI agent`|ipmi.fans.fan2<p>Update: 300</p>|
|Battery Voltage|<p>-</p>|`IPMI agent`|ipmi.volts.vbat<p>Update: 300</p>|
|PCH Temp|<p>-</p>|`IPMI agent`|ipmi.temp.pch<p>Update: 30</p>|
|RAM3 Temp|<p>-</p>|`IPMI agent`|ipmi.temp.dimmb1<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|3.3v Aux Out of range|<p>-</p>|warning|
|3.3Vcc Out of range|<p>-</p>|warning|
|5Vcc Out of range|<p>-</p>|warning|
|12V Out of range|<p>-</p>|warning|
|BMC voltage Out of range|<p>-</p>|average|
|Chassis Intrusion|<p>-</p>|information|
|CPU Temp High|<p>-</p>|average|
|CPU Temp Over|<p>-</p>|disaster|
|CPU Temp Very High|<p>-</p>|high|
|FAN 1 low|<p>-</p>|warning|
|FAN 2 low|<p>-</p>|warning|
|FAN 3 low|<p>-</p>|warning|
|FAN A Low|<p>-</p>|average|
|PCH Temp Over|<p>-</p>|high|
|PCH voltage out of range|<p>-</p>|warning|
|RAM Temp Over|<p>-</p>|high|
|VBAT Out of range|<p>-</p>|warning|
|Vcpu Out of Range|<p>-</p>|high|
|VDIMM Out of range|<p>-</p>|warning|
