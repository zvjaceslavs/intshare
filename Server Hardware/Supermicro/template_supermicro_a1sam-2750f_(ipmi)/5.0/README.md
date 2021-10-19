# Template IPMI Supermicro A1SAM-2750F

## Overview


```
Supermicro A1SAM-2750F (IPMI) template : 
* Need to turn on zabbix server ipmi polling in zabbix configuration file (StartIPMIPollers=1)
* Need zabbix host to be configured with IPMI information, with at least user privilege level; Authentication algorithm default
* Under Debian / Ubuntu, OpenIPMI is currently compiled with ssl turned off (<https://support.zabbix.com/browse/ZBX-6139>). You will need to rebuild openipmi package in order to have ipmi working with zabbix. See <https://support.zabbix.com/browse/ZBX-6139?focusedCommentId=149255&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-149255> for build instruction.
* Template interval is set to 300s, but you might need to set a least 1 item to a 60s update interval or you might see the "Network error while retrieving IPMI data" bug (see <https://support.zabbix.com/browse/ZBX-3243>)  
  
  

```
## Author

pfoo

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|12 V|<p>-</p>|`IPMI agent`|ipmi.system.12v<p>Update: 300</p>|
|3.3V AUX|<p>-</p>|`IPMI agent`|ipmi.system.3.3aux<p>Update: 300</p>|
|3.3VCC|<p>-</p>|`IPMI agent`|ipmi.system.3.3vcc<p>Update: 300</p>|
|5 VCC|<p>-</p>|`IPMI agent`|ipmi.system.5VCC<p>Update: 300</p>|
|5V Dual|<p>-</p>|`IPMI agent`|ipmi.system.5vdual<p>Update: 300</p>|
|CPU Temp|<p>-</p>|`IPMI agent`|ipmi.system.cpu_temp<p>Update: 300</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.system.fan_1<p>Update: 300</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.system.fan_2<p>Update: 300</p>|
|FAN 3|<p>-</p>|`IPMI agent`|ipmi.system.fan_3<p>Update: 300</p>|
|Peripheral Temp|<p>-</p>|`IPMI agent`|ipmi.system.peripheral_temp<p>Update: 300</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.system_temp<p>Update: 300</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.system.vbat<p>Update: 300</p>|
|VCCP|<p>-</p>|`IPMI agent`|ipmi.system.VCCP<p>Update: 300</p>|
|VDIMM|<p>-</p>|`IPMI agent`|ipmi.system.VDIMM<p>Update: 300</p>|
## Triggers

There are no triggers in this template.

