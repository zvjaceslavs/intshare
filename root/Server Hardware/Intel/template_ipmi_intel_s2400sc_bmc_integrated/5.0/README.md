# Template IPMI Intel S2400SC

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
|SSB Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.ssb.temp<p>Update: 240</p>|
|BB +1.1V STBY|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.1.1BBvstby<p>Update: 240</p>|
|PS2 Temperature|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.PS2.temp<p>Update: 240</p>|
|BB +3.3V AUX|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.3.3BBVAUX<p>Update: 240</p>|
|CPU1 VR Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.cpu1vr.temp<p>Update: 45</p>|
|Sys Fan 4|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.sysfan4<p>Update: 240</p>|
|BB +1.05Vccp P2|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.1.05BBvccpp2<p>Update: 240</p>|
|PS2 Power In|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.PS2.powerin<p>Update: 240</p>|
|Sys Fan 1|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.sysfan1<p>Update: 240</p>|
|BB +1.05Vccp P1|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.1.05BBvccpp1<p>Update: 240</p>|
|BB EDGE Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.bbedge.temp<p>Update: 240</p>|
|BB MEM VR Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.bbnenvr.temp<p>Update: 240</p>|
|BB +1.35 P2LV|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.BBP2LV<p>Update: 240</p>|
|BB +1.35 P1LV|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.BBP1LV<p>Update: 240</p>|
|Sys Fan 5|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.sysfan5<p>Update: 240</p>|
|PS1 Power In|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.PS1.powerin<p>Update: 240</p>|
|BB +5.0V|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.5BBV<p>Update: 240</p>|
|PS1 Temperature|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.PS1.temp<p>Update: 240</p>|
|Sys Fan 2|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.sysfan2<p>Update: 240</p>|
|Front Panel Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.fp.temp<p>Update: 240</p>|
|BB +12.0V|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.12BBV<p>Update: 240</p>|
|BB +3.3V|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.3.3BBV<p>Update: 240</p>|
|BB +1.5 P1MEM|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.BBP1MEM<p>Update: 240</p>|
|BB +1.8V AUX|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.1.1BBvaux<p>Update: 240</p>|
|BB -12.0V|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.M12BBV<p>Update: 240</p>|
|BB BMC Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.bbbmc.temp<p>Update: 240</p>|
|BB +3.0V Vbat|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.BBVBAT<p>Update: 240</p>|
|Sys Fan 3|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.sysfan3<p>Update: 240</p>|
|BB +5.0V STBY|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.5BBVstby<p>Update: 240</p>|
|BB +1.5 P2MEM|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.BBP2MEM<p>Update: 240</p>|
|HSBP 1 Temp|<p>-</p>|`IPMI agent`|ipmi.intel.s2400sc.hsbp1.temp<p>Update: 240</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU1 temperature critical on {HOSTNAME}|<p>-</p>|high|
|Fan1 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan2 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan3 critical on {HOSTNAME}|<p>-</p>|warning|
|Fan4 critical on {HOSTNAME}|<p>-</p>|warning|
|FanA critical on {HOSTNAME}|<p>-</p>|warning|
|Front Panel temperature critical on  {HOSTNAME}|<p>-</p>|high|
|Memory temperature critical on  {HOSTNAME}|<p>-</p>|high|
|PS1 temperature critical on  {HOSTNAME}|<p>-</p>|high|
|PS2 temperature critical on  {HOSTNAME}|<p>-</p>|high|
