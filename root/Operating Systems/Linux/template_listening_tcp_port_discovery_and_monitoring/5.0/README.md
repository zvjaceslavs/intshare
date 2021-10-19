# TCP port monitoring

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$TCP.PORT.MATCHES}|<p>-</p>|`.*`|Text macro|
|{$TCP.PORT.NOT_MATCHES}|<p>-</p>|`^\s$`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Listening TCP port discovery|<p>Install UserParameter for zabbix-agent: echo 'UserParameter=ss.tcp.listening,netstat --tcp --listening --numeric-ports' | sudo tee /etc/zabbix/zabbix_agentd.d/ss.tcp.listening.conf Install UserParameter for zabbix-agent2: echo 'UserParameter=ss.tcp.listening,netstat --tcp --listening --numeric-ports' | sudo tee /etc/zabbix/zabbix_agent2.d/ss.tcp.listening.conf Restart Zabbix agent systemctl restart zabbix-agent systemctl restart zabbix-agent2 In this section replace Key: system.run["ss --tcp --listening --numeric"] with: netstat.tcp.listening</p>|`Zabbix agent`|system.run["ss --tcp --listening --numeric"]<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Port {#PORT} is listening|<p>-</p>|`Zabbix agent (active)`|net.tcp.listen[{#PORT}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Port {#PORT} is down for some time|<p>-</p>|disaster|
