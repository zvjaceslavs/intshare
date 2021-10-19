# DHCPD Pools data

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MIN_FREE_IP}|<p>Minimum Free IP</p>|`10`|Text macro|
|{$PERCENT_IP_USED}|<p>Max pourcentage of IP used for trigger</p>|`90`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DHCPD-Pools Discovery|<p>-</p>|`Dependent item`|dhcpd-pools.discovery<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DHCPD-POOLS-JSON-DATA|<p>RAW JSON DATA from dhcpd-pools</p>|`Zabbix agent`|system.run[dhcpd-pools -fj -L 12]<p>Update: 5m</p>|
|{#LOCATION} : Defined IP|<p>Total number of IP’s in the POOL</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},DEFINED]<p>Update: 5m</p>|
|{#LOCATION} : Free IP|<p>Number of IP’s currently available in the pool</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},FREE]<p>Update: 5m</p>|
|{#LOCATION} : Percent IP used|<p>Percentage of IP’s used in the pool</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},PERCENT]<p>Update: 5m</p>|
|{#LOCATION} : Status|<p>Status of the Pool ( by default / see http://dhcpd-pools.sourceforge.net/man.html for −−critical and −−warning ) 0 = Good 1 = percent used over 80% 2 = percent used over 90%</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},STATUS]<p>Update: 5m</p>|
|{#LOCATION} : Touched IP|<p>Number of IP’s which appear in the lease file, but who’s leases have expired. A touched IP is either expired or abandoned.</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},TOUCHED]<p>Update: 5m</p>|
|{#LOCATION} : Already Used IP|<p>Number of IP’s that was already used at least once in the pool</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},TOUCH_COUNT]<p>Update: 5m</p>|
|{#LOCATION} : Percent IP already use at least for 1 lease|<p>Percentage of IP’s that was already in used at least one time in the pool</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},TOUCH_PERCENT]<p>Update: 5m</p>|
|{#LOCATION} : Used IP|<p>Number of IP’s currently used in the pool</p>|`Calculated`|DHCPD-POOLS[{#LOCATION},USED]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Less than {$MIN_FREE_IP} leases available in {#LOCATION}|<p>-</p>|high|
|More than {$PERCENT_IP_USED}% IP used in {#LOCATION}|<p>-</p>|average|
