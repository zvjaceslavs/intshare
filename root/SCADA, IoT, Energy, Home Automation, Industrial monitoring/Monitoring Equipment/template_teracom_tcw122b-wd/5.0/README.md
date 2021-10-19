# Template Teracom TCW122B-WD SNMPv1

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
|Received SNMP traps|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|date|<p>Release date</p>|`SNMP agent`|TCW122B-WD.date<p>Update: 60m</p>|
|deviceIPAddress|<p>-</p>|`SNMP agent`|TCW122B-WD.deviceIPAddress<p>Update: 60m</p>|
|deviceMACAddress|<p>-</p>|`SNMP agent`|TCW122B-WD.deviceMACAddress<p>Update: 60m</p>|
|dhcpConfig|<p>off(0), on(1)</p>|`SNMP agent`|TCW122B-WD.dhcpConfig<p>Update: 60m</p>|
|digitalInput1State|<p>-</p>|`SNMP agent`|TCW122B-WD.digitalInput1State<p>Update: 1m</p>|
|digitalInput2State|<p>-</p>|`SNMP agent`|TCW122B-WD.digitalInput2State<p>Update: 1m</p>|
|filterMACAddress1|<p>-</p>|`SNMP agent`|TCW122B-WD.filterMACAddress1<p>Update: 60m</p>|
|filterMACAddress2|<p>-</p>|`SNMP agent`|TCW122B-WD.filterMACAddress2<p>Update: 60m</p>|
|filterMACAddress3|<p>-</p>|`SNMP agent`|TCW122B-WD.filterMACAddress3<p>Update: 60m</p>|
|filterMACEnable1|<p>-</p>|`SNMP agent`|TCW122B-WD.filterMACEnable1<p>Update: 60m</p>|
|filterMACEnable2|<p>-</p>|`SNMP agent`|TCW122B-WD.filterMACEnable2<p>Update: 60m</p>|
|filterMACEnable3|<p>-</p>|`SNMP agent`|TCW122B-WD.filterMACEnable3<p>Update: 60m</p>|
|gateway|<p>-</p>|`SNMP agent`|TCW122B-WD.gateway<p>Update: 60m</p>|
|hostName|<p>-</p>|`SNMP agent`|TCW122B-WD.hostName<p>Update: 60m</p>|
|humi1|<p>Output is 200 if sensor is not connected</p>|`SNMP agent`|TCW122B-WD.humi1<p>Update: 1m</p>|
|humi2|<p>Output is 200 if sensor is not connected</p>|`SNMP agent`|TCW122B-WD.humi2<p>Update: 1m</p>|
|humidity1Hyst|<p>-</p>|`SNMP agent`|TCW122B-WD.humidity1Hyst<p>Update: 5m</p>|
|humidity1Max|<p>-</p>|`SNMP agent`|TCW122B-WD.humidity1Max<p>Update: 5m</p>|
|humidity1Min|<p>-</p>|`SNMP agent`|TCW122B-WD.humidity1Min<p>Update: 5m</p>|
|humidity2Hyst|<p>-</p>|`SNMP agent`|TCW122B-WD.humidity2Hyst<p>Update: 5m</p>|
|humidity2Max|<p>-</p>|`SNMP agent`|TCW122B-WD.humidity2Max<p>Update: 5m</p>|
|humidity2Min|<p>-</p>|`SNMP agent`|TCW122B-WD.humidity2Min<p>Update: 5m</p>|
|analog input1 name|<p>-</p>|`SNMP agent`|TCW122B-WD.input1<p>Update: 60m</p>|
|analog input2 name|<p>-</p>|`SNMP agent`|TCW122B-WD.input2<p>Update: 60m</p>|
|maxNumberOfTraps|<p>-</p>|`SNMP agent`|TCW122B-WD.maxNumberOfTraps<p>Update: 60m</p>|
|name|<p>-</p>|`SNMP agent`|TCW122B-WD.name<p>Update: 60m</p>|
|relay1ControlledBy|<p>-</p>|`SNMP agent`|TCW122B-WD.relay1ControlledBy<p>Update: 1h</p>|
|relay1Pulse|<p>-</p>|`SNMP agent`|TCW122B-WD.relay1Pulse<p>Update: 1m</p>|
|relay1State|<p>-</p>|`SNMP agent`|TCW122B-WD.relay1State<p>Update: 1m</p>|
|relay2ControlledBy|<p>-</p>|`SNMP agent`|TCW122B-WD.relay2ControlledBy<p>Update: 1h</p>|
|relay2Pulse|<p>-</p>|`SNMP agent`|TCW122B-WD.relay2Pulse<p>Update: 1m</p>|
|relay2State|<p>-</p>|`SNMP agent`|TCW122B-WD.relay2State<p>Update: 1m</p>|
|Digital input 1 name|<p>-</p>|`SNMP agent`|TCW122B-WD.relay6<p>Update: 60m</p>|
|Digital input 2 name|<p>-</p>|`SNMP agent`|TCW122B-WD.relay7<p>Update: 60m</p>|
|relayPulseWidth|<p>-</p>|`SNMP agent`|TCW122B-WD.relayPulseWidth<p>Update: 1h</p>|
|snmpConfiguration|<p>-</p>|`SNMP agent`|TCW122B-WD.snmpConfiguration<p>Update: 60m</p>|
|subnetMask|<p>-</p>|`SNMP agent`|TCW122B-WD.subnetMask<p>Update: 60m</p>|
|temp1|<p>Output is 200 if sensor is not connected</p>|`SNMP agent`|TCW122B-WD.temp1<p>Update: 1m</p>|
|temp2|<p>Output is 200 if sensor is not connected</p>|`SNMP agent`|TCW122B-WD.temp2<p>Update: 1m</p>|
|temperature1Hyst|<p>-</p>|`SNMP agent`|TCW122B-WD.temperature1Hyst<p>Update: 5m</p>|
|temperature1Max|<p>-</p>|`SNMP agent`|TCW122B-WD.temperature1Max<p>Update: 5m</p>|
|temperature1Min|<p>-</p>|`SNMP agent`|TCW122B-WD.temperature1Min<p>Update: 5m</p>|
|temperature2Hyst|<p>-</p>|`SNMP agent`|TCW122B-WD.temperature2Hyst<p>Update: 5m</p>|
|temperature2Max|<p>-</p>|`SNMP agent`|TCW122B-WD.temperature2Max<p>Update: 5m</p>|
|temperature2Min|<p>-</p>|`SNMP agent`|TCW122B-WD.temperature2Min<p>Update: 5m</p>|
|Temperature units|<p>-</p>|`SNMP agent`|TCW122B-WD.temperatureUnits<p>Update: 1h</p>|
|trapCommunity|<p>-</p>|`SNMP agent`|TCW122B-WD.trapCommunity<p>Update: 60m</p>|
|trapEnabled|<p>-</p>|`SNMP agent`|TCW122B-WD.trapEnabled<p>Update: 60m</p>|
|trapInterval|<p>-</p>|`SNMP agent`|TCW122B-WD.trapInterval<p>Update: 60m</p>|
|trapReceiverIPAddress|<p>-</p>|`SNMP agent`|TCW122B-WD.trapReceiverIPAddress<p>Update: 60m</p>|
|version|<p>-</p>|`SNMP agent`|TCW122B-WD.version<p>Update: 60m</p>|
|vlanId|<p>-</p>|`SNMP agent`|TCW122B-WD.vlanId<p>Update: 60m</p>|
|vlanStatus|<p>disabled(0), enabled(1)</p>|`SNMP agent`|TCW122B-WD.vlanStatus<p>Update: 60m</p>|
|voltage1|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage1<p>Update: 1m</p>|
|voltage1Hyst|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage1Hyst<p>Update: 5m</p>|
|voltage1Max|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage1Max<p>Update: 5m</p>|
|voltage1Min|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage1Min<p>Update: 5m</p>|
|voltage2|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage2<p>Update: 1m</p>|
|voltage2Hyst|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage2Hyst<p>Update: 5m</p>|
|voltage2Max|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage2Max<p>Update: 5m</p>|
|voltage2Min|<p>-</p>|`SNMP agent`|TCW122B-WD.voltage2Min<p>Update: 5m</p>|
|watchdog 1 mode|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg1Mode<p>Update: 60m</p>|
|watchdog 1 number of restarts|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg1NumberOfRestarts<p>Update: 60m</p>|
|watchdog 1 outgoing ping interval|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg1OutgoingPingInterval<p>Update: 60m</p>|
|watchdog 1 ping IP-address|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg1PingIPAddress<p>Update: 60m</p>|
|watchdog 1 ping timeout for restart|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg1PingTimeOutForRestart<p>Update: 60m</p>|
|watchdog 2 mode|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg2Mode<p>Update: 60m</p>|
|watchdog 2 number of restarts|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg2NumberOfRestarts<p>Update: 60m</p>|
|watchdog 2 outgoing ping interval|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg2OutgoingPingInterval<p>Update: 60m</p>|
|watchdog 2 ping IP-address|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg2PingIPAddress<p>Update: 60m</p>|
|watchdog 2 ping timeout for restart|<p>-</p>|`SNMP agent`|TCW122B-WD.wdg2PingTimeOutForRestart<p>Update: 60m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Humidity 1 high alarm|<p>-</p>|average|
|Humidity 1 low alarm|<p>-</p>|average|
|Humidity 2 high alarm|<p>-</p>|average|
|Humidity 2 low alarm|<p>-</p>|average|
|Temperature 1 high alarm|<p>-</p>|average|
|Temperature 1 low alarm|<p>-</p>|average|
|Temperature 2 high alarm|<p>-</p>|average|
|Temperature 2 low alarm|<p>-</p>|average|
|Voltage 1 high alarm|<p>-</p>|average|
|Voltage 1 low alarm|<p>-</p>|average|
|Voltage 2 high alarm|<p>-</p>|average|
|Voltage 2 low alarm|<p>-</p>|average|
