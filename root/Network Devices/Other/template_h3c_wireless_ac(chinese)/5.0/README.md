# H3C AC

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DHCP_POOL_H}|<p>-</p>|`95`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DHCP Server Discovery|<p>-</p>|`SNMP agent`|dhcpserver<p>Update: 1200</p>|
|AP Discovery|<p>-</p>|`SNMP agent`|AP<p>Update: 1200</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|每秒mac认证用户异常掉线数|<p>-</p>|`SNMP agent`|user.mac_lostcon<p>Update: 60</p>|
|当前用户总数|<p>-</p>|`Calculated`|user.count<p>Update: 60</p>|
|下行流量|<p>-</p>|`SNMP agent`|Bps_out<p>Update: 60</p>|
|在线AP数量|<p>-</p>|`SNMP agent`|ap.count<p>Update: 120</p>|
|当前portal认证用户总数|<p>-</p>|`SNMP agent`|user.portal<p>Update: 60</p>|
|每秒portal认证用户异常掉线数|<p>-</p>|`SNMP agent`|user.portal_lostcon<p>Update: 60</p>|
|每秒免认证用户异常掉线数|<p>-</p>|`SNMP agent`|user.free_lostcon<p>Update: 60</p>|
|每秒关联证用户异常掉线数|<p>-</p>|`SNMP agent`|user.asso_lostcon<p>Update: 60</p>|
|每秒认证失败|<p>-</p>|`Calculated`|user.lostcon<p>Update: 60</p>|
|每秒DHCP请求数|<p>-</p>|`SNMP agent`|dhcp.requests<p>Update: 60</p>|
|CPU 使用率|<p>-</p>|`SNMP agent`|cpu.usage<p>Update: 60</p>|
|内存使用率|<p>-</p>|`SNMP agent`|cpu.mem_usage<p>Update: 60</p>|
|当前关联认证用户总数|<p>-</p>|`SNMP agent`|user.asso<p>Update: 60</p>|
|序列号|<p>-</p>|`SNMP agent`|sn<p>Update: 7200</p>|
|上行流量|<p>-</p>|`SNMP agent`|Bps_in<p>Update: 60</p>|
|当前mac认证用户总数|<p>-</p>|`SNMP agent`|user.mac<p>Update: 60</p>|
|当前免认证用户总数|<p>-</p>|`SNMP agent`|user.free<p>Update: 60</p>|
|DHCP 地址池 $1 利用率|<p>-</p>|`SNMP agent`|dhcp.pool[{#DHCPPOOL}]<p>Update: 120</p>|
|AP $1 关联认证在线用户数|<p>-</p>|`SNMP agent`|ap.asso[{#APNAME}]<p>Update: 120</p>|
|AP $1 免认证在线用户数|<p>-</p>|`SNMP agent`|ap.free[{#APNAME}]<p>Update: 120</p>|
|AP $1 地址|<p>-</p>|`SNMP agent`|ap.ip[{#APNAME}]<p>Update: 7200</p>|
|AP $1 mac认证在线用户数|<p>-</p>|`SNMP agent`|ap.mac[{#APNAME}]<p>Update: 30</p>|
|AP $1 在线时间|<p>-</p>|`SNMP agent`|ap.onlinetime[{#APNAME}]<p>Update: 120</p>|
|AP $1 portal认证在线用户数|<p>-</p>|`SNMP agent`|ap.portal[{#APNAME}]<p>Update: 120</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|AC 地址池 {#DHCPPOOL} 快满|<p>地址池 {#DHCPPOOL} 使用率超过{$DHCP_POOL_H}%</p>|high|
|AP {#APNAME} 一天不在线|<p>-</p>|average|
