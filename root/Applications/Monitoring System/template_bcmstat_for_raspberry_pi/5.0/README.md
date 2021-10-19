# Template App bcmstat

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
|H264 Speed|<p>-</p>|`Dependent item`|H264Mhz<p>Update: 0</p>|
|CPU0 % used|<p>-</p>|`Dependent item`|cpu0<p>Update: 0</p>|
|IRQ per second|<p>Interrupt requests per second</p>|`Dependent item`|IRQs<p>Update: 0</p>|
|CPU2 % used|<p>-</p>|`Dependent item`|cpu2<p>Update: 0</p>|
|GPU Memory Free|<p>-</p>|`Dependent item`|gpumem<p>Update: 0</p>|
|Core Temp|<p>-</p>|`Dependent item`|CoreTemp<p>Update: 0</p>|
|TX Bytes per second|<p>-</p>|`Dependent item`|txbps<p>Update: 0</p>|
|bcmstat|<p>Absolutely requires bcmstat.sh v0.5.4+. Anything before this doesn't have the J option and my workaround was crazy janky.</p>|`SSH agent`|ssh.run[bcmstat_{HOST.NAME}]<p>Update: 8s</p>|
|GPU Speed|<p>-</p>|`Dependent item`|GPUMhz<p>Update: 0</p>|
|CPU1 % used|<p>-</p>|`Dependent item`|cpu1<p>Update: 0</p>|
|CPU Memory Free|<p>-</p>|`Dependent item`|cpumem<p>Update: 0</p>|
|RX Bytes per second|<p>-</p>|`Dependent item`|rxbps<p>Update: 0</p>|
|CPU3 % used|<p>-</p>|`Dependent item`|cpu3<p>Update: 0</p>|
|CPU Speed|<p>-</p>|`Dependent item`|CPUMHz<p>Update: 0</p>|
|SSH service is running|<p>-</p>|`Simple check`|net.tcp.service[ssh]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|SSH service is down on {HOST.NAME}|<p>-</p>|average|
|{HOST.NAME} temperature is extreamly hot|<p>85C is when the RPi begins under-clocking. It should auto shutdown before reaching 90C when components risk damage.</p>|disaster|
|{HOST.NAME} temperature is hot|<p>-</p>|average|
|{HOST.NAME} temperature is very hot|<p>-</p>|high|
|No Data From BCMStats|<p>-</p>|average|
