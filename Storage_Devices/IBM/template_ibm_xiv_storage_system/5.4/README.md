# IBM XIV Storage System

## Description

Template for monitoring IBM XIV servers with pyxcli

## Overview

Open github, read instruction.


If you have any question, contact me with telegram @JunkRat28 Eng/Rus


This template monitors status :


- ATS;


- UPS;


- PSU;


- FANs;


- DIMMs;


- Disks;


- FC ports;


- Processors;


- Support modules;


- Internal switches;


- Converged network modules.



## Author

Sergey Akhmineev

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$IBM_PASS}|<p>pass for xcli</p>|`****`|Secret macro|
|{$IBM_USER}|<p>user for xcli</p>|`****`|Secret macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU|<p>-</p>|`Dependent item`|cpu.discovery<p>Update: 0</p>|
|MM|<p>-</p>|`Dependent item`|mm.discovery<p>Update: 0</p>|
|SWITCH|<p>-</p>|`Dependent item`|switch.discovery<p>Update: 0</p>|
|PSU|<p>-</p>|`Dependent item`|psu.discovery<p>Update: 0</p>|
|CNA|<p>-</p>|`Dependent item`|cna.discovery<p>Update: 0</p>|
|FC_PORT|<p>-</p>|`Dependent item`|fc_port.discovery<p>Update: 0</p>|
|UPS|<p>-</p>|`Dependent item`|ups.discovery<p>Update: 0</p>|
|ATS|<p>-</p>|`Dependent item`|ats.discovery<p>Update: 0</p>|
|DISK|<p>-</p>|`Dependent item`|disk.discovery<p>Update: 0</p>|
|DIMM|<p>-</p>|`Dependent item`|dimm.discovery<p>Update: 0</p>|
|FAN|<p>-</p>|`Dependent item`|fan.discovery<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|pyxcli_discovery|<p>Scripts that displays all the information, then parsing json</p>|`External check`|pyxcli_ibm_discovery.py[{$IBM_USER}, {$IBM_PASS}, {HOST.IP}]<p>Update: 3m</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|cpu.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Hardware status|<p>-</p>|`Dependent item`|cpu.hardware.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|cpu.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|mm.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Enabled state|<p>-</p>|`Dependent item`|mm.enabled[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Link 1|<p>-</p>|`Dependent item`|mm.link_1[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Link 2|<p>-</p>|`Dependent item`|mm.link_2[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|mm.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Temperature|<p>-</p>|`Dependent item`|mm.temperature[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Total memory|<p>-</p>|`Dependent item`|mm.total.memory[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Ps2 status|<p>-</p>|`Dependent item`|switch.ps2[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|switch.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Sw mgmt status|<p>-</p>|`Dependent item`|switch.sw.mgmt.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Voltage|<p>-</p>|`Dependent item`|switch.voltage[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Cpu util|<p>-</p>|`Dependent item`|switch.cpu.util[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Initialized curr vpd|<p>-</p>|`Dependent item`|switch.curr.vpd[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Fans rpm|<p>-</p>|`Dependent item`|switch.fans.rpm[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Initialized initial vpd|<p>-</p>|`Dependent item`|switch.initial.vpd[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Monitor status|<p>-</p>|`Dependent item`|switch.monitor.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Initialized prev vpd|<p>-</p>|`Dependent item`|switch.prev.vpd[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Ps1 status|<p>-</p>|`Dependent item`|switch.ps1[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|psu.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Current|<p>-</p>|`Dependent item`|psu.current[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Hardware status|<p>-</p>|`Dependent item`|psu.hardware.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Power|<p>-</p>|`Dependent item`|psu.power[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|psu.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Voltage 5v|<p>-</p>|`Dependent item`|psu.voltage.5v[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Voltage 12v|<p>-</p>|`Dependent item`|psu.voltage.12v[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|cna.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|cna.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|fc_port.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Error count|<p>-</p>|`Dependent item`|fc_port.error.count[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Port state|<p>-</p>|`Dependent item`|fc_port.port.state[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|fc_port.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Apparent load power percent|<p>-</p>|`Dependent item`|ups.apparent.load.power.percent[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Battery charge level|<p>-</p>|`Dependent item`|ups.battery.charge.level[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|ups.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Input power on|<p>-</p>|`Dependent item`|ups.input.power.on[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Internal temperature|<p>-</p>|`Dependent item`|ups.internal.temperature[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Load power percent|<p>-</p>|`Dependent item`|ups.load.power.percent[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Power Status|<p>-</p>|`Dependent item`|ups.power.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|ups.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|ats.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Input l1|<p>-</p>|`Dependent item`|ats.input.l1[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Input_l2|<p>-</p>|`Dependent item`|ats.input.l2[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|ats.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|disk.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Desc Power is on|<p>-</p>|`Dependent item`|disk.power.is.on[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Desc Read fail|<p>-</p>|`Dependent item`|disk.read.fail[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Desc Smart fail|<p>-</p>|`Dependent item`|disk.smart.fail[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|disk.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Temperature|<p>-</p>|`Dependent item`|disk.temperature[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Hardware status|<p>-</p>|`Dependent item`|dimm.hardware.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|dimm.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Currently functioning|<p>-</p>|`Dependent item`|fan.currently.functioning[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
|{#COMPONENT.ID} Status|<p>-</p>|`Dependent item`|fan.status[{#COMPONENT.ID}]<p>Update: 0</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Input l1 to status problem|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.input.l1[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Input l2 to status problem|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.input.l2[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cna.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cna.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cpu.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Hardware status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cpu.hardware.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cpu.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Hardware status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/dimm.hardware.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/dimm.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Desc Power is off|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.power.is.on[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Desc Read fail|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.read.fail[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Desc Smart fail|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.smart.fail[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fan.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fan.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fc_port.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Error count = ({ITEM.VALUE})|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fc_port.error.count[{#COMPONENT.ID}])>0</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fc_port.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Link 1 is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.link_1[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Link 2 is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.link_2[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/psu.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} -> {#COMPONENT.ID} Hardware status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/psu.hardware.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/psu.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} -> {#COMPONENT.ID} Fan is not working|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.fans.rpm[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Monitor status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.monitor.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Ps1 is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.ps1[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Ps2 is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.ps2[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Apparent load power is high ({ITEM.VALUE})|<p>-</p>|<p>**Expression**: max(/IBM XIV Storage System/ups.apparent.load.power.percent[{#COMPONENT.ID}],10m)>60</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Battery charge level < 50% ({ITEM.VALUE})|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.battery.charge.level[{#COMPONENT.ID}])<50</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Battery charge level < 70% ({ITEM.VALUE})|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.battery.charge.level[{#COMPONENT.ID}])<70</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Input power off|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.input.power.on[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Internal temperature is high ({ITEM.VALUE})|<p>-</p>|<p>**Expression**: max(/IBM XIV Storage System/ups.internal.temperature[{#COMPONENT.ID}],30m)>35</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Load power is high ({ITEM.VALUE})|<p>-</p>|<p>**Expression**: max(/IBM XIV Storage System/ups.load.power.percent[{#COMPONENT.ID}],30m)>60</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Power status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.power.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cpu.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Hardware status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cpu.hardware.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cpu.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Link 1 is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.link_1[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Link 2 is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.link_2[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/mm.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Fan is not working (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.fans.rpm[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Monitor status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.monitor.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Ps1 is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.ps1[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Ps2 is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.ps2[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/switch.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/psu.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} -> {#COMPONENT.ID} Hardware status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/psu.hardware.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/psu.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|disaster|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cna.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/cna.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fc_port.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Error count = ({ITEM.VALUE}) (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fc_port.error.count[{#COMPONENT.ID}])>0</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fc_port.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Apparent load power is high ({ITEM.VALUE}) (LLD)|<p>-</p>|<p>**Expression**: max(/IBM XIV Storage System/ups.apparent.load.power.percent[{#COMPONENT.ID}],10m)>60</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Battery charge level < 50% ({ITEM.VALUE}) (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.battery.charge.level[{#COMPONENT.ID}])<50</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Battery charge level < 70% ({ITEM.VALUE}) (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.battery.charge.level[{#COMPONENT.ID}])<70</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Input power off (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.input.power.on[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Internal temperature is high ({ITEM.VALUE}) (LLD)|<p>-</p>|<p>**Expression**: max(/IBM XIV Storage System/ups.internal.temperature[{#COMPONENT.ID}],30m)>35</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Load power is high ({ITEM.VALUE}) (LLD)|<p>-</p>|<p>**Expression**: max(/IBM XIV Storage System/ups.load.power.percent[{#COMPONENT.ID}],30m)>60</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Power status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.power.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ups.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Input l1 to status problem (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.input.l1[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Input l2 to status problem (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.input.l2[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/ats.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Desc Power is off (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.power.is.on[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Desc Read fail (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.read.fail[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Desc Smart fail (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.smart.fail[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/disk.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Hardware status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/dimm.hardware.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/dimm.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|high|
|{HOST.NAME} -> {#COMPONENT.ID} Currently functioning is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fan.currently.functioning[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} -> {#COMPONENT.ID} Status is BAD (LLD)|<p>-</p>|<p>**Expression**: last(/IBM XIV Storage System/fan.status[{#COMPONENT.ID}])=0</p><p>**Recovery expression**: </p>|average|
