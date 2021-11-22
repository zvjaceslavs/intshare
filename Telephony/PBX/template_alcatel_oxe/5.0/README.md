# PABX

## Description

Model for PBX OXE R9.1 or greater, discovery: "trunk" only works on OXE R12.2 Modelo para PBX OXE R9.1 ou superior, descoberta: tronco só funciona em OXE R12.2

## Overview


```
Zabbix template for Alcatel OXE 
Compatibility: Releases R9.1 or greater, prototype items (discovery:"trunk") only works in R12.2 or greater.

How to configure SNMP in OXE

1. SNMP AGENT
mgr > SNMP > SNMP Global Configuration > Consult
 - V2C
 - Agent: Enable
 - Add Contact, Location e Community
 - Apply
 -Test:
 $ snmpwalk -v 2c -c [\_Community\_] localhost SNMPv2-MIB::sysName.0
 Return : 'SNMPv2-MIB::sysName.0 = STRING: [HOST\_NAME]
2. SNMP TRAP
mgr > SNMP > SNMP Supervisor > Create,
 - V2C
 - Agent: Enable
 - Add Name, IP of ZABBIX Server or Proxy, Community, TRAP(yes), Trap TYPE (Extended).
3. Incident maneger
Applications > Incident manager
 - Alter CONFIG SNMP
Applications > Incident manager > Descend(Go down) > Incident Filter
 - Create or ative/desative SNMP of incident!
 - SNMP Incident: Yes

```


## Author

Pedro Rodrigues

## Macros used

There are no macros links in this template.

## Template links

