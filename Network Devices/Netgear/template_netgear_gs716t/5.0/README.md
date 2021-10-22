# Template_Netgear_GS716T

## Overview

Template for Netgear GS716T switches.


Works with Zabbix 2.4.7 and a GS716Tv3 Netgear switch firmware 6.3.1.11.


 


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
|LAG26 Name|<p>-</p>|`SNMP agent`|lag.name.26<p>Update: 30</p>|
|LAG 23 Traffic IN|<p>-</p>|`SNMP agent`|lag23.traffic.in<p>Update: 30</p>|
|LAG 25 Traffic IN|<p>-</p>|`SNMP agent`|lag25.traffic.in<p>Update: 30</p>|
|Port 14 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.14<p>Update: 60</p>|
|Port 15 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.15<p>Update: 60</p>|
|Port 12 Status|<p>-</p>|`SNMP agent`|ifOperStatus.12<p>Update: 60</p>|
|LAG14 Name|<p>-</p>|`SNMP agent`|lag.name.14<p>Update: 30</p>|
|LAG 14 Status|<p>-</p>|`SNMP agent`|lag14.status<p>Update: 30</p>|
|LAG 14 Traffic IN|<p>-</p>|`SNMP agent`|lag14.traffic.in<p>Update: 30</p>|
|Port 02 Status|<p>-</p>|`SNMP agent`|ifOperStatus.2<p>Update: 60</p>|
|LAG22 Name|<p>-</p>|`SNMP agent`|lag.name.22<p>Update: 30</p>|
|LAG 22 Status|<p>-</p>|`SNMP agent`|lag22.status<p>Update: 30</p>|
|LAG 22 Traffic IN|<p>-</p>|`SNMP agent`|lag22.traffic.in<p>Update: 30</p>|
|Port 14 Status|<p>-</p>|`SNMP agent`|ifOperStatus.14<p>Update: 60</p>|
|Port 16 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.16<p>Update: 60</p>|
|Port 16 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.16<p>Update: 60</p>|
|LAG3 Name|<p>-</p>|`SNMP agent`|lag.name.3<p>Update: 30</p>|
|LAG 07 Traffic IN|<p>-</p>|`SNMP agent`|lag07.traffic.in<p>Update: 30</p>|
|LAG 07 Traffic OUT|<p>-</p>|`SNMP agent`|lag07.traffic.out<p>Update: 30</p>|
|LAG 14 Traffic OUT|<p>-</p>|`SNMP agent`|lag14.traffic.out<p>Update: 30</p>|
|LAG 21 Traffic IN|<p>-</p>|`SNMP agent`|lag21.traffic.in<p>Update: 30</p>|
|LAG 21 Traffic OUT|<p>-</p>|`SNMP agent`|lag21.traffic.out<p>Update: 30</p>|
|LAG 23 Traffic OUT|<p>-</p>|`SNMP agent`|lag23.traffic.out<p>Update: 30</p>|
|LAG24 Name|<p>-</p>|`SNMP agent`|lag.name.24<p>Update: 30</p>|
|Port 11 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.11<p>Update: 60</p>|
|Port 07 Status|<p>-</p>|`SNMP agent`|ifOperStatus.7<p>Update: 60</p>|
|Port 09 Status|<p>-</p>|`SNMP agent`|ifOperStatus.9<p>Update: 60</p>|
|Port 09 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.9<p>Update: 60</p>|
|LAG 02 Status|<p>-</p>|`SNMP agent`|lag02.status<p>Update: 30</p>|
|LAG 02 Traffic IN|<p>-</p>|`SNMP agent`|lag02.traffic.in<p>Update: 30</p>|
|LAG 05 Traffic IN|<p>-</p>|`SNMP agent`|lag05.traffic.in<p>Update: 30</p>|
|LAG 21 Status|<p>-</p>|`SNMP agent`|lag21.status<p>Update: 30</p>|
|LAG 20 Traffic IN|<p>-</p>|`SNMP agent`|lag20.traffic.in<p>Update: 30</p>|
|LAG 18 Status|<p>-</p>|`SNMP agent`|lag18.status<p>Update: 30</p>|
|LAG 16 Traffic IN|<p>-</p>|`SNMP agent`|lag16.traffic.in<p>Update: 30</p>|
|LAG18 Name|<p>-</p>|`SNMP agent`|lag.name.18<p>Update: 30</p>|
|LAG 18 Traffic IN|<p>-</p>|`SNMP agent`|lag18.traffic.in<p>Update: 30</p>|
|LAG 13 Traffic IN|<p>-</p>|`SNMP agent`|lag13.traffic.in<p>Update: 30</p>|
|LAG 13 Traffic OUT|<p>-</p>|`SNMP agent`|lag13.traffic.out<p>Update: 30</p>|
|LAG 19 Status|<p>-</p>|`SNMP agent`|lag19.status<p>Update: 30</p>|
|LAG 24 Traffic IN|<p>-</p>|`SNMP agent`|lag24.traffic.in<p>Update: 30</p>|
|LAG 24 Traffic OUT|<p>-</p>|`SNMP agent`|lag24.traffic.out<p>Update: 30</p>|
|LAG25 Name|<p>-</p>|`SNMP agent`|lag.name.25<p>Update: 30</p>|
|Port 01 Status|<p>-</p>|`SNMP agent`|ifOperStatus.1<p>Update: 60</p>|
|LAG 20 Traffic OUT|<p>-</p>|`SNMP agent`|lag20.traffic.out<p>Update: 30</p>|
|LAG 18 Traffic OUT|<p>-</p>|`SNMP agent`|lag18.traffic.out<p>Update: 30</p>|
|LAG 08 Traffic IN|<p>-</p>|`SNMP agent`|lag08.traffic.in<p>Update: 30</p>|
|Port 06 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.6<p>Update: 60</p>|
|LAG 03 Status|<p>-</p>|`SNMP agent`|lag03.status<p>Update: 30</p>|
|LAG 03 Traffic IN|<p>-</p>|`SNMP agent`|lag03.traffic.in<p>Update: 30</p>|
|LAG15 Name|<p>-</p>|`SNMP agent`|lag.name.15<p>Update: 30</p>|
|Port 01 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.1<p>Update: 60</p>|
|Port 03 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.3<p>Update: 60</p>|
|Port 03 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.3<p>Update: 60</p>|
|LAG 25 Traffic OUT|<p>-</p>|`SNMP agent`|lag25.traffic.out<p>Update: 30</p>|
|LAG 24 Status|<p>-</p>|`SNMP agent`|lag24.status<p>Update: 30</p>|
|LAG13 Name|<p>-</p>|`SNMP agent`|lag.name.13<p>Update: 30</p>|
|LAG 11 Traffic IN|<p>-</p>|`SNMP agent`|lag11.traffic.in<p>Update: 30</p>|
|LAG 12 Status|<p>-</p>|`SNMP agent`|lag12.status<p>Update: 30</p>|
|LAG 12 Traffic IN|<p>-</p>|`SNMP agent`|lag12.traffic.in<p>Update: 30</p>|
|LAG 12 Traffic OUT|<p>-</p>|`SNMP agent`|lag12.traffic.out<p>Update: 30</p>|
|LAG 15 Status|<p>-</p>|`SNMP agent`|lag15.status<p>Update: 30</p>|
|Uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 1800</p>|
|LAG 22 Traffic OUT|<p>-</p>|`SNMP agent`|lag22.traffic.out<p>Update: 30</p>|
|LAG23 Name|<p>-</p>|`SNMP agent`|lag.name.23<p>Update: 30</p>|
|LAG 01 Status|<p>-</p>|`SNMP agent`|lag01.status<p>Update: 30</p>|
|LAG 09 Status|<p>-</p>|`SNMP agent`|lag09.status<p>Update: 30</p>|
|LAG 09 Traffic IN|<p>-</p>|`SNMP agent`|lag09.traffic.in<p>Update: 30</p>|
|LAG4 Name|<p>-</p>|`SNMP agent`|lag.name.4<p>Update: 30</p>|
|LAG5 Name|<p>-</p>|`SNMP agent`|lag.name.5<p>Update: 30</p>|
|LAG6 Name|<p>-</p>|`SNMP agent`|lag.name.6<p>Update: 30</p>|
|LAG8 Name|<p>-</p>|`SNMP agent`|lag.name.8<p>Update: 30</p>|
|LAG9 Name|<p>-</p>|`SNMP agent`|lag.name.9<p>Update: 30</p>|
|LAG10 Name|<p>-</p>|`SNMP agent`|lag.name.10<p>Update: 30</p>|
|LAG 07 Status|<p>-</p>|`SNMP agent`|lag07.status<p>Update: 30</p>|
|LAG 10 Traffic IN|<p>-</p>|`SNMP agent`|lag10.traffic.in<p>Update: 30</p>|
|LAG 03 Traffic OUT|<p>-</p>|`SNMP agent`|lag03.traffic.out<p>Update: 30</p>|
|LAG 01 Traffic OUT|<p>-</p>|`SNMP agent`|lag01.traffic.out<p>Update: 30</p>|
|LAG 02 Traffic OUT|<p>-</p>|`SNMP agent`|lag02.traffic.out<p>Update: 30</p>|
|LAG 05 Traffic OUT|<p>-</p>|`SNMP agent`|lag05.traffic.out<p>Update: 30</p>|
|LAG 06 Status|<p>-</p>|`SNMP agent`|lag06.status<p>Update: 30</p>|
|LAG 06 Traffic IN|<p>-</p>|`SNMP agent`|lag06.traffic.in<p>Update: 30</p>|
|LAG 10 Status|<p>-</p>|`SNMP agent`|lag10.status<p>Update: 30</p>|
|LAG 10 Traffic OUT|<p>-</p>|`SNMP agent`|lag10.traffic.out<p>Update: 30</p>|
|LAG 13 Status|<p>-</p>|`SNMP agent`|lag13.status<p>Update: 30</p>|
|LAG 15 Traffic IN|<p>-</p>|`SNMP agent`|lag15.traffic.in<p>Update: 30</p>|
|LAG 04 Status|<p>-</p>|`SNMP agent`|lag04.status<p>Update: 30</p>|
|LAG 06 Traffic OUT|<p>-</p>|`SNMP agent`|lag06.traffic.out<p>Update: 30</p>|
|LAG 04 Traffic IN|<p>-</p>|`SNMP agent`|lag04.traffic.in<p>Update: 30</p>|
|LAG 09 Traffic OUT|<p>-</p>|`SNMP agent`|lag09.traffic.out<p>Update: 30</p>|
|LAG 04 Traffic OUT|<p>-</p>|`SNMP agent`|lag04.traffic.out<p>Update: 30</p>|
|LAG 05 Status|<p>-</p>|`SNMP agent`|lag05.status<p>Update: 30</p>|
|Port 04 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.4<p>Update: 60</p>|
|LAG21 Name|<p>-</p>|`SNMP agent`|lag.name.21<p>Update: 30</p>|
|Port 15 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.15<p>Update: 60</p>|
|Port 16 Status|<p>-</p>|`SNMP agent`|ifOperStatus.16<p>Update: 60</p>|
|Serial number|<p>-</p>|`SNMP agent`|serial.number<p>Update: 86400</p>|
|Port 05 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.5<p>Update: 60</p>|
|Port 08 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.8<p>Update: 60</p>|
|Port 06 Status|<p>-</p>|`SNMP agent`|ifOperStatus.6<p>Update: 60</p>|
|Port 06 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.6<p>Update: 60</p>|
|Port 07 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.7<p>Update: 60</p>|
|Port 08 Status|<p>-</p>|`SNMP agent`|ifOperStatus.8<p>Update: 60</p>|
|Port 08 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.8<p>Update: 60</p>|
|Port 09 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.9<p>Update: 60</p>|
|Port 10 Status|<p>-</p>|`SNMP agent`|ifOperStatus.10<p>Update: 60</p>|
|Port 10 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.10<p>Update: 60</p>|
|Port 10 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.10<p>Update: 60</p>|
|Port 11 Status|<p>-</p>|`SNMP agent`|ifOperStatus.11<p>Update: 60</p>|
|IP|<p>-</p>|`SNMP agent`|IP.switch<p>Update: 3600</p>|
|Port 05 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.5<p>Update: 60</p>|
|Port 14 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.14<p>Update: 60</p>|
|Port 07 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.7<p>Update: 60</p>|
|Port 11 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.11<p>Update: 60</p>|
|LAG1 Name|<p>-</p>|`SNMP agent`|lag.name.1<p>Update: 30</p>|
|LAG 01 Traffic IN|<p>-</p>|`SNMP agent`|lag01.traffic.in<p>Update: 30</p>|
|LAG 19 Traffic IN|<p>-</p>|`SNMP agent`|lag19.traffic.in<p>Update: 30</p>|
|LAG 19 Traffic OUT|<p>-</p>|`SNMP agent`|lag19.traffic.out<p>Update: 30</p>|
|LAG20 Name|<p>-</p>|`SNMP agent`|lag.name.20<p>Update: 30</p>|
|LAG 20 Status|<p>-</p>|`SNMP agent`|lag20.status<p>Update: 30</p>|
|LAG 16 Status|<p>-</p>|`SNMP agent`|lag16.status<p>Update: 30</p>|
|LAG 15 Traffic OUT|<p>-</p>|`SNMP agent`|lag15.traffic.out<p>Update: 30</p>|
|LAG11 Name|<p>-</p>|`SNMP agent`|lag.name.11<p>Update: 30</p>|
|LAG 11 Status|<p>-</p>|`SNMP agent`|lag11.status<p>Update: 30</p>|
|LAG 11 Traffic OUT|<p>-</p>|`SNMP agent`|lag11.traffic.out<p>Update: 30</p>|
|LAG12 Name|<p>-</p>|`SNMP agent`|lag.name.12<p>Update: 30</p>|
|Port 01 Traffic OUT|<p>-</p>|`SNMP agent`|ifOutOctets.1<p>Update: 60</p>|
|LAG 26 Traffic IN|<p>-</p>|`SNMP agent`|lag26.traffic.in<p>Update: 30</p>|
|LAG 26 Traffic OUT|<p>-</p>|`SNMP agent`|lag26.traffic.out<p>Update: 30</p>|
|Location|<p>-</p>|`SNMP agent`|system.sysLocation.0<p>Update: 86400</p>|
|MAC Address|<p>-</p>|`SNMP agent`|mac.address<p>Update: 86400</p>|
|Model|<p>-</p>|`SNMP agent`|model<p>Update: 86400</p>|
|Port 02 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.2<p>Update: 60</p>|
|Port 02 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.2<p>Update: 60</p>|
|Port 03 Status|<p>-</p>|`SNMP agent`|ifOperStatus.3<p>Update: 60</p>|
|Port 04 Status|<p>-</p>|`SNMP agent`|ifOperStatus.4<p>Update: 60</p>|
|Port 04 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.4<p>Update: 60</p>|
|LAG 26 Status|<p>-</p>|`SNMP agent`|lag26.status<p>Update: 30</p>|
|Port 05 Status|<p>-</p>|`SNMP agent`|ifOperStatus.5<p>Update: 60</p>|
|LAG 23 Status|<p>-</p>|`SNMP agent`|lag23.status<p>Update: 30</p>|
|Port 15 Status|<p>-</p>|`SNMP agent`|ifOperStatus.15<p>Update: 60</p>|
|Port 12 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.12<p>Update: 60</p>|
|Port 13 Status|<p>-</p>|`SNMP agent`|ifOperStatus.13<p>Update: 60</p>|
|Port 13 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.13<p>Update: 60</p>|
|LAG 25 Status|<p>-</p>|`SNMP agent`|lag25.status<p>Update: 30</p>|
|Port 13 Traffic OUT |<p>-</p>|`SNMP agent`|ifOutOctets.13<p>Update: 60</p>|
|System Name|<p>-</p>|`SNMP agent`|system.sysName.0<p>Update: 86400</p>|
|LAG2 Name|<p>-</p>|`SNMP agent`|lag.name.2<p>Update: 30</p>|
|LAG 08 Status|<p>-</p>|`SNMP agent`|lag08.status<p>Update: 30</p>|
|LAG 08 Traffic OUT|<p>-</p>|`SNMP agent`|lag08.traffic.out<p>Update: 30</p>|
|LAG 16 Traffic OUT|<p>-</p>|`SNMP agent`|lag16.traffic.out<p>Update: 30</p>|
|LAG17 Name|<p>-</p>|`SNMP agent`|lag.name.17<p>Update: 30</p>|
|LAG 17 Status|<p>-</p>|`SNMP agent`|lag17.status<p>Update: 30</p>|
|LAG 17 Traffic IN|<p>-</p>|`SNMP agent`|lag17.traffic.in<p>Update: 30</p>|
|LAG 17 Traffic OUT|<p>-</p>|`SNMP agent`|lag17.traffic.out<p>Update: 30</p>|
|LAG16 Name|<p>-</p>|`SNMP agent`|lag.name.16<p>Update: 30</p>|
|LAG19 Name|<p>-</p>|`SNMP agent`|lag.name.19<p>Update: 30</p>|
|Software version|<p>-</p>|`SNMP agent`|software.version<p>Update: 3600</p>|
|Port 12 Traffic IN |<p>-</p>|`SNMP agent`|ifInOctects.12<p>Update: 60</p>|
|LAG7 Name|<p>-</p>|`SNMP agent`|lag.name.7<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

