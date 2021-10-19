# Template Service HLS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HLSURI}|<p>URI to m3u8</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|m3u8 lists|<p>-</p>|`Zabbix agent`|hls["-d",{$HLSURI}]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|HLS playlist $2|<p>-</p>|`Zabbix agent`|hls["-g",{#PROFILE}]<p>Update: 2m</p>|
|HLS average speed $1|<p>-</p>|`Dependent item`|hls.averagespeed[{#PROFILE}]<p>Update: 0</p>|
|HLS duration $1|<p>-</p>|`Dependent item`|hls.duration[{#PROFILE}]<p>Update: 0</p>|
|HLS spended time $1|<p>-</p>|`Dependent item`|hls.spendedtime[{#PROFILE}]<p>Update: 0</p>|
|HLS target duration $1|<p>-</p>|`Dependent item`|hls.target_duration[{#PROFILE}]<p>Update: 0</p>|
|HLS total legth $1|<p>-</p>|`Dependent item`|hls.totallength[{#PROFILE}]<p>Update: 0</p>|
|HLS ts present $1|<p>-</p>|`Dependent item`|hls.tsuri[{#PROFILE}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|HLS duration is different on target duration in {#PROFILE}|<p>-</p>|not classified|
|HLS duration is below 8 in {#PROFILE}|<p>-</p>|warning|
|HLS spended time is more 200ms in {#PROFILE}|<p>-</p>|information|
|HLS there's unstable bitrate in {#PROFILE}|<p>-</p>|not classified|
|HLS TS isn't present in {#PROFILE}|<p>-</p>|high|