|Name|
|----|
|Template Module EtherLike-MIB SNMP|
|Template Module ICMP Ping|
|Template Module Interfaces Simple SNMP|
|Template Module Generic SNMP|
|Template Net Network Generic Device SNMP|
## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|EtherLike-MIB Discovery|<p>Discovering interfaces from IF-MIB and EtherLike-MIB. Interfaces with up(1) Operational Status are discovered.</p>|`SNMP agent`|net.if.duplex.discovery<p>Update: 1h</p>|
|IpDomain Discovery|<p>IP domain number</p>|`SNMP agent`|ipdomain.discovery<p>Update: 30m</p>|
|Trunk Discovey|<p>Info the trunks and channels Informações sobre os troncos e canais</p>|`SNMP agent`|trunk.discovery<p>Update: 30s</p>|
|Network interfaces discovery|<p>Discovering interfaces from IF-MIB.</p>|`SNMP agent`|net.if.discovery<p>Update: 1h</p>|
|DSP Discovery|<p>Indicates the number of DSP resources (i.e. compressors) Indica o número de recursos DSP (ou seja, compressores)</p>|`SNMP agent`|dsp.discovery<p>Update: 1m</p>|
|CAC Discovery|<p>Indicates the number of external communications Indica o número de comunicações externas</p>|`SNMP agent`|cac.discovery<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SIP sets register|<p>Indicates the number of SIP terminals registered in the PCX, as well as SIP terminals not defined in PCX configuration (provided that authentication is not required for SIP terminal registration) Indica o número de terminais SIP registrados no PCX, bem como terminais SIP não definidos na configuração do PCX (desde que a autenticação não seja necessária para o registro do terminal SIP)</p>|`SNMP agent`|sipRegSets<p>Update: 1m</p>|
|Sets in service|<p>Indicates the number of sets in service.This counter includes all types of set but not SIP sets Indica o número de SETS em serviço. Este contador inclui todos os tipos de SETS, mas não os conjuntos SIP</p>|`SNMP agent`|setsInService<p>Update: 1m</p>|
|SIP sets unregister|<p>Indicates the number of SIP terminals not registered in the PCX. This counter is equal to the number of SIP terminals configured in the PCX minus the number of SIP terminals registered in the PCX. If authentication is not required for SIP terminal registration, this counter may be negative (when there are more self registered SIP terminals than SIP terminals configured in the PCX). Indica o número de terminais SIP não registrados no PCX. Este contador é igual ao número de terminais SIP configurados no PCX menos o número de terminais SIP registrados no PCX. Se a autenticação não for necessária para o registro do terminal SIP, este contador pode ser negativo (quando houver mais terminais SIP autorregistrados do que terminais SIP configurados no PCX).</p>|`SNMP agent`|sipUnregSets<p>Update: 1m</p>|
|pbxState|<p>Available values are: INDETERMINATE, CRITICAL, MAJOR, MINOR, WARNING or NORMAL Os valores disponíveis são: INDETERMINADO, CRÍTICO, MAIOR, MENOR, AVISO ou NORMAL</p>|`SNMP agent`|pbxState<p>Update: 1m</p>|
|pbxRole|<p>"Indicates the PCX role. Available values are: INDETERMINATE, MAIN, STAND-BY, ACTIVE_PCS or INACTIVE_PCS where: - MAIN and STAND-BY values are used to indicate the Com Server role - ACTIVE_PCS and INACTIVE_PCS values are used to indicate the Passive Communication Server (PCS) status - The INDETERMINATE value is not sent in response to an SNMP request when the corresponding SNMP agent is not started Indica a função PCX. Os valores disponíveis são: INDETERMINATE, MAIN, STAND-BY, ACTIVE_PCS ou INACTIVE_PCS onde: - Os valores MAIN e STAND-BY são usados para indicar a função do Com Server - Os valores ACTIVE_PCS e INACTIVE_PCS são usados para indicar o status do Passive Communication Server (PCS) - O valor INDETERMINATE não é enviado em resposta a uma solicitação SNMP quando o agente SNMP correspondente não é iniciado"</p>|`SNMP agent`|pbxRole<p>Update: 1m</p>|
|Sets out service|<p>Indicates the number of sets out of service. This counter includes all types of set but not SIP sets. Indica o número de SETS fora de serviço. Este contador inclui todos os tipos de conjunto, mas não os SETS SIP.</p>|`SNMP agent`|setsOutOfServices<p>Update: 1m</p>|
|Interface {#IFNAME}({#IFALIAS}): Duplex status|<p>MIB: EtherLike-MIB The current mode of operation of the MAC entity. 'unknown' indicates that the current duplex mode could not be determined. Management control of the duplex mode is accomplished through the MAU MIB. When an interface does not support autonegotiation, or when autonegotiation is not enabled, the duplex mode is controlled using ifMauDefaultType. When autonegotiation is supported and enabled, duplex mode is controlled using ifMauAutoNegAdvertisedBits. In either case, the currently operating duplex mode is reflected both in this object and in ifMauType. Note that this object provides redundant information with ifMauType. Normally, redundant objects are discouraged. However, in this instance, it allows a management application to determine the duplex status of an interface without having to know every possible value of ifMauType. This was felt to be sufficiently valuable to justify the redundancy. Reference: [IEEE 802.3 Std.], 30.3.1.1.32,aDuplexStatus.</p>|`SNMP agent`|net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Interface {#IFDESCR}: Inbound packets discarded|<p>MIB: IF-MIB The number of inbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.discards[ifInDiscards.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFDESCR}: Inbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of inbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of inbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in.errors[ifInErrors.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFDESCR}: Bits received|<p>MIB: IF-MIB The total number of octets received on the interface,including framing characters. Discontinuities in the value of this counter can occurat re-initialization of the management system, and atother times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.in[ifInOctets.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFDESCR}: Outbound packets discarded|<p>MIB: IF-MIB The number of outbound packets which were chosen to be discarded even though no errors had been detected to prevent their being deliverable to a higher-layer protocol. One possible reason for discarding such a packet could be to free up buffer space. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.discards[ifOutDiscards.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFDESCR}: Outbound packets with errors|<p>MIB: IF-MIB For packet-oriented interfaces, the number of outbound packets that contained errors preventing them from being deliverable to a higher-layer protocol. For character-oriented or fixed-length interfaces, the number of outbound transmission units that contained errors preventing them from being deliverable to a higher-layer protocol. Discontinuities in the value of this counter can occur at re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out.errors[ifOutErrors.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFDESCR}: Bits sent|<p>MIB: IF-MIB The total number of octets transmitted out of the interface, including framing characters. Discontinuities in the value of this counter can occurat re-initialization of the management system, and at other times as indicated by the value of ifCounterDiscontinuityTime.</p>|`SNMP agent`|net.if.out[ifOutOctets.{#SNMPINDEX}]<p>Update: 3m</p><p>LLD</p>|
|Interface {#IFDESCR}: Speed|<p>MIB: IF-MIB An estimate of the interface's current bandwidth in bits per second. For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth. If the bandwidth of the interface is greater than the maximum value reportable by this object then this object should report its maximum value (4,294,967,295) and ifHighSpeed must be used to report the interace's speed. For a sub-layer which has no concept of bandwidth, this object should be zero.</p>|`SNMP agent`|net.if.speed[ifSpeed.{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
|Interface {#IFDESCR}: Operational status|<p>MIB: IF-MIB The current operational state of the interface. - The testing(3) state indicates that no operational packet scan be passed - If ifAdminStatus is down(2) then ifOperStatus should be down(2) - If ifAdminStatus is changed to up(1) then ifOperStatus should change to up(1) if the interface is ready to transmit and receive network traffic - It should change todormant(5) if the interface is waiting for external actions (such as a serial line waiting for an incoming connection) - It should remain in the down(2) state if and only if there is a fault that prevents it from going to the up(1) state - It should remain in the notPresent(6) state if the interface has missing(typically, hardware) components.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 1m</p><p>LLD</p>|
|Interface {#IFDESCR}: Interface type|<p>MIB: IF-MIB The type of interface. Additional values for ifType are assigned by the Internet Assigned NumbersAuthority (IANA), through updating the syntax of the IANAifType textual convention.</p>|`SNMP agent`|net.if.type[ifType.{#SNMPINDEX}]<p>Update: 1h</p><p>LLD</p>|
|Available DSP - IpDomain.[{#IPDOMAIN}]|<p>Indicates the number of available DSP resources (i.e. compressors) Indica o número de recursos DSP disponíveis (ou seja, compressores) Command: cnx dom OID-BASE: 1.3.6.1.4.1.637.64.4400.1.3.1.5.X X=IPDOMAIN</p>|`SNMP agent`|dsp.available.[{#IPDOMAIN}]<p>Update: 1m</p><p>LLD</p>|
|Busy DSP - IpDomain.[{#IPDOMAIN}]|<p>Indicates the number of busy compressors Indica o número de compressores ocupados Command: cnx dom 1.3.6.1.4.1.637.64.4400.1.3.1.6.X X=IPDOMAIN</p>|`SNMP agent`|dsp.busy.[{#IPDOMAIN}]<p>Update: 1m</p><p>LLD</p>|
|Out Service DSP - IpDomain.[{#IPDOMAIN}]|<p>Indicates the number of out service compressors Indica o número de compressores fora de serviço Command: cnx dom 1.3.6.1.4.1.637.64.4400.1.3.1.6.X X=IPDOMAIN</p>|`SNMP agent`|dsp.out.[{#IPDOMAIN}]<p>Update: 1m</p><p>LLD</p>|
|Allowed Ext. Communications - IpDomain.[{#IPDOMAIN}]|<p>Indicates the number of allowed external communications Indica o número de comunicações externas permitidas</p>|`SNMP agent`|cac.allowed.[{#IPDOMAIN}]<p>Update: 1m</p><p>LLD</p>|
|Used Ext. Communications - IpDomain.[{#IPDOMAIN}]|<p>Indicates the current number of external communications This counter is only used if the number of allowed external communications is limited, if not its value is 0 Indica o número atual de comunicações externas. Este contador só é usado se o número de comunicações externas permitidas for limitado, caso contrário seu valor é 0 Command: cnx dom 1.3.6.1.4.1.637.64.4400.1.3.1.10.X X=IPDOMAIN</p>|`SNMP agent`|cac.used.[{#IPDOMAIN}]<p>Update: 1m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#IFNAME}({#IFALIAS}): In half-duplex mode|<p>Please check autonegotiation settings and cabling</p>|<p>**Expression**: {PABX-TEMPLATE:net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Interface {#IFDESCR}: Ethernet has changed to lower speed than it was before|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].change()}<0 and {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}>0 and ( {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=6 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=7 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=11 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=62 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=69 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=117 ) and ({PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2)</p><p>**Recovery expression**: ({PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].change()}>0 and {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].prev()}>0) or ({PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFDESCR}: Link down|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|<p>**Expression**: 1=1 and ({PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2 and {PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2 or 1=0</p>|average|
|Interface {#IFDESCR}: High bandwidth usage (> {$IF.UTIL.MAX:"{#IFNAME}"}% )|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|<p>**Expression**: ({PABX-TEMPLATE:net.if.in[ifInOctets.{#SNMPINDEX}].avg(15m)}>(95/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()} or {PABX-TEMPLATE:net.if.out[ifOutOctets.{#SNMPINDEX}].avg(15m)}>(95/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}) and {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {PABX-TEMPLATE:net.if.in[ifInOctets.{#SNMPINDEX}].avg(15m)}<((95-3)/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()} and {PABX-TEMPLATE:net.if.out[ifOutOctets.{#SNMPINDEX}].avg(15m)}<((95-3)/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFDESCR}: High error rate (> {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {PABX-TEMPLATE:net.if.in.errors[ifInErrors.{#SNMPINDEX}].min(5m)}>2 or {PABX-TEMPLATE:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].min(5m)}>2</p><p>**Recovery expression**: {PABX-TEMPLATE:net.if.in.errors[ifInErrors.{#SNMPINDEX}].max(5m)}<2*0.8 and {PABX-TEMPLATE:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].max(5m)}<2*0.8</p>|warning|
|{HOST.NAME} - Domain {#IPDOMAIN} - Used external communications is greater or equal than 80%|<p>Used external communications is greater than 80% in {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:cac.used.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()} >= 0.8</p><p>**Recovery expression**: {PABX-TEMPLATE:cac.used.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()} < 0.8</p>|warning|
|{HOST.NAME} - Domain {#IPDOMAIN} - Failure - No allowed external communications|<p>No allowed external communications in {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()}<=0</p><p>**Recovery expression**: {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()}>0</p>|high|
|{HOST.NAME}  - Domain {#IPDOMAIN} - Busy compressors is greater or equal than 80%|<p>Busy compressors is greater or equal than 80% in {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:dsp.busy.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()} >= 0.8</p><p>**Recovery expression**: {PABX-TEMPLATE:dsp.busy.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()} < 0.8</p>|warning|
|{HOST.NAME}  -  Out Service all compressors  {HOST.NAME}  - Domain {#IPDOMAIN}|<p>Out Service all compressors {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()}=0 and {PABX-TEMPLATE:dsp.out.[{#IPDOMAIN}].last()}>=0</p><p>**Recovery expression**: {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()}> 0 and {PABX-TEMPLATE:dsp.out.[{#IPDOMAIN}].last()}=0</p>|high|
|Interface {#IFNAME}({#IFALIAS}): In half-duplex mode (LLD)|<p>Please check autonegotiation settings and cabling</p>|<p>**Expression**: {PABX-TEMPLATE:net.if.duplex[dot3StatsDuplexStatus.{#SNMPINDEX}].last()}=2</p><p>**Recovery expression**: </p>|warning|
|Interface {#IFDESCR}: Ethernet has changed to lower speed than it was before (LLD)|<p>This Ethernet connection has transitioned down from its known maximum speed. This might be a sign of autonegotiation issues. Ack to close.</p>|<p>**Expression**: {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].change()}<0 and {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}>0 and ( {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=6 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=7 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=11 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=62 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=69 or {PABX-TEMPLATE:net.if.type[ifType.{#SNMPINDEX}].last()}=117 ) and ({PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2)</p><p>**Recovery expression**: ({PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].change()}>0 and {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].prev()}>0) or ({PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2)</p>|information|
|Interface {#IFDESCR}: Link down (LLD)|<p>This trigger expression works as follows: 1. Can be triggered if operations status is down. 2. {$IFCONTROL:"{#IFNAME}"}=1 - user can redefine Context macro to value - 0. That marks this interface as not important. No new trigger will be fired if this interface is down. 3. {TEMPLATE_NAME:METRIC.diff()}=1) - trigger fires only if operational status was up(1) sometime before. (So, do not fire 'ethernal off' interfaces.) WARNING: if closed manually - won't fire again on next poll, because of .diff.</p>|<p>**Expression**: 1=1 and ({PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}=2 and {PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].diff()}=1)</p><p>**Recovery expression**: {PABX-TEMPLATE:net.if.status[ifOperStatus.{#SNMPINDEX}].last()}<>2 or 1=0</p>|average|
|Interface {#IFDESCR}: High bandwidth usage (> {$IF.UTIL.MAX:"{#IFNAME}"}% ) (LLD)|<p>The network interface utilization is close to its estimated maximum bandwidth.</p>|<p>**Expression**: ({PABX-TEMPLATE:net.if.in[ifInOctets.{#SNMPINDEX}].avg(15m)}>(95/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()} or {PABX-TEMPLATE:net.if.out[ifOutOctets.{#SNMPINDEX}].avg(15m)}>(95/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}) and {PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}>0</p><p>**Recovery expression**: {PABX-TEMPLATE:net.if.in[ifInOctets.{#SNMPINDEX}].avg(15m)}<((95-3)/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()} and {PABX-TEMPLATE:net.if.out[ifOutOctets.{#SNMPINDEX}].avg(15m)}<((95-3)/100)*{PABX-TEMPLATE:net.if.speed[ifSpeed.{#SNMPINDEX}].last()}</p>|warning|
|Interface {#IFDESCR}: High error rate (> {$IF.ERRORS.WARN:"{#IFNAME}"} for 5m) (LLD)|<p>Recovers when below 80% of {$IF.ERRORS.WARN:"{#IFNAME}"} threshold</p>|<p>**Expression**: {PABX-TEMPLATE:net.if.in.errors[ifInErrors.{#SNMPINDEX}].min(5m)}>2 or {PABX-TEMPLATE:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].min(5m)}>2</p><p>**Recovery expression**: {PABX-TEMPLATE:net.if.in.errors[ifInErrors.{#SNMPINDEX}].max(5m)}<2*0.8 and {PABX-TEMPLATE:net.if.out.errors[ifOutErrors.{#SNMPINDEX}].max(5m)}<2*0.8</p>|warning|
|{HOST.NAME}  - Domain {#IPDOMAIN} - Busy compressors is greater or equal than 80% (LLD)|<p>Busy compressors is greater or equal than 80% in {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:dsp.busy.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()} >= 0.8</p><p>**Recovery expression**: {PABX-TEMPLATE:dsp.busy.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()} < 0.8</p>|warning|
|{HOST.NAME}  -  Out Service all compressors  {HOST.NAME}  - Domain {#IPDOMAIN} (LLD)|<p>Out Service all compressors {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()}=0 and {PABX-TEMPLATE:dsp.out.[{#IPDOMAIN}].last()}>=0</p><p>**Recovery expression**: {PABX-TEMPLATE:dsp.available.[{#IPDOMAIN}].last()}> 0 and {PABX-TEMPLATE:dsp.out.[{#IPDOMAIN}].last()}=0</p>|high|
|{HOST.NAME} - Domain {#IPDOMAIN} - Used external communications is greater or equal than 80% (LLD)|<p>Used external communications is greater than 80% in {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:cac.used.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()} >= 0.8</p><p>**Recovery expression**: {PABX-TEMPLATE:cac.used.[{#IPDOMAIN}].last()} / {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()} < 0.8</p>|warning|
|{HOST.NAME} - Domain {#IPDOMAIN} - Failure - No allowed external communications (LLD)|<p>No allowed external communications in {HOST.NAME} - Domain {#IPDOMAIN}</p>|<p>**Expression**: {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()}<=0</p><p>**Recovery expression**: {PABX-TEMPLATE:cac.allowed.[{#IPDOMAIN}].last()}>0</p>|high|
# PABX-TRAPS

## Description

Model for PBX OXE R9.1 or greater, discovery: "trunk" only works on OXE R12.2 Modelo para PBX OXE R9.1 ou superior, descoberta: tronco só funciona em OXE R12.2

## Overview


```
Zabbix template for Alcatel OXE 
Compatibility: Releases R9.1 or greater, prototype items (discovery:"trunk") only works in R12.2 or greater.

How to configure SNMP in OXE

1. SNMP AGENT
mgr > SNMP > SNMP Global Configuration > Consult
 - V2C
 - Agent: Enable
 - Add Contact, Location e Community
 - Apply
 -Test:
 $ snmpwalk -v 2c -c [\_Community\_] localhost SNMPv2-MIB::sysName.0
 Return : 'SNMPv2-MIB::sysName.0 = STRING: [HOST\_NAME]
2. SNMP TRAP
mgr > SNMP > SNMP Supervisor > Create,
 - V2C
 - Agent: Enable
 - Add Name, IP of ZABBIX Server or Proxy, Community, TRAP(yes), Trap TYPE (Extended).
3. Incident maneger
Applications > Incident manager
 - Alter CONFIG SNMP
Applications > Incident manager > Descend(Go down) > Incident Filter
 - Create or ative/desative SNMP of incident!
 - SNMP Incident: Yes

```


## Author

Pedro Rodrigues

## Overview


```
Zabbix template for Alcatel OXE 
Compatibility: Releases R9.1 or greater, prototype items (discovery:"trunk") only works in R12.2 or greater.

How to configure SNMP in OXE

1. SNMP AGENT
mgr > SNMP > SNMP Global Configuration > Consult
 - V2C
 - Agent: Enable
 - Add Contact, Location e Community
 - Apply
 -Test:
 $ snmpwalk -v 2c -c [\_Community\_] localhost SNMPv2-MIB::sysName.0
 Return : 'SNMPv2-MIB::sysName.0 = STRING: [HOST\_NAME]
2. SNMP TRAP
mgr > SNMP > SNMP Supervisor > Create,
 - V2C
 - Agent: Enable
 - Add Name, IP of ZABBIX Server or Proxy, Community, TRAP(yes), Trap TYPE (Extended).
3. Incident maneger
Applications > Incident manager
 - Alter CONFIG SNMP
Applications > Incident manager > Descend(Go down) > Incident Filter
 - Create or ative/desative SNMP of incident!
 - SNMP Incident: Yes

```


## Author

Pedro Rodrigues

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SNMP TRAP - Local CPU Shutdown|<p>{HOSTNAME} Local CPU Shutdown - Incident: 2348 Local CPU Shutdown System has detected an incoherent state A reset/switchover is necessary. No operator action required</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2348]<p>Update: 0</p>|
|SNMP TRAP - SIP external gateway P1 is out of service|<p>{HOSTNAME} SIP external gateway P1 is out of service - Incident: 5813 SIP external gateway P1 is out of service P1: SIP external gateway number SIP Gateway put out of service No system reaction No action</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5813]<p>Update: 0</p>|
|SNMP TRAP - Inter ACT link HS|<p>{HOSTNAME} Inter ACT link HS - Incident: 379 Inter-crystal signaling link problems on Link establishment or shutdown of existing link Several possible causes; No system reaction. Check IP resources boards within INTIPB. To see timer used tabtemptool.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*379]<p>Update: 0</p>|
|SNMP TRAP - Shutdown Command|<p>{HOSTNAME} Shutdown command has been called</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2073]<p>Update: 0</p>|
|SNMP TRAP - PCS Database update error|<p>{HOSTNAME} PCS Database update: error - Incident: 433 PCS P1: Database update: error P2 info P3. P1 : PCS IP address P2 : Reason of the update failure. - 1 Error mapping on remanents. - 2 PCS unreachable. - 3 PCS bad soft. release. - 4 The database bacup failed. - 5 The database copy on PCS failed. - 6 The database restoration on PCS failed. - 7 The PCS reboot failed. - 8 PCS in active mode. - 9 A process Bck is already running on the PCS. P3 : Further information, swinst errors (if P2 = 3, 5 or 6). - 0 No info. - 1 Invalid command syntax. - 2 The telephonic application is started. - 3 The telephonic application is stopped. - 4 An other backup is already running. - 5 Not enough space on root file system. - 6 No telephonic application has been installed. - 7 The emulation layer is stopped. - 8 Invalid archive format. - 9 Remote CPU unreachable. - 10 Warnings during the command. - 11 Failure. The PCS database update failed. No system reaction No action.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*433]<p>Update: 0</p>|
|SNMP TRAP - SQL error|<p>{HOSTNAME} SQL error - Incident: 2650 SQL error: appli P1 table P2 error P3 P1: Number of the application transmitting the incident P2: Table or object number P3: Error number Unknown operation to get to a data base The database has become incoherent as a result of a software error (for instance, attempt to get to a non-existent field).The database does not correspond to the software version. If it appears during the system initialization, the problem is serious since certain data won't get a new stock of memory or will get an incomplete stock. The problem is less critical if it occurs during a configuration because the system ignores the modification or the edition in progress. Reload the database if it is saved. Note the incident with all its information on an observation sheet (problem report), specifying the error context if possible.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2650]<p>Update: 0</p>|
|SNMP TRAP - SIP trunk group put into service|<p>{HOSTNAME} SIP external gateway P1 is out of service - Incident: 5800 P1 SIP trunk group put into service P1: SIP trunk group id put into service SIP Gateway put into service No system reaction No action</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5800]<p>Update: 0</p>|
|SNMP TRAP - Bascul command called|<p>{HOSTNAME} Bascul command called - Incident: 2349 Bascul command called Bascul command called The system goes down Check the switchover of the standby CPU</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2349]<p>Update: 0</p>|
|SNMP TRAP - SQL error|<p>{HOSTNAME} SQL error - Incident: 2255 SQL error: appli P1 table P2 error P3 (P4) P1: Application instance which has transmitted the incident P2: SQL table with which the instance was working when the incident occurred P3: Number of the SQL error (Refer to the CQL manual) P4: TTY Input/output used by the P1 application during the current execution (ttyxx, sccxx, spbxx, io2ttyxx, etc., ? if unknown) SQL error: SQL unknown operation Similar to SQL_ERROR. Similar to SQL_ERROR. Similar to SQL_ERROR.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2255]<p>Update: 0</p>|
|SNMP TRAP - FlexLM no checkout can be realized|<p>{HOSTNAME} FLEXLM_ERROR_SERVER : no checkout can be realized - Incident: 640 FLEXLM_ERROR_SERVER : no checkout can be realized P1 P2 P1: Number of sub-incident flex error server P2: Parameter sent by the application Value of P1 Meaning of P1 Field P2 1 FlexLM server not found FlexLM error number 2 Impossible to check in licenses FlexLM error number 3 Server busy FlexLM error number 4 Impossible to check out licenses FlexLM error number 5 Problem on the license file FlexLM error number 6 Invalid feature name FlexLM error number 7 Invalid license file FlexLM error number 8 General FlexLM error FlexLM error number An error occur during the licensing process on the FlexLM server. No system reaction Verify the FlexLM server configuration (Number of unused licenses, ...).</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*640]<p>Update: 0</p>|
|SNMP TRAP - Virtual board not initialized.|<p>{HOSTNAME} Virtual board not initialized- Incident: 2489 P1 virtual board (P2,P3) of the associated board P4 (P5,P6) not initialized. P1 = logical name of the unstarted virtual board P2 = Crystal number P3 = uninitialized virtual board number P4 = logical name of the associated board P5 = Crystal number P6 = board number of the associated board This anomaly message informs the operator than one board did not start two minutes past the starting of the associated board. No reaction for the system Reset associated board and check again; if the same incident occurs consult with expert of connected exchange.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2489]<p>Update: 0</p>|
|SNMP TRAP - PCS with domain - Establishment or Loss Link|<p>{HOSTNAME} PCS with domain - Establishment or Loss Link - Incident: 428 CS->PCS: @IP P1 error P2 PCS domain P3 P1 : IP Adress of the PCS P2 : Error Type - 1 Establishment of the link - 0 Lost link P3 : domain off the PCS Establishment or lost of the link with the PCS No system reaction Verify the state off the IP link between the PCS and the CS</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*428]<p>Update: 0</p>|
|SNMP TRAP - Bascul command called|<p>{HOSTNAME} Bascul command called - Incident: 2346 Bascul command called Bascul command called The system goes down Check the switchover of the standby CPU</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2346]<p>Update: 0</p>|
|SNMP TRAP - Critical failure in SIP component|<p>{HOSTNAME} Critical failure in SIP component - Incident: 5814 Critical failure in SIP component Look at the SIP Alarm log file: /tmpd/sipalarm.log or at the traces for more informations No system reaction No action</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5814]<p>Update: 0</p>|
|SNMP TRAP - PCS Establishment or Loss Link|<p>{HOSTNAME} PCS Establishment or Loss Link - Incident: 427 PCS->CS: @IP P1 error P2 P1 : IP Adress of the CS P2 : Error Type - 1 Establishment of the link - 0 Lost link Establishment or lost of the link with the CS No system reaction Verify the state off the IP link between the PCS and the CS</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*427]<p>Update: 0</p>|
|SNMP TRAP - Media Gateway power supply has come back|<p>{HOSTNAME} Media Gateway power supply has come back - Incident: 5858</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5858]<p>Update: 0</p>|
|SNMP TRAP - SIP external gateway P1 is in service|<p>{HOSTNAME} SIP external gateway P1 is in service - Incident: 5812 SIP external gateway P1 is in service P1: SIP external gateway number SIP Gateway put into service No system reaction No action</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5812]<p>Update: 0</p>|
|SNMP TRAP - MG/RGD: download status error|<p>{HOSTNAME} MG/RGD: download status P1 - Incident: 5859 MG/RGD: download status P1 P1 Error state P1: RGD code: - 0: No Ethernet - 1: binrgd download failure - 2: TFTP failure on binaries download - 3: Binary files corrupted - 4: Not enough memory - 5: Failure on copy in flash - 6: Bad network configuration - 255: Unknown status MG code: - 1: binmg download failure - 2: TFTP failure on binaries download No system reaction MG : MG has started using its old binaries, please check binaries versions MG : and if necessary, do a MG reset RGD : Note the incident on a problem report.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5859]<p>Update: 0</p>|
|SNMP TRAP - Media Gateway has received a power supply alarm|<p>{HOSTNAME} Media Gateway has received a power supply alarm - Incident: 5856 Media Gateway has received a power supply alarm CPU has received a power supply alarm, so there is probably a power supply problem. No reaction Check power supply.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5856]<p>Update: 0</p>|
|SNMP TRAP - Failure of the backup inter-ACT link establishment|<p>{HOSTNAME} Failure of the backup inter-ACT link establishment - Incident: 2479 Failure of the backup inter-ACT link establishment The CPU did not receive any message from the LIO telling that the ISDN backup link is active The backup call is released Check the configuration (in particular the backup number)</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2479]<p>Update: 0</p>|
|SNMP TRAP - Reset of standby CPU|<p>{HOSTNAME} Reset of standby CPU - Incident: 2347 Reset of standby CPU if CPU CS: reset main CPU reset the standby if CPU5,6,7: reset after loosing IP connection with main CPU The system goes down if CPU CS: Check the main CPU if CPU 5,6,7: Check IP network between CPU</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2347]<p>Update: 0</p>|
|SNMP TRAP - CPU was halted due to a shutdown|<p>{HOSTNAME} Bascul command called - Incident: 2077 CPU was halted due to a shutdown CPU was halted due to a shutdown. CPU is shutting down. No action.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2077]<p>Update: 0</p>|
|SNMP TRAP - Presence of two main Call Server on the network|<p>{HOSTNAME} Presence of two main Call Server on the network - Incident: 2345 Presence of two main Call Server on the network After a network break down both duplicate Call Server is Main The system goes down Check the IP network</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2345]<p>Update: 0</p>|
|SNMP TRAP - SIP trunk group put out of service|<p>{HOSTNAME} SIP trunk group put out of service - Incident: 5801 P1 SIP trunk group put out of service P1: SIP trunk group id put into service SIP Gateway out of service No system reaction No action</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5801]<p>Update: 0</p>|
|SNMP TRAP - Virtual board commissioning|<p>{HOSTNAME} Virtual board commissioning - Incident: 2491 P1(P2,P3) virtual board commissioning of the associated board P4(P5,P6) P1: Type of the commissioned virtual board P2: Crystal number P3: Virtual coupler number P4: Logical name of the associated coupler P5: Crystal number P6: Coupler number of the associated board Virtual coupler commissioning The virtual coupler is commissioned. This does not mean that the equipment which comes with it is commissioned too. No system reaction No operator action required</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2491]<p>Update: 0</p>|
|SNMP TRAP - GD/GA/INTIP/RGD: reason of reboot|<p>{HOSTNAME} GD/GA/INTIP/RGD: reason of reboot P1- Incident: 5857 P1 Error state P1: GD/GA code: - 0: Reset by "reboot" or "shutdown -r" command - 1: Reset on exception of the real time task - 2: Hardware reset on loss of DL IP - 3: Soft reset on loss of DL IP - 4: Soft reset on loss of DL backup - 5: Bad initialization with Call Server - 6: Time out in phase of initialization - 7: Reset by "rstcpl" command - 8: Update of binaries - 9: Update of parameters with mgconfig - 10: Update of parameters with UAconfig - 11: NMI Watchdog - 12: Update of bios - 13: Power off on GD/GA or Reset by "rstcpl" command on GA - 14: Not enough memory for the real time task - 15: Reset on exception in the Linux core - 16: Not enough buffer descriptor - 17: Reset on not obtaining IP parameters from the DHCP server - 18: Change of IP parameters by the DHCP server - 19: No renewal of IP parameters on expiration of the lease time - 20: Backup configured but not validated (DHCP mode is configured) - 21: Reset on startemg file not received and no backup mode - 22: Reset on lanpbx.cfg file not received when CS address : is dynamic and no backup mode - 23: Time out in phase of waiting of backup or IP establishment - 24: Software anomaly - 25: Reset with the re-establishment of the power supply : if DL IP is KO - 26: Reset with the re-establishment of the power supply : during the stop of the CPU applications - 27: Reset with the re-establishment of the power supply : when the CPU applications are stopped - 28: Reset on Ethernet link test failed at system startup - 29: Reset on back panel - communication lost between GD and GA - 30: Reset on connect not received - 255: Unknown reason: : - impossible to store reason in flash : - defective ramdisk : - impossible to treat NMI watchdog : - stop of the system on empty battery : - hot unplug INTIP code: - 0: Normal state - 1: Reset order from CPU - 2: Reset order from monitor - 3: Reset order from V24 - 4: Backtrace - 5: Signalization link lost - 6: DHCP loss - 7: Backplane clock loss - 8: Fatal error on C1 - 9: No more memory (C1 pool) - 10: No more memory (BD Pool) - 11: No more memory (Heap) - 12: C1 download timeout - 13: Too many CTX event - 14: Cold init asked by CPU - 15: Bad state in Mngt state machine - 16: Signalization link establishment failed - 17: No coupler detected in shelf - 18: IP Redundancy: loss of Ethernet - 19 : Fatal CPU error (checkstop) - 20 : Blocking Bus Monitor (Machine Check) - 255: other reason Note (INTIP): For reason 5 and 6, a diagnosis has been processed automatically by INTIP board. You just have to download NetDiag.txt file using TFTP from CPU (Main or Standby) which contains results. See document 3BA_29000_0628_PAZZA for more information Example: Tftp 192.168.42.15 bin get NetDiag.txt quit RGD code: - 0: Reset by "reboot" or "shutdown -r" command - 1: Reset on exception of the real time task - 2: Hardware reset on loss of DL HSL - 5: Bad initialization with Call Server - 6: Time out in phase of initialization - 7: Reset by "rstcpl" command - 8: Update of binaries - 11: NMI Watchdog - 12: Update of bios - 13: Power off on RGD - 14: Not enough memory for the real time task - 15: Reset on exception in the Linux core - 16: Not enough buffer descriptors - 24: Software anomaly - 255: Unknown reason: : - impossible to store reason in flash : - defective ramdisk : - impossible to treat NMI watchdog : - stop of the system on empty battery : - hot unplug No system reaction Note the incident on a problem report. For INTIP reason 20: Change GIP6 board and if the problem persist change INTIP board and return board to R&D for analyse.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*5857]<p>Update: 0</p>|
|SNMP TRAP -  FlexLM - Link breakdown with the FLEX agent|<p>{HOSTNAME} The flex agent is not running or does not respond - Incident: 644 FLEX_AG_CRASH: Link breakdown with the FLEX agent P1 P2 P1: Number of sub-incident FLEX ag crash P2: Parameter sent by the application Value of P1 Meaning of P1 Field P2 1 No link with the FLEX agent IPC status The flex agent is not running or does not respond. No system reaction. Note the incident, with all pertinent information on an observation sheet (or problem report), specifying the error context as much as possible.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*644]<p>Update: 0</p>|
|SNMP TRAP - Login Alert|<p>-</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*1125]<p>Update: 0</p>|
|SNMP TRAP - Loss of a virtual board|<p>{HOSTNAME} Loss of a virtual board - Incident: 2490 Loss of a virtual board P1 (P2,P3) of the associated board P4 (P5,P6) P1: Logical name of lost virtual board P2: Crystal number P3: Virtual coupler number P4: Logical name of the associated coupler P5: Crystal number P6: Coupler number of the associated board Loss of a virtual coupler Any transmission with the virtual coupler has become impossible. All the resources previously occupied by the terminals of the lost virtual coupler are released. Reinitialize the virtual coupler for executing rstcpl. If the problem persists, note the incident with all its information on an observation sheet (problem report), specifying the error context if possible.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*2490]<p>Update: 0</p>|
|SNMP TRAP - Powerfail, shutdown|<p>{HOSTNAME} Powerfail, shutdown - Incident: 1521 Powerfail, shutdown Power failure Power failure detection. The system tries an absolute shut down. Check the power supply.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*1521]<p>Update: 0</p>|
|SNMP TRAP -  FlexLM -Network breakdown with the licensing FlexLM server|<p>{HOSTNAME} Network breakdown with the licensing FlexLM server - Incident: 642 FLEXLM_SERVER_LINK: Network breakdown with the licensing FlexLM server P1 P2 P1: Number of sub-incident. P2 : Parameter sent by the application Value of P1 Meaning of P1 Field P2 1 FlexLM network problem FlexLM error code 2 PANIC MODE is running FlexLM error code Network link error with the licensing FlexLM server. Verify that the FlexLM server is always running and connected o the network. No system reaction. Note the incident, with all pertinent information on an observation sheet (or problem report), specifying the error context as much as possible.</p>|`SNMP trap`|snmptrap[637\.64\.0\.10\.1\.1\.8.*:*642]<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

