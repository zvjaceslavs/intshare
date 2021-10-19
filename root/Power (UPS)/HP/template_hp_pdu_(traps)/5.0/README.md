# Monitoring PDU

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Trap Voltage High Critical|<p>The PDU has detected an input line voltage that is more than 20% ABOVE the expected voltage</p>|`SNMP trap`|snmptrap["Voltage High Critical"]<p>Update: 0</p>|
|Trap fallback|<p>-</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|Trap Voltage Low Critical|<p>The PDU has detected a very low input line voltage more than 20% BELOW the expected voltage, or the breaker may have tripped.</p>|`SNMP trap`|snmptrap["Voltage Low Critical"]<p>Update: 0</p>|
|Trap Total Load Warning|<p>The rated capacity for PDU has reached the rating level. There is a risk of tripping the branch circuit protection</p>|`SNMP trap`|snmptrap["Total Load Warning"]<p>Update: 0</p>|
|Total Heat|<p>-</p>|`SNMP agent`|pduOutputHeat.1<p>Update: 30s</p>|
|Trap PDU Communication Lost|<p>Connection between the daisy-chained PDUs is lost.</p>|`SNMP trap`|snmptrap["PDU Communication Lost"]<p>Update: 0</p>|
|Voltage Segment 1|<p>-</p>|`SNMP agent`|breakerVoltage.1.1<p>Update: 30s</p>|
|Trap Load Critical|<p>The rated capacity of the breaker has been exceeded. There is a high risk of tripping the breaker</p>|`SNMP trap`|snmptrap["Load Critical"]<p>Update: 0</p>|
|{HOST.NAME} Status|<p>-</p>|`SNMP agent`|pduStatus.1<p>Update: 1m</p>|
|Trap Total Heat Warning|<p>The heat created by the load attached to this PDU has reached a threshold</p>|`SNMP trap`|snmptrap["Total Heat Warning"]<p>Update: 0</p>|
|PDU Name|<p>-</p>|`SNMP agent`|pduName.1<p>Update: 1h</p>|
|Percent Load Segment 3|<p>-</p>|`SNMP agent`|breakerPercentLoad.1.3<p>Update: 30s</p>|
|Load Segment 3|<p>-</p>|`SNMP agent`|breakerCurrent.1.3<p>Update: 30s</p>|
|Trap Total Heat Critical|<p>The heat created by the load attached to this PDU has exceeded the set threshold</p>|`SNMP trap`|snmptrap["Total Heat Critical"]<p>Update: 0</p>|
|Voltage Segment 3|<p>-</p>|`SNMP agent`|breakerVoltage.1.3<p>Update: 30s</p>|
|Trap Total Power Critical|<p>The rated capacity of the PDU has been exceeded. There is a risk of tripping the branch circuit protection</p>|`SNMP trap`|snmptrap["Total Power Critical"]<p>Update: 0</p>|
|Load Segment 2|<p>-</p>|`SNMP agent`|breakerCurrent.1.2<p>Update: 30s</p>|
|Trap Voltage High Warning|<p>The PDU has detected an input line voltage that is more than 10% ABOVE the expected voltage</p>|`SNMP trap`|snmptrap["Voltage High Warning"]<p>Update: 0</p>|
|Voltage Segment 2|<p>-</p>|`SNMP agent`|breakerVoltage.1.2<p>Update: 30s</p>|
|Load Segment 1|<p>-</p>|`SNMP agent`|breakerCurrent.1.1<p>Update: 30s</p>|
|Trap Load Warning|<p>Load has reached the rating level for this breaker, the addition of any new load could overload or trip the breaker</p>|`SNMP trap`|snmptrap["Load Warning"]<p>Update: 0</p>|
|Total Power|<p>-</p>|`SNMP agent`|pduOutputPower.1<p>Update: 30s</p>|
|Total Load|<p>-</p>|`SNMP agent`|pduOutputLoad.1<p>Update: 30s</p>|
|Trap Current Critical|<p>Current has exceeded the breaker rating level. The addition of any new load could overload or trip the breaker</p>|`SNMP trap`|snmptrap["Current Critical"]<p>Update: 0</p>|
|Trap Total Power Warning|<p>The rated capacity for PDU has reached rating level. There is a risk of tripping the branch circuit protection</p>|`SNMP trap`|snmptrap["Total Power Warning"]<p>Update: 0</p>|
|Trap Voltage Low Warning|<p>The PDU has detected an input line voltage that is more than 10% BELOW the expected voltage</p>|`SNMP trap`|snmptrap["Voltage Low Warning"]<p>Update: 0</p>|
|Trap Current Warning|<p>Current has reached the rating level for this breaker, the addition of any new load could overload or trip the breaker</p>|`SNMP trap`|snmptrap["Current Warning"]<p>Update: 0</p>|
|Percent Load Segment 2|<p>-</p>|`SNMP agent`|breakerPercentLoad.1.2<p>Update: 30s</p>|
|Trap Total Load Critical|<p>The rated capacity of the PDU has been exceeded. There is a risk of tripping the branch circuit protection</p>|`SNMP trap`|snmptrap["Total Load Critical"]<p>Update: 0</p>|
|Percent Load Segment 1|<p>-</p>|`SNMP agent`|breakerPercentLoad.1.1<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Current Critical on {HOST.NAME}|<p>Current has exceeded the breaker rating level. The addition of any new load could overload or trip the breaker</p>|average|
|Current Warning on {HOST.NAME}|<p>Current has reached the rating level for this breaker, the addition of any new load could overload or trip the breaker</p>|warning|
|Load Critical on {HOST.NAME}|<p>The rated capacity of the breaker has been exceeded. There is a high risk of tripping the breaker</p>|average|
|Load Warning on {HOST.NAME}|<p>Load has reached the rating level for this breaker, the addition of any new load could overload or trip the breaker</p>|warning|
|Pas de données sur le statut de {HOST.NAME} pendant plus de 3 minutes.|<p>-</p>|average|
|PDU Communication Lost on {HOST.NAME}|<p>Connection between the daisy-chained PDUs is lost.</p>|warning|
|Total Heat Critical on {HOST.NAME}|<p>-</p>|average|
|Total Heat Critical on {HOST.NAME}|<p>The heat created by the load attached to this PDU has exceeded the set threshold</p>|average|
|Total Heat Warning on {HOST.NAME}|<p>-</p>|average|
|Total Heat Warning on {HOST.NAME}|<p>The heat created by the load attached to this PDU has reached a threshold</p>|warning|
|Total Load above 50% on {HOST.NAME}|<p>-</p>|information|
|Total Load above 80% on {HOST.NAME}|<p>-</p>|warning|
|Total Load above 100% on {HOST.NAME}|<p>-</p>|average|
|Total Load Critical on {HOST.NAME}|<p>The rated capacity of the PDU has been exceeded. There is a risk of tripping the branch circuit protection</p>|average|
|Total Load Warning on {HOST.NAME}|<p>The rated capacity of the PDU has been exceeded. There is a risk of tripping the branch circuit protection</p>|warning|
|Total Power Critical on {HOST.NAME}|<p>-</p>|average|
|Total Power Critical on {HOST.NAME}|<p>The rated capacity of the PDU has been exceeded. There is a risk of tripping the branch circuit protection</p>|average|
|Total Power Warning on {HOST.NAME}|<p>-</p>|warning|
|Total Power Warning on {HOST.NAME}|<p>The rated capacity for PDU has reached rating level. There is a risk of tripping the branch circuit protection</p>|warning|
|Unknown trap received from {HOST.NAME}|<p>-</p>|average|
|Voltage High Critical on {HOST.NAME}|<p>The PDU has detected an input line voltage that is more than 20% ABOVE the expected voltage</p>|average|
|Voltage High Warning on {HOST.NAME}|<p>The PDU has detected an input line voltage that is more than 10% ABOVE the expected voltage</p>|warning|
|Voltage Low Critical on {HOST.NAME}|<p>The PDU has detected a very low input line voltage more than 20% BELOW the expected voltage, or the breaker may have tripped.</p>|average|
|Voltage Low Warning on {HOST.NAME}|<p>The PDU has detected an input line voltage that is more than 10% BELOW the expected voltage</p>|warning|
