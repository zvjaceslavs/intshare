# CISCO EIGRP

## Overview


```
CISCO-EIGRP-MIB  
items in the template:  
  
total number of existing EIGRP derived routes   
cEigrpTopoRoutes.0
total number query reply packets sent   
cEigrpRepliesSent.0
format of the router-id type   
cEigrpAsRouterIdType.0
total number of Stuck-In-Active (SIA) query packets received  
cEigrpSiaQueriesRcvd.0
total number of Stuck-In-Active (SIA) query packets sent  
cEigrpSiaQueriesSent.0
number of EIGRP packets dropped from the input queue   
cEigrpInputQDrops.0
highest number of EIGRP packets in the input queue   
cEigrpInputQHighMark.0
total number packet acknowledgements received   
cEigrpAcksRcvd.0
total number packet acknowledgements sent   
cEigrpAcksSent.0
total number query reply packets received   
cEigrpRepliesRcvd.0
total number alternate route query received   
cEigrpQueriesRcvd.0
Routes in topology table EIGRP AS   
cEigrpHeadSerial.0
total number alternate route query sent   
cEigrpQueriesSent.0
total number routing update packets received   
cEigrpUpdatesRcvd.0
total number routing update packets sent   
cEigrpUpdatesSent.0
total number Hello packets received   
cEigrpHellosRcvd.0
total number Hello packets sent   
cEigrpHellosSent.0
total number of live EIGRP neighbors   
cEigrpNbrCount.0
total number of dummy currently   
cEigrpXmitDummies.0
alternative route query packets are sent to adjacent EIGRP pairs   
cEigrpXmitPendReplies.0
The serial number that would be assigned to the next route   
cEigrpNextSerial.0
EIGRP unique router-id   
cEigrpAsRouterId.0

```

 



## Author

Jonathanw7f

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Cisco Enhanced Interior Gateway Protocol Active (EIGRP)|<p>-</p>|`SNMP agent`|cEigrpTraffStatsEntry<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Routes in topology table EIGRP AS|<p>Routes in a topology table for an AS are assigned serial numbers and are sequenced internally as they are inserted and deleted. The serial number of the first route in that internal sequence is called the head serial number. Each AS has its own topology table, and its own serial number space, each of which begins with the value 1. A serial number of zero implies that there are no routes in the topology.</p>|`SNMP agent`|cEigrpHeadSerial.0<p>Update: 1m</p>|
|total number alternate route query sent|<p>The total number alternate route query packets that have been sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpQueriesSent.0<p>Update: 1m</p>|
|number of EIGRP packets dropped from the input queue|<p>The number of EIGRP packets dropped from the input queue due to it being full within the AS.</p>|`SNMP agent`|cEigrpInputQDrops.0<p>Update: 1m</p>|
|total number of Stuck-In-Active (SIA) query packets received|<p>The total number of Stuck-In-Active (SIA) query packets received from all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpSiaQueriesRcvd.0<p>Update: 1m</p>|
|format of the router-id type|<p>The format of the router-id configured or automatically selected for the EIGRP AS.</p>|`SNMP agent`|cEigrpAsRouterIdType.0<p>Update: 1m</p>|
|highest number of EIGRP packets in the input queue|<p>The highest number of EIGRP packets in the input queue waiting to be processed internally addressed to this AS.</p>|`SNMP agent`|cEigrpInputQHighMark.0<p>Update: 1m</p>|
|total number of dummy currently|<p>A dummy is a temporary internal entity used as a place holder in the topology table for an AS. They are not transmitted in routing updates. This is the total number currently in existence associated with the AS.</p>|`SNMP agent`|cEigrpXmitDummies.0<p>Update: 1m</p>|
|EIGRP unique router-id|<p>The format of the router-id configured or automatically selected for the EIGRP AS.</p>|`SNMP agent`|cEigrpAsRouterId.0<p>Update: 1m</p>|
|total number of Stuck-In-Active (SIA) query packets sent|<p>The total number of Stuck-In-Active (SIA) query packets sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpSiaQueriesSent.0<p>Update: 1m</p>|
|total number query reply packets sent|<p>The total number query reply packets that have been sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpRepliesSent.0<p>Update: 1m</p>|
|The serial number that would be assigned to the next route|<p>The serial number that would be assigned to the next new or changed route in the topology table for the AS.</p>|`SNMP agent`|cEigrpNextSerial.0<p>Update: 1m</p>|
|total number of existing EIGRP derived routes|<p>The total number of EIGRP derived routes currently existing in the topology table for the AS.</p>|`SNMP agent`|cEigrpTopoRoutes.0<p>Update: 1m</p>|
|total number packet acknowledgements received|<p>The total number packet acknowledgements that have been received from all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpAcksRcvd.0<p>Update: 1m</p>|
|alternative route query packets are sent to adjacent EIGRP pairs|<p>When alternate route query packets are sent to adjacent EIGRP peers in an AS, replies are expected. This object is the total number of outstanding replies expected to queries that have been sent to peers in the current AS. It remains at zero most of the time until an EIGRP route becomes active.</p>|`SNMP agent`|cEigrpXmitPendReplies.0<p>Update: 1m</p>|
|total number packet acknowledgements sent|<p>The total number packet acknowledgements that have been sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpAcksSent.0<p>Update: 1m</p>|
|total number alternate route query received|<p>The total number alternate route query packets that have been received from all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpQueriesRcvd.0<p>Update: 1m</p>|
|total number Hello packets sent|<p>The total number Hello packets that have been sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpHellosSent.0<p>Update: 1m</p>|
|total number Hello packets received|<p>The total number Hello packets that have been received from all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpHellosRcvd.0<p>Update: 1m</p>|
|total number of live EIGRP neighbors|<p>-</p>|`SNMP agent`|cEigrpNbrCount.0<p>Update: 1m</p>|
|total number routing update packets received|<p>The total number Hello packets that have been received from all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpUpdatesRcvd.0<p>Update: 1m</p>|
|total number routing update packets sent|<p>The total number routing update packets that have been sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpUpdatesSent.0<p>Update: 1m</p>|
|total number query reply packets received|<p>The total number query reply packets that have been sent to all EIGRP neighbors formed on all interfaces whose IP addresses fall under networks configured for the EIGRP AS.</p>|`SNMP agent`|cEigrpRepliesRcvd.0<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

