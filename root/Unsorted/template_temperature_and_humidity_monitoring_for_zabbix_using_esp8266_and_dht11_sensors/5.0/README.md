# Template_ZBX-ESP-ENV

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HISTORYSP}|<p>-</p>|`90d`|Text macro|
|{$INTERVALHTTP}|<p>-</p>|`1m`|Text macro|
|{$INTERVALLLDHTTP}|<p>-</p>|`1h`|Text macro|
|{$LOSTPERIOD}|<p>-</p>|`10m`|Text macro|
|{$TRENDSP}|<p>-</p>|`365d`|Text macro|
|{$UPINTERVALLLD}|<p>-</p>|`5m`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Sensors|<p>Discovery Data Raw All</p>|`HTTP agent`|discovery.sensors<p>Update: {$INTERVALLLDHTTP}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|{#NAME} Humidity|<p>-</p>|`HTTP agent`|sensor.humidity[{#INDEX}]<p>Update: {$UPINTERVALLLD}</p>|
|{#NAME} Temperature|<p>-</p>|`HTTP agent`|sensor.temperature[{#INDEX}]<p>Update: {$UPINTERVALLLD}</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Unavailable by ICMP ping|<p>Last value: {ITEM.LASTVALUE1}. Last three attempts returned timeout. Please check device connectivity.</p>|high|
|High ICMP ping loss|<p>-</p>|warning|
|High ICMP ping response time|<p>-</p>|warning|
|{#NAME} - The temperature is above the average limit ({#AVERAGE_H})|<p>The temperature readings from sensor {#NAME} is over threshold.</p>|average|
|{#NAME} - The temperature is above the disaster limit ({#DISASTER_H})|<p>The temperature readings from sensor {#NAME} is over threshold.</p>|disaster|
|{#NAME} - The temperature is above the high limit ({#HIGH_H})|<p>The temperature readings from sensor {#NAME} is over threshold.</p>|high|
|{#NAME} - The temperature is below the average limit ({#AVERAGE_L})|<p>The temperature readings from sensor {#NAME} is below threshold.</p>|average|
|{#NAME} - The temperature is below the disaster limit ({#DISASTER_L})|<p>The temperature readings from sensor {#NAME} is below threshold.</p>|disaster|
|{#NAME} - The temperature is below the high limit ({#HIGH_L})|<p>The temperature readings from sensor {#NAME} is below threshold.</p>|high|
