# Template_Netgear_GS724T_v3

## Overview

Template for Netgear GS724T switches v3.


Works with Zabbix 2.4.7 and a Netgear GS724T v3 UPDATED firmware (version 5.4.2.19 today)


Don't use this template if your Netgear switch is > v3 hardware version, amount of available LAGS is not the same.


Contains :


Ports status


Ports IN/OUT traffic


LAGS status


LAGS IN/OUT traffic


Informations such as uptime, sysname, sw version, serial number, model, mac address, location, IP

## Author

Nicolas C.

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Port 09 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.9<p>Update: 60</p>|
|Port 09 Status|<p>-</p>|`SNMP agent`|ifOperStatus.9<p>Update: 60</p>|
|Port 07 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.7<p>Update: 60</p>|
|Port 07 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.7<p>Update: 60</p>|
|LAG 05 Traffic OUT|<p>-</p>|`SNMP agent`|lag05.traffic.out<p>Update: 30</p>|
|LAG 04 Status|<p>-</p>|`SNMP agent`|lag04.status<p>Update: 60</p>|
|Port 15 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.15<p>Update: 60</p>|
|Port 14 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.14<p>Update: 60</p>|
|LAG 04 Traffic IN|<p>-</p>|`SNMP agent`|lag04.traffic.in<p>Update: 30</p>|
|LAG 02 Traffic IN|<p>-</p>|`SNMP agent`|lag02.traffic.in<p>Update: 30</p>|
|LAG 02 Status|<p>-</p>|`SNMP agent`|lag02.status<p>Update: 60</p>|
|LAG 01 Traffic OUT|<p>-</p>|`SNMP agent`|lag01.traffic.out<p>Update: 30</p>|
|Port 05 Status|<p>-</p>|`SNMP agent`|ifOperStatus.5<p>Update: 60</p>|
|Port 04 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.4<p>Update: 60</p>|
|Port 02 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.2<p>Update: 60</p>|
|Port 12 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.12<p>Update: 60</p>|
|Port 12 Status|<p>-</p>|`SNMP agent`|ifOperStatus.12<p>Update: 60</p>|
|Port 16 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.16<p>Update: 60</p>|
|Port 20 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.20<p>Update: 60</p>|
|Port 20 Status|<p>-</p>|`SNMP agent`|ifOperStatus.20<p>Update: 60</p>|
|Port 14 Status|<p>-</p>|`SNMP agent`|ifOperStatus.14<p>Update: 60</p>|
|Port 13 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.13<p>Update: 60</p>|
|Port 13 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.13<p>Update: 60</p>|
|Port 13 Status|<p>-</p>|`SNMP agent`|ifOperStatus.13<p>Update: 60</p>|
|Port 11 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.11<p>Update: 60</p>|
|Port 20 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.20<p>Update: 60</p>|
|Port 19 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.19<p>Update: 60</p>|
|Port 19 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.19<p>Update: 60</p>|
|Port 19 Status|<p>-</p>|`SNMP agent`|ifOperStatus.19<p>Update: 60</p>|
|Port 18 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.18<p>Update: 60</p>|
|Port 18 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.18<p>Update: 60</p>|
|LAG 01 Status|<p>-</p>|`SNMP agent`|lag01.status<p>Update: 60</p>|
|LAG 06 Traffic IN|<p>-</p>|`SNMP agent`|lag06.traffic.in<p>Update: 30</p>|
|LAG 06 Status|<p>-</p>|`SNMP agent`|lag06.status<p>Update: 60</p>|
|LAG 05 Traffic IN|<p>-</p>|`SNMP agent`|lag05.traffic.in<p>Update: 30</p>|
|LAG4 Name|<p>-</p>|`SNMP agent`|lag.name.4<p>Update: 3600</p>|
|LAG 05 Status|<p>-</p>|`SNMP agent`|lag05.status<p>Update: 60</p>|
|LAG 03 Traffic IN|<p>-</p>|`SNMP agent`|lag03.traffic.in<p>Update: 30</p>|
|LAG 03 Status|<p>-</p>|`SNMP agent`|lag03.status<p>Update: 60</p>|
|LAG 02 Traffic OUT|<p>-</p>|`SNMP agent`|lag02.traffic.out<p>Update: 30</p>|
|LAG 01 Traffic IN|<p>-</p>|`SNMP agent`|lag01.traffic.in<p>Update: 30</p>|
|LAG3 Name|<p>-</p>|`SNMP agent`|lag.name.3<p>Update: 3600</p>|
|LAG5 Name|<p>-</p>|`SNMP agent`|lag.name.5<p>Update: 3600</p>|
|Port 07 Status|<p>-</p>|`SNMP agent`|ifOperStatus.7<p>Update: 60</p>|
|Port 03 Status|<p>-</p>|`SNMP agent`|ifOperStatus.3<p>Update: 60</p>|
|Port 06 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.6<p>Update: 60</p>|
|Port 06 Status|<p>-</p>|`SNMP agent`|ifOperStatus.6<p>Update: 60</p>|
|Port 05 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.5<p>Update: 60</p>|
|Port 05 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.5<p>Update: 60</p>|
|Port 04 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.4<p>Update: 60</p>|
|Port 04 Status|<p>-</p>|`SNMP agent`|ifOperStatus.4<p>Update: 60</p>|
|Port 03 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.3<p>Update: 60</p>|
|Port 03 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.3<p>Update: 60</p>|
|Port 12 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.12<p>Update: 60</p>|
|Port 16 Status|<p>-</p>|`SNMP agent`|ifOperStatus.16<p>Update: 60</p>|
|Port 08 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.8<p>Update: 60</p>|
|Port 08 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.8<p>Update: 60</p>|
|Port 16 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.16<p>Update: 60</p>|
|Port 17 Status|<p>-</p>|`SNMP agent`|ifOperStatus.17<p>Update: 60</p>|
|Port 22 Status|<p>-</p>|`SNMP agent`|ifOperStatus.22<p>Update: 60</p>|
|System Name|<p>-</p>|`SNMP agent`|system.sysName.0<p>Update: 86400</p>|
|Software version|<p>-</p>|`SNMP agent`|software.version<p>Update: 3600</p>|
|Serial number|<p>-</p>|`SNMP agent`|serial.number<p>Update: 86400</p>|
|Port 21 Status|<p>-</p>|`SNMP agent`|ifOperStatus.21<p>Update: 60</p>|
|LAG2 Name|<p>-</p>|`SNMP agent`|lag.name.2<p>Update: 3600</p>|
|LAG 03 Traffic OUT|<p>-</p>|`SNMP agent`|lag03.traffic.out<p>Update: 30</p>|
|Port 06 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.6<p>Update: 60</p>|
|LAG6 Name|<p>-</p>|`SNMP agent`|lag.name.6<p>Update: 3600</p>|
|Port 02 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.2<p>Update: 60</p>|
|Port 02 Status|<p>-</p>|`SNMP agent`|ifOperStatus.2<p>Update: 60</p>|
|Uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 1800</p>|
|IP|<p>-</p>|`SNMP agent`|IP.switch<p>Update: 3600</p>|
|LAG 08 Traffic IN|<p>-</p>|`SNMP agent`|lag08.traffic.in<p>Update: 30</p>|
|LAG 08 Status|<p>-</p>|`SNMP agent`|lag08.status<p>Update: 60</p>|
|LAG 07 Traffic OUT|<p>-</p>|`SNMP agent`|lag07.traffic.out<p>Update: 30</p>|
|LAG 07 Traffic IN|<p>-</p>|`SNMP agent`|lag07.traffic.in<p>Update: 30</p>|
|LAG 07 Status|<p>-</p>|`SNMP agent`|lag07.status<p>Update: 60</p>|
|LAG 06 Traffic OUT|<p>-</p>|`SNMP agent`|lag06.traffic.out<p>Update: 30</p>|
|Port 15 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.15<p>Update: 60</p>|
|Port 15 Status|<p>-</p>|`SNMP agent`|ifOperStatus.15<p>Update: 60</p>|
|Port 14 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.14<p>Update: 60</p>|
|Port 11 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.11<p>Update: 60</p>|
|Port 11 Status|<p>-</p>|`SNMP agent`|ifOperStatus.11<p>Update: 60</p>|
|Port 10 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.10<p>Update: 60</p>|
|Port 10 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.10<p>Update: 60</p>|
|Port 10 Status|<p>-</p>|`SNMP agent`|ifOperStatus.10<p>Update: 60</p>|
|Port 09 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.9<p>Update: 60</p>|
|Port 24 Status|<p>-</p>|`SNMP agent`|ifOperStatus.24<p>Update: 60</p>|
|Port 23 Traffic OUT|<p>-</p>|`SNMP agent`|ifOutOctets.23<p>Update: 60</p>|
|Port 18 Status|<p>-</p>|`SNMP agent`|ifOperStatus.18<p>Update: 60</p>|
|Port 17 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.17<p>Update: 60</p>|
|Port 08 Status|<p>-</p>|`SNMP agent`|ifOperStatus.8<p>Update: 60</p>|
|LAG1 Name|<p>-</p>|`SNMP agent`|lag.name.1<p>Update: 3600</p>|
|LAG 08 Traffic OUT|<p>-</p>|`SNMP agent`|lag08.traffic.out<p>Update: 30</p>|
|LAG 04 Traffic OUT|<p>-</p>|`SNMP agent`|lag04.traffic.out<p>Update: 30</p>|
|Port 24 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.24<p>Update: 60</p>|
|Port 24 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.24<p>Update: 60</p>|
|Port 23 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.23<p>Update: 60</p>|
|Port 23 Status|<p>-</p>|`SNMP agent`|ifOperStatus.23<p>Update: 60</p>|
|Port 22 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.22<p>Update: 60</p>|
|Port 22 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.22<p>Update: 60</p>|
|Port 21 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.21<p>Update: 60</p>|
|Port 17 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.17<p>Update: 60</p>|
|Port 21 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.21<p>Update: 60</p>|
|Port 01 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.1<p>Update: 60</p>|
|Port 01 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.1<p>Update: 60</p>|
|Port 01 Status|<p>-</p>|`SNMP agent`|ifOperStatus.1<p>Update: 60</p>|
|Overall Traffic OUT|<p>-</p>|`SNMP agent`|ifOutOctets.overall<p>Update: 60</p>|
|Overall Traffic IN|<p>-</p>|`SNMP agent`|ifInOctects.overall<p>Update: 60</p>|
|Model|<p>-</p>|`SNMP agent`|model<p>Update: 86400</p>|
|MAC Address|<p>-</p>|`SNMP agent`|mac.address<p>Update: 86400</p>|
|Location|<p>-</p>|`SNMP agent`|system.sysLocation.0<p>Update: 86400</p>|
|LAG8 Name|<p>-</p>|`SNMP agent`|lag.name.8<p>Update: 3600</p>|
|LAG7 Name|<p>-</p>|`SNMP agent`|lag.name.7<p>Update: 3600</p>|
## Triggers

There are no triggers in this template.

