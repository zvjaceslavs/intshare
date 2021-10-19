# Template for ASR9006 IPv4 Pool discovery

## Description

Discovering pool name and vrf name from ASR9006 and represents Used & Free IP addresses Mokhtari Tce mohamadreza.mokhtari@gmail.com

## Overview

Discovering pool name and vrf name from ASR9006


and represents Used & Free IP addresses


It is free to use


Please comment me if this template was useful for you.


Best regard


Mohamadreza Mokhtari


Tce


mohamadreza.mokhtari@gmail.com



## Author

mohamadreza.mokhtari@gmail.com

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ASR9006 Pool Discovery|<p>Discovering pool name and vrf name from ASR9006 Mokhtari Tce mohamadreza.mokhtari@gmail.com</p>|`SNMP agent`|pool.ip.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Pool {#POOLNAME} Free IP Address (LLD)|<p>-</p>|`SNMP agent`|pool.ip.free.[ipfree.{#SNMPINDEX}]<p>Update: 1m</p>|
|Pool {#POOLNAME} Used IP Address (LLD)|<p>-</p>|`SNMP agent`|pool.ip.used.[used.{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Pool {#POOLNAME} Free IP Address less than (1/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()}|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (1/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (2/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|disaster|
|Pool {#POOLNAME} Free IP Address less than (2/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()}|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (2/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (3/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|high|
|Pool {#POOLNAME} Free IP Address less than (3/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()}|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (3/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (4/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|average|
|Pool {#POOLNAME} Free IP Address less than (4/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()}|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (4/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (5/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|warning|
|Pool {#POOLNAME} Free IP Address less than (1/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()} (LLD)|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (1/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (2/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|disaster|
|Pool {#POOLNAME} Free IP Address less than (2/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()} (LLD)|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (2/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (3/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|high|
|Pool {#POOLNAME} Free IP Address less than (3/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()} (LLD)|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (3/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (4/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|average|
|Pool {#POOLNAME} Free IP Address less than (4/100) * {Template for ASR9006 Pool discovery:pool.ip.used.[used.{#SNMPINDEX}].last()} (LLD)|<p>-</p>|<p>**Expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}]) < (4/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p><p>**Recovery expression**: last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.free.[ipfree.{#SNMPINDEX}])> (5/100) * last(/Template for ASR9006 IPv4 Pool discovery/pool.ip.used.[used.{#SNMPINDEX}])</p>|warning|
