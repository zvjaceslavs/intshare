# Template_Cisco_LAG

## Overview

This template discovers LACP interfaces and create items, triggers and graphs for monitoring their status



## Author

vig0gne

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|dot3adAggPorts|<p>-</p>|`SNMP agent`|dot3adAggPorts<p>Update: 1h</p>|
|Port-channels|<p>-</p>|`SNMP agent`|Port-channels<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#IFNAME} InErrors (LLD)|<p>-</p>|`SNMP agent`|if.in.errors.[{#SNMPINDEX}]<p>Update: 2m</p>|
|Po{#SNMPVALUE}|{#IFNAME} LAG Status (LLD)|<p>{#IFALIAS}</p>|`SNMP agent`|if.lag.status.[{#SNMPINDEX}]<p>Update: 2m</p>|
|{#IFNAME} OutErrors (LLD)|<p>-</p>|`SNMP agent`|if.out.errors.[{#SNMPINDEX}]<p>Update: 2m</p>|
|Po{#POINDEX} InOctets (LLD)|<p>-</p>|`SNMP agent`|if.po[{#POINDEX}.in]<p>Update: 1m</p>|
|Po{#POINDEX} OutOctets (LLD)|<p>-</p>|`SNMP agent`|if.po[{#POINDEX}.out]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{HOST.NAME} {#IFNAME} Errors increased|<p>Pay attention on line quality</p>|<p>**Expression**: {Template_Cisco_LAG:if.in.errors.[{#SNMPINDEX}].change()}>1 or {Template_Cisco_LAG:if.out.errors.[{#SNMPINDEX}].change()}>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} Port-channel{#SNMPVALUE} bundle problem|<p>Interface {#IFNAME} a member of Port-channel{#SNMPVALUE} have some problems. Description {#IFALIAS}</p>|<p>**Expression**: ({Template_Cisco_LAG:if.lag.status.[{#SNMPINDEX}].str(BC)}=0 and {Template_Cisco_LAG:if.lag.status.[{#SNMPINDEX}].str(FC)}=0)</p><p>**Recovery expression**: </p>|average|
|{HOST.NAME} {#IFNAME} Errors increased (LLD)|<p>Pay attention on line quality</p>|<p>**Expression**: {Template_Cisco_LAG:if.in.errors.[{#SNMPINDEX}].change()}>1 or {Template_Cisco_LAG:if.out.errors.[{#SNMPINDEX}].change()}>1</p><p>**Recovery expression**: </p>|warning|
|{HOST.NAME} Port-channel{#SNMPVALUE} bundle problem (LLD)|<p>Interface {#IFNAME} a member of Port-channel{#SNMPVALUE} have some problems. Description {#IFALIAS}</p>|<p>**Expression**: ({Template_Cisco_LAG:if.lag.status.[{#SNMPINDEX}].str(BC)}=0 and {Template_Cisco_LAG:if.lag.status.[{#SNMPINDEX}].str(FC)}=0)</p><p>**Recovery expression**: </p>|average|