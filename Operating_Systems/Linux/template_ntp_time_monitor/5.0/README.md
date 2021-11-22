# Template Time Drift OS Linux

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAXTIMEDRIFT}|<p>-</p>|`20`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Time-Drift|<p>Units in the file /var/lib/ntp/drift are PPM. So, multiply PPM by 0.0864 to get seconds per day.</p>|`Zabbix agent`|time.drift<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

# Template Time Offset OS Linux

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAXTIMEOFFSET}|<p>-</p>|`1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Time-Offset|<p>server 199.165.76.11, stratum 1, offset 0.018816, delay 0.02599 31 Aug 12:23:53 ntpdate[16741]: adjust time server 199.165.76.11 offset 0.018816 sec</p>|`Zabbix agent`|time.offset<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

