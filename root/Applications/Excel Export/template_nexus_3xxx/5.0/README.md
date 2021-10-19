# NEXUS 3xxx

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CPU_USAGE_MAX}|<p>-</p>|`90`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Fan|<p>Found fan information.</p>|`SNMP agent`|net.snmp.cefcFanTrayOperStatus<p>Update: 1d</p>|
|CPU|<p>Found CPU information.</p>|`SNMP agent`|net.snmp.cpuDiscovery<p>Update: 1d</p>|
|Interfaces|<p>Found interface information.</p>|`SNMP agent`|net.snmp.ifDescr<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP IN Destination Unreachs (deprecated)|<p>Get the number of ICMP Destination Unreachable messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInDestUnreachs<p>Update: 1m</p>|
|ICMP IN Echo Reps (deprecated)|<p>Get the number of ICMP Echo Reply messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInEchoReps<p>Update: 1m</p>|
|ICMP IN Echos (deprecated)|<p>Get the number of ICMP Echo (request) messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInEchos<p>Update: 1m</p>|
|ICMP IN Errors (deprecated)|<p>Get the number of ICMP messages which the entity received but determined as having ICMP-specific errors (bad ICMP checksums, bad length, etc.). (deprecated)</p>|`SNMP agent`|net.snmp.icmpInErrors<p>Update: 1m</p>|
|ICMP IN Msgs (deprecated)|<p>Get the total number of ICMP messages which the entity received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInMsgs<p>Update: 1m</p>|
|ICMP IN Param Prob (deprecated)|<p>Get the number of ICMP Parameter Problem messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInParmProbs<p>Update: 1m</p>|
|ICMP IN Redirects (deprecated)|<p>Get the number of ICMP Redirect messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInRedirects<p>Update: 1m</p>|
|ICMP IN Source Quenchs (deprecated)|<p>Get the number of ICMP Source Quench messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInSrcQuenchs<p>Update: 1m</p>|
|ICMP IN Time Excds (deprecated)|<p>Get the number of ICMP Time Exceeded messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInTimeExcds<p>Update: 1m</p>|
|ICMP IN Timestamp Reps (deprecated)|<p>Get the number of ICMP Timestamp Reply messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInTimestampReps<p>Update: 1m</p>|
|ICMP IN Timestamps (deprecated)|<p>Get the number of ICMP Timestamp (request) messages received. (deprecated)</p>|`SNMP agent`|net.snmp.icmpInTimestamps<p>Update: 1m</p>|
|ICMP OUT Destination Unreachs (deprecated)|<p>Get the number of ICMP Destination Unreachable messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutDestUnreachs<p>Update: 1m</p>|
|ICMP OUT Echo Reps (deprecated)|<p>Get the number of ICMP Echo Reply messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutEchoReps<p>Update: 1m</p>|
|ICMP OUT Echos (deprecated)|<p>Get the number of ICMP Echo (request) messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutEchos<p>Update: 1m</p>|
|ICMP OUT Errors (deprecated)|<p>Get the number of ICMP messages which this entity did not send due to problems discovered within ICMP, such as a lack of buffers. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutErrors<p>Update: 1m</p>|
|ICMP OUT Msgs (deprecated)|<p>Get the total number of ICMP messages which this entity attempted to send. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutMsgs<p>Update: 1m</p>|
|ICMP OUT Param Prob (deprecated)|<p>Get the number of ICMP Parameter Problem messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutParmProbs<p>Update: 1m</p>|
|ICMP OUT Redirects (deprecated)|<p>Get the number of ICMP Redirect messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutRedirects<p>Update: 1m</p>|
|ICMP OUT Source Quenchs (deprecated)|<p>Get the number of ICMP Source Quench messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutSrcQuenchs<p>Update: 1m</p>|
|ICMP OUT Time Excds (deprecated)|<p>Get the number of ICMP Time Exceeded messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutTimeExcds<p>Update: 1m</p>|
|ICMP OUT Timestamp Reps (deprecated)|<p>Get the number of ICMP Timestamp Reply messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutTimestampReps<p>Update: 1m</p>|
|ICMP OUT Timestamps (deprecated)|<p>Get the number of ICMP Timestamp (request) messages sent. (deprecated)</p>|`SNMP agent`|net.snmp.icmpOutTimestamps<p>Update: 1m</p>|
|IP Forwarding v4|<p>Get the indication of whether this entity is acting as an IPv4 router in respect to the forwarding of datagrams received by, but not addressed to, this entity.</p>|`SNMP agent`|net.snmp.ipForwarding<p>Update: 1m</p>|
|IP Frag Fails (deprecated)|<p>Get the number of IPv4 datagrams that have been discarded because they needed to be fragmented at this entity but could not be, e.g., because their Don't Fragment flag was set. (deprecated)</p>|`SNMP agent`|net.snmp.ipFragFails<p>Update: 1m</p>|
|IP IN Addr Errors (deprecated)|<p>Get the number of input datagrams discarded because the IPv4 address in their IPv4 header's destination field was not a valid address to be received at this entity. (deprecated)</p>|`SNMP agent`|net.snmp.ipInAddrErrors<p>Update: 1m</p>|
|IP IN Delivers (deprecated)|<p>Get the change per second of the total number of input datagrams successfully delivered to IPv4 user-protocols (including ICMP). (deprecated)</p>|`SNMP agent`|net.snmp.ipInDelivers<p>Update: 1m</p>|
|IP IN Discards (deprecated)|<p>Get the change per second of the number of input IPv4 datagrams for which no problems were encountered to prevent their continued processing, but which were discarded (e.g., for lack of buffer space). (deprecated)</p>|`SNMP agent`|net.snmp.ipInDiscards<p>Update: 1m</p>|
|IP IN headers Errors (deprecated)|<p>Get the number of input datagrams discarded due to errors in their IPv4 headers, including bad checksums, version number mismatch, other format errors, time-to-live exceeded, errors discovered in processing their IPv4 options, etc.. (deprecated)</p>|`SNMP agent`|net.snmp.ipInHdrErrors<p>Update: 1m</p>|
|IP IN Receives (deprecated)|<p>Get the change per second of the total number of input IPv4 datagrams received from interfaces, including those received in error. (deprecated)</p>|`SNMP agent`|net.snmp.ipInReceives<p>Update: 1m</p>|
|IP OUT Discards (deprecated)|<p>Get the change per second of the number of output IPv4 datagrams for which no problem was encountered to prevent their transmission to their destination, but which were discarded (e.g., for lack of buffer space). (deprecated)</p>|`SNMP agent`|net.snmp.ipOutDiscards<p>Update: 1m</p>|
|IP OUT Requests (deprecated)|<p>Get the change per second of the total number of IPv4 datagrams which local IPv4 user protocols (including ICMP) supplied to IPv4 in requests for transmission. (deprecated)</p>|`SNMP agent`|net.snmp.ipOutRequests<p>Update: 1m</p>|
|IP Reasm Fails (deprecated)|<p>Get he number of failures detected by the IPv4 re-assembly algorithm (for whatever reason: timed out, errors, etc). (deprecated)</p>|`SNMP agent`|net.snmp.ipReasmFails<p>Update: 1m</p>|
|IP Reasm Timeout|<p>Get the maximum number of seconds that received fragments are held while they are awaiting reassembly at this entity.</p>|`SNMP agent`|net.snmp.ipReasmTimeout<p>Update: 1m</p>|
|IP IN Addr Errors v4|<p>Get the number of input IPv4 datagrams discarded because the IPv4 address in their IP header's destination field was not a valid address to be received at this entity.</p>|`SNMP agent`|net.snmp.ipSystemStatsInAddrErrors.ipv4<p>Update: 1m</p>|
|IP IN Addr Errors v6|<p>Get the number of input IPv6 datagrams discarded because the IPv6 address in their IP header's destination field was not a valid address to be received at this entity.</p>|`SNMP agent`|net.snmp.ipSystemStatsInAddrErrors.ipv6<p>Update: 1m</p>|
|IP IN Delivers v4|<p>Get the change per second of the total number of datagrams successfully delivered to IPv4 user-protocols (including ICMP).</p>|`SNMP agent`|net.snmp.ipSystemStatsInDelivers.ipv4<p>Update: 1m</p>|
|IP IN Delivers v6|<p>Get the change per second of the total number of datagrams successfully delivered to IPv6 user-protocols (including ICMP).</p>|`SNMP agent`|net.snmp.ipSystemStatsInDelivers.ipv6<p>Update: 1m</p>|
|IP IN Discards v4|<p>Get the change per second of the number of input IPv4 datagrams for which no problems were encountered to prevent their continued processing, but were discarded (e.g., for lack of buffer space).</p>|`SNMP agent`|net.snmp.ipSystemStatsInDiscards.ipv4<p>Update: 1m</p>|
|IP IN Discards v6|<p>Get the change per second of the number of input IPv6 datagrams for which no problems were encountered to prevent their continued processing, but were discarded (e.g., for lack of buffer space).</p>|`SNMP agent`|net.snmp.ipSystemStatsInDiscards.ipv6<p>Update: 1m</p>|
|IP IN headers Errors v4|<p>Get the number of input IPv4 datagrams discarded due to errors in their IP headers, including version number mismatch, other format errors, hop count exceeded, errors discovered in processing their IP options, etc.</p>|`SNMP agent`|net.snmp.ipSystemStatsInHdrErrors.ipv4<p>Update: 1m</p>|
|IP IN headers Errors v6|<p>Get the number of input IPv6 datagrams discarded due to errors in their IP headers, including version number mismatch, other format errors, hop count exceeded, errors discovered in processing their IP options, etc.</p>|`SNMP agent`|net.snmp.ipSystemStatsInHdrErrors.ipv6<p>Update: 1m</p>|
|IP IN Receives v4|<p>Get the change per second of the total number of input IPv4 datagrams received from interfaces, including those received in error.</p>|`SNMP agent`|net.snmp.ipSystemStatsInReceives.ipv4<p>Update: 1m</p>|
|IP IN Receives v6|<p>Get the change per second of the total number of input IPv6 datagrams received from interfaces, including those received in error.</p>|`SNMP agent`|net.snmp.ipSystemStatsInReceives.ipv6<p>Update: 1m</p>|
|IP OUT Discards v4|<p>Get the change per second of the number of output IPv4 datagrams for which no problem was encountered to prevent their transmission to their destination, but were discarded (e.g., for lack of buffer space).</p>|`SNMP agent`|net.snmp.ipSystemStatsOutDiscards.ipv4<p>Update: 1m</p>|
|IP OUT Discards v6|<p>Get the change per second of the number of output IPv6 datagrams for which no problem was encountered to prevent their transmission to their destination, but were discarded (e.g., for lack of buffer space).</p>|`SNMP agent`|net.snmp.ipSystemStatsOutDiscards.ipv6<p>Update: 1m</p>|
|IP Frag Fails v4|<p>Get the number of IPv4 datagrams that have been discarded because they needed to be fragmented but could not be.</p>|`SNMP agent`|net.snmp.ipSystemStatsOutFragFails.ipv4<p>Update: 1m</p>|
|IP Frag Fails v6|<p>Get the number of IPv6 datagrams that have been discarded because they needed to be fragmented but could not be.</p>|`SNMP agent`|net.snmp.ipSystemStatsOutFragFails.ipv6<p>Update: 1m</p>|
|IP OUT Requests v4|<p>Get the change per second of the total number of IPv4 datagrams which local IPv4 user protocols (including ICMP) supplied to IPv4 in requests for transmission.</p>|`SNMP agent`|net.snmp.ipSystemStatsOutRequests.ipv4<p>Update: 1m</p>|
|IP OUT Requests v6|<p>Get the change per second of the total number of IPv6 datagrams which local IPv6 user protocols (including ICMP) supplied to IPv6 in requests for transmission.</p>|`SNMP agent`|net.snmp.ipSystemStatsOutRequests.ipv6<p>Update: 1m</p>|
|IP Reasm Fails v4|<p>Get he number of failures detected by the IPv4 re-assembly algorithm (for whatever reason: timed out, errors, etc).</p>|`SNMP agent`|net.snmp.ipSystemStatsReasmFails.ipv4<p>Update: 1m</p>|
|IP Reasm Fails v6|<p>Get the number of failures detected by the IPv6 re-assembly algorithm (for whatever reason: timed out, errors, etc).</p>|`SNMP agent`|net.snmp.ipSystemStatsReasmFails.ipv6<p>Update: 1m</p>|
|IP Forwarding v6|<p>Get the indication of whether this entity is acting as an IPv6 router in respect to the forwarding of datagrams received by, but not addressed to, this entity.</p>|`SNMP agent`|net.snmp.ipv6Forwarding<p>Update: 1m</p>|
|System description|<p>Get the current system description.</p>|`SNMP agent`|net.snmp.sysDescr<p>Update: 1m</p>|
|System Name|<p>Get the current system name.</p>|`SNMP agent`|net.snmp.sysName<p>Update: 1m</p>|
|System Time|<p>Get the current system time.</p>|`SNMP agent`|net.snmp.sysUpTime<p>Update: 1m</p>|
|TCP Attempt fails|<p>Get the number of times that TCP connections have made a direct transition to the CLOSED state from either the SYN-SENT state or the SYN-RCVD state.</p>|`SNMP agent`|net.snmp.tcpAttemptFails<p>Update: 1m</p>|
|TCP Established Resets|<p>Get the number of times that TCP connections have made a direct transition to the CLOSED state from either the ESTABLISHED state or the CLOSE-WAIT state.</p>|`SNMP agent`|net.snmp.tcpEstabResets<p>Update: 1m</p>|
|TCP HC IN Segments|<p>Get the change per second of the total number of segments received, including those received in error.</p>|`SNMP agent`|net.snmp.tcpHCInSegs<p>Update: 1m</p>|
|TCP HC OUT Segments|<p>Get the change per second of the total number of segments sent, including those on current connections but excluding those containing only retransmitted octets.</p>|`SNMP agent`|net.snmp.tcpHCOutSegs<p>Update: 1m</p>|
|TCP IN Errors|<p>Get change per second of the total number of segments received in error (e.g., bad TCP checksums).</p>|`SNMP agent`|net.snmp.tcpInErrs<p>Update: 1m</p>|
|TCP IN Segments|<p>Get the change per second of the total number of segments received, including those received in error.</p>|`SNMP agent`|net.snmp.tcpInSegs<p>Update: 1m</p>|
|TCP Max Connection|<p>Get the max number of tcp connection allowed for this entity.</p>|`SNMP agent`|net.snmp.tcpMaxConn<p>Update: 1m</p>|
|TCP OUT Segments|<p>Get the change per second of the total number of segments sent, including those on current connections but excluding those containing only retransmitted octets.</p>|`SNMP agent`|net.snmp.tcpOutSegs<p>Update: 1m</p>|
|TCP RTO algorithm|<p>Get the algorithm used to determine the timeout value used for retransmitting unacknowledged octets.</p>|`SNMP agent`|net.snmp.tcpRtoAlgorithm<p>Update: 1m</p>|
|TCP RTO max|<p>Get the maximum value permitted by a TCP implementation for the retransmission timeout, measured in milliseconds.</p>|`SNMP agent`|net.snmp.tcpRtoMax<p>Update: 1m</p>|
|TCP RTO min|<p>Get the minimum value permitted by a TCP implementation for the retransmission timeout, measured in milliseconds.</p>|`SNMP agent`|net.snmp.tcpRtoMin<p>Update: 1m</p>|
|UDP HC IN Datagrams|<p>Get the change per second of total number of UDP datagrams delivered to UDP users, for devices that can receive more than 1 million UDP datagrams per second.</p>|`SNMP agent`|net.snmp.udpHCInDatagrams<p>Update: 1m</p>|
|UDP HC OUT Datagrams|<p>Get the change per second of total number of UDP datagrams sent from this entry, for devices that can receive more than 1 million UDP datagrams per second.</p>|`SNMP agent`|net.snmp.udpHCOutDatagrams<p>Update: 1m</p>|
|UDP IN Datagrams|<p>Get the change per second of total number of UDP datagrams delivered to UDP users.</p>|`SNMP agent`|net.snmp.udpInDatagrams<p>Update: 1m</p>|
|UDP IN Errors|<p>Get the number of received UDP datagrams that could not be delivered for reasons other than the lack of an application at the destination port.</p>|`SNMP agent`|net.snmp.udpInErrors<p>Update: 1m</p>|
|UDP No Ports|<p>Get he total number of received UDP datagrams for which there was no application at the destination port.</p>|`SNMP agent`|net.snmp.udpNoPorts<p>Update: 1m</p>|
|UDP OUT Datagrams|<p>Get the change per second of total number of UDP datagrams sent from this entry.</p>|`SNMP agent`|net.snmp.udpOutDatagrams<p>Update: 1m</p>|
|Fan {#SNMPVALUE} status|<p>Get the fan status of this entity.</p>|`SNMP agent`|cefcFanTrayOperStatus.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|CPU Memory Free|<p>Get the overall CPU wide system memory which is currently free.</p>|`SNMP agent`|net.cpu.cpmCPUMemoryFree["{#SNMPVALUE}"]<p>Update: 1m</p>|
|CPU Memory Used|<p>Get the overall CPU wide system memory which is currently under use.</p>|`SNMP agent`|net.cpu.cpmCPUMemoryUsed.["{#SNMPVALUE}"]<p>Update: 1m</p>|
|CPU Total pourcentage (1min)|<p>Get the overall CPU busy percentage in the last 1 minute period.</p>|`SNMP agent`|net.cpu.cpmCPUTotal1minRev.["{#SNMPINDEX}"]<p>Update: 1m</p>|
|Interface {#IFDESCR}: IN Discards|<p>Get the change per second of the number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol.</p>|`SNMP agent`|net.if.in[ifInDiscards.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: IN Errors|<p>For packet-oriented interfaces, get the change per second of the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character- oriented or fixed-length interfaces, get the change per second of the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|net.if.in[ifInErrors.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: IN Octets|<p>Get the change per second of the total number of octets received on the interface, including framing characters.</p>|`SNMP agent`|net.if.in[ifInOctets.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: OUT Discards|<p>Get the change per second of the number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being transmitted.</p>|`SNMP agent`|net.if.out[ifOutDiscards.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: OUT Errors|<p>For packet-oriented interfaces, get the change per second of the number of outbound packets that could not be transmitted because of errors. For character-oriented or fixed-length interfaces, get the change per second of the number of outbound transmission units that could not be transmitted because of errors.</p>|`SNMP agent`|net.if.out[ifOutErrors.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: OUT Octets|<p>Get the change per second of the total number of octets sent on the interface, including framing characters.</p>|`SNMP agent`|net.if.out[ifOutOctets.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}|<p>Get the status of Interface {#IFDESCR}.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p>|
|Interface {#IFDESCR}: Type|<p>Get the type of Interface {#IFDESCR}</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|IP Default TTL changed (deprecated)|<p>Inform admin to change state.</p>|information|
|IP v4 Forwarding status changed|<p>Inform admin to change state.</p>|information|
|IP v6 Forwarding status changed|<p>Inform admin to change state.</p>|information|
|New IP Frag Failed (deprecated)|<p>This trigger inform admin that a new failure during fragmentation of an ipv4 packet occurred. This trigger need "IP Frag Failed (deprecated)" enabled item.</p>|average|
|New IP IN Addr Errors (deprecated)|<p>This trigger inform admin than a new ipv4 error occurred because of a bad ip address format. This trigger need "IP IN Addr Errors (deprecated)" enabled item.</p>|average|
|New IP IN Addr Errors ipv4|<p>This trigger inform admin than a new ipv4 error occurred because of a bad ip address format.</p>|average|
|New IP IN Addr Errors ipv6|<p>This trigger inform admin than a new ipv6 error occurred because of a bad ip address format.</p>|average|
|New IP IN Discard (deprecated)|<p>Inform admin that some new IpV4 packet have been discard. This trigger need "IP IN Discard (deprecated)" enabled item.</p>|warning|
|New IP IN Discard ipv4|<p>Inform admin that some new IpV4 packet have been discard.</p>|warning|
|New IP IN Discard ipv6|<p>Inform admin that some new IpV6 packet have been discard.</p>|warning|
|New IP IN headers Errors (deprecated)|<p>This trigger inform admin than a new ipv4 header error occurred. This trigger need "IP IN headers Errors (deprecated)" enabled item.</p>|average|
|New IP IN headers Errors ipv4|<p>This trigger inform admin than a new ipv4 header error occurred.</p>|average|
|New IP IN headers Errors ipv6|<p>This trigger inform admin than a new ipv6 header error occurred.</p>|average|
|New IP OUT Discard (deprecated)|<p>Inform admin that some new IpV4 packet have been discard. This trigger need "IP OUT Discard (deprecated)" enabled item.</p>|warning|
|New IP OUT Discard ipv4|<p>Inform admin that some new IpV4 packet have been discard.</p>|warning|
|New IP OUT Discard ipv6|<p>Inform admin that some new IpV6 packet have been discard.</p>|warning|
|New IP Reasm Failed (deprecated)|<p>This trigger inform admin that a new failure during reassembly an ipv4 packet occurred. This trigger need "IP Reasm Failed (deprecated)" enabled item.</p>|average|
|New IP v4 Frag Failed|<p>This trigger inform admin that a new failure during fragmentation of an ipv4 packet occurred.</p>|average|
|New IP v4 Reasm Failed|<p>This trigger inform admin that a new failure during reassembly an ipv4 packet occurred.</p>|average|
|New IP v6 Frag Failed|<p>This trigger inform admin that a new failure during fragmentation of an ipv6 packet occurred.</p>|average|
|New IP v6 Reasm Failed|<p>This trigger inform admin that a new failure during reassembly an ipv6 packet occurred.</p>|average|
|New TCP Attempt Failed|<p>This trigger inform admin that a new TCP connection have made a direct transition to the CLOSED state from either the SYN-SENT state or the SYN-RCVD state.</p>|average|
|New TCP Established Resets|<p>Inform admin that some new TCP connection have made a direct transition to the CLOSED state from either the ESTABLISHED state or the CLOSE-WAIT state.</p>|warning|
|New TCP IN Errors|<p>This trigger inform admin that a new TCP error occurred.</p>|average|
|New UDP IN Errors|<p>This trigger inform admin that a new UDP error occurred.</p>|average|
|New UDP No Ports|<p>This trigger inform admin that a new 'UDP No Ports' error occurred.</p>|average|
|System description changed|<p>Inform admin to change state.</p>|information|
|System name changed|<p>Inform admin to change state.</p>|information|
|TCP Max Connection changed|<p>Inform admin to change state.</p>|information|
|TCP RTO algorithm changed|<p>Inform admin to change state.</p>|information|
|TCP RTO max changed|<p>Inform admin to change state.</p>|information|
|TCP RTO min changed|<p>Inform admin to change state.</p>|information|
|{#SNMPVALUE} Fan status has changed|<p>Inform admin that status have been changed.</p>|high|
|Usage CPU hight|<p>Inform admin than entity have CPU problem.</p>|warning|
|Interface {#IFDESCR}: Interface status changed|<p>Inform admin that the interface status have been changed.</p>|high|
|Interface {#IFDESCR}: New IN discards|<p>Inform admin than a new packet have been discard by the interface.</p>|warning|
|Interface {#IFDESCR}: New IN Errors|<p>Inform admin than a new error have been occurred on the interface.</p>|average|
|Interface {#IFDESCR}: New OUT discards|<p>Inform admin than a new packet have been discard by the interface.</p>|warning|
|Interface {#IFDESCR}: New OUT Errors|<p>Inform admin than a new error have been occurred on the interface.</p>|average|
