# Template Vizrt SNMP

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
|Vizrt Post Scene Middle|<p>-</p>|`SNMP agent`|VizrtPostSceneMiddle<p>Update: 30s</p>|
|Vizrt Video In 4 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn4Status<p>Update: 30s</p>|
|Vizrt Renderer Scene Back|<p>-</p>|`SNMP agent`|VizrtRendererSceneBack<p>Update: 30s</p>|
|Vizrt Video In 8 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn8Status<p>Update: 30s</p>|
|Vizrt Retrace Counter Moving|<p>-</p>|`SNMP agent`|VizrtRetraceCounterMoving<p>Update: 30s</p>|
|Vizrt Texture Memory Used|<p>-</p>|`SNMP agent`|VizrtTextureMemoryUsed<p>Update: 30s</p>|
|Vizrt Clip 2 Status|<p>-</p>|`SNMP agent`|VizrtClip2Status<p>Update: 30s</p>|
|Vizrt Renderer Scene Middle|<p>-</p>|`SNMP agent`|VizrtRendererSceneMiddle<p>Update: 30s</p>|
|Vizrt Post Render Mode|<p>-</p>|`SNMP agent`|VizrtPostRenderMode<p>Update: 30s</p>|
|Vizrt On Air|<p>-</p>|`SNMP agent`|VizrtOnAir<p>Update: 5s</p>|
|Vizrt Clip 8 Status|<p>-</p>|`SNMP agent`|VizrtClip8Status<p>Update: 30s</p>|
|Vizrt Video In 5 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn5Status<p>Update: 30s</p>|
|Vizrt Genlock Status|<p>-</p>|`SNMP agent`|VizrtGenlockStatus<p>Update: 30s</p>|
|Vizrt Video In 7 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn7Status<p>Update: 30s</p>|
|Vizrt Computer Type|<p>-</p>|`SNMP agent`|VizrtComputerType<p>Update: 1h</p>|
|Vizrt Video In 2 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn2Status<p>Update: 30s</p>|
|Vizrt TCP Port|<p>-</p>|`SNMP agent`|VizrtTCPPort<p>Update: 30s</p>|
|Vizrt Post Scene Back|<p>-</p>|`SNMP agent`|VizrtPostSceneBack<p>Update: 30s</p>|
|Vizrt Ready For Connect|<p>-</p>|`SNMP agent`|VizrtReadyForConnect<p>Update: 30s</p>|
|Vizrt Clip 3 Status|<p>-</p>|`SNMP agent`|VizrtClip3Status<p>Update: 30s</p>|
|Vizrt Renderer Scene Front|<p>-</p>|`SNMP agent`|VizrtRendererSceneFront<p>Update: 30s</p>|
|Vizrt Clip 1 Status|<p>-</p>|`SNMP agent`|VizrtClip1Status<p>Update: 30s</p>|
|Vizrt Texture Memory Free|<p>-</p>|`SNMP agent`|VizrtTextureMemoryFree<p>Update: 30s</p>|
|Vizrt Video In 6 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn6Status<p>Update: 30s</p>|
|Vizrt NLE Mode|<p>-</p>|`SNMP agent`|VizrtNLEMode<p>Update: 30s</p>|
|Vizrt Texture Memory Total|<p>-</p>|`SNMP agent`|VizrtTextureMemoryTotal<p>Update: 30s</p>|
|Vizrt Clip 7 Status|<p>-</p>|`SNMP agent`|VizrtClip7Status<p>Update: 30s</p>|
|Vizrt Video In 1 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn1Status<p>Update: 30s</p>|
|Vizrt Video In 3 Status|<p>-</p>|`SNMP agent`|VizrtVideoIn3Status<p>Update: 30s</p>|
|Vizrt Current Frame Rate|<p>-</p>|`SNMP agent`|VizrtCurrentFrameRate<p>Update: 30s</p>|
|Vizrt Retrace Counter|<p>-</p>|`SNMP agent`|VizrtRetraceCounter<p>Update: 30s</p>|
|Vizrt Clip 4 Status|<p>-</p>|`SNMP agent`|VizrtClip4Status<p>Update: 30s</p>|
|Vizrt Connected To Db|<p>-</p>|`SNMP agent`|VizrtConnectedToDb<p>Update: 30s</p>|
|Vizrt Clip 6 Status|<p>-</p>|`SNMP agent`|VizrtClip6Status<p>Update: 30s</p>|
|Vizrt Viz Engine Version|<p>-</p>|`SNMP agent`|VizrtVizEngineVersion<p>Update: 1h</p>|
|Vizrt Clip 5 Status|<p>-</p>|`SNMP agent`|VizrtClip5Status<p>Update: 30s</p>|
|Vizrt System ID|<p>-</p>|`SNMP agent`|VizrtSystemID<p>Update: 30s</p>|
|Vizrt Post Scene Front|<p>-</p>|`SNMP agent`|VizrtPostSceneFront<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Vizrt Clip Status is not ok val=1: {ITEM.VALUE1}, 2: {ITEM.VALUE2}, 3: {ITEM.VALUE3}, 4: {ITEM.VALUE4} , 5: {ITEM.VALUE5}, 6: {ITEM.VALUE6}, 7: {ITEM.VALUE7}, 8: {ITEM.VALUE8}|<p>-</p>|high|
|Vizrt Computer Type is not IRIX val={ITEM.VALUE1}|<p>-</p>|warning|
|Vizrt Engine not OnAIR!!!|<p>-</p>|disaster|
|Vizrt Genlock Status is not ok val={ITEM.VALUE1}|<p>-</p>|high|
|Vizrt not Connected To DB (Graphic HUB)|<p>-</p>|high|
|Vizrt not Ready for connect|<p>-</p>|high|
|Vizrt Texture Memory used more 80%|<p>-</p>|warning|
|Vizrt Texture Memory used more 90%|<p>-</p>|high|
|Vizrt Video In Status is not ok val=1: {ITEM.VALUE1}, 2: {ITEM.VALUE2}, 3: {ITEM.VALUE3}, 4: {ITEM.VALUE4} , 5: {ITEM.VALUE5}, 6: {ITEM.VALUE6}, 7: {ITEM.VALUE7}, 8: {ITEM.VALUE8}|<p>-</p>|high|
