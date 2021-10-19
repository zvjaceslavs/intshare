# Template Ciena 6500 2

## Overview

This template will discover and monitor various optical interfaces - mainly light levels and baselines and alert if light levels fall outside of VARIANCE macro. Also will report when OSC has no light and serve a clear indication that there is a fiber issue.


No MIBs required. Used OIDs.


No Dependencies - just enable SNMP with v2 community on the shelf and set SNMP\_COMMUNITY macro in template.



## Author

Dustin Howard

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$OPTICAL_VARIANCE}|<p>the allowed variance from baselines in db</p>|`2`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`secret`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Optical Transport Interface Discovery|<p>-</p>|`SNMP agent`|optical.transport.if.discovery<p>Update: 1d;wd1h11</p>|
|Ethernet Interface Discovery|<p>-</p>|`SNMP agent`|ethernet.transport.if.discovery<p>Update: 1d;wd1h14</p>|
|Shelf Inventory Discovery|<p>-</p>|`SNMP agent`|enventory.discovery<p>Update: 1d;wd1h8</p>|
|Optical AMP Tx Discovery|<p>-</p>|`SNMP agent`|optical.tx.discovery<p>Update: 1d;wd1h12</p>|
|Optical AMP Rx Discovery|<p>-</p>|`SNMP agent`|optical.rx.discovery<p>Update: 1d;wd1h13</p>|
|Optical OSC Discovery|<p>-</p>|`SNMP agent`|optical.osc.discovery<p>Update: 1d;wd1h9</p>|
|Optical OSC Spanloss Discovery|<p>-</p>|`SNMP agent`|optical.osc.spanloss.discovery<p>Update: 1d;wd1h10</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of Critical Alarms|<p>This is the number of critical alarms that currently exist at this node which may have one or more shelves.</p>|`SNMP agent`|ciena.critical.alarms<p>Update: 5m</p>|
|Number of Major Alarms|<p>This is the number of major alarms that currently exist at this node which may have one or more shelves.</p>|`SNMP agent`|ciena.major.alarms<p>Update: 5m</p>|
|Number of Minor Alarms|<p>This is the number of minor alarms that currently exist at this node which may have one or more shelves.</p>|`SNMP agent`|ciena.minor.alarms<p>Update: 5m</p>|
|Number of Warnings|<p>This is the number of warnings that currently exist at this node which may have one or more shelves.</p>|`SNMP agent`|ciena.warnings<p>Update: 5m</p>|
|Software Version|<p>-</p>|`SNMP agent`|software.version<p>Update: 6h</p>|
|Device Uptime|<p>The time (in seconds) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime<p>Update: 5m</p>|
|{#IFDESCR}: Admin Status (LLD)|<p>The administrative status of the port.</p>|`SNMP agent`|net.if.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Operational status (LLD)|<p>The operational status of the port.</p>|`SNMP agent`|net.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Optical Power Received (LLD)|<p>The optical power received at this port in dbm.</p>|`SNMP agent`|net.if.status[opr.och.nend.rcv.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Optical Power Transmitted (LLD)|<p>The optical power transmitted at this port in dbm.</p>|`SNMP agent`|net.if.status[opr.och.nend.trmt.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Post-FEC bit error rate (LLD)|<p>Post-FEC bit error rate estimate, optical channel transport unit</p>|`SNMP agent`|net.if.status[post.fec.ber.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Pre-FEC bit error rate (LLD)|<p>Pre-FEC bit error rate, optical channel transport unit</p>|`SNMP agent`|net.if.status[pre.fec.ber.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Uncorrected FEC block (LLD)|<p>Uncorrected FEC blocks, Optical Transport Unit.</p>|`SNMP agent`|net.if.status[uncorrected.fec.block.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Bits Received (LLD)|<p>The total number of bits per second received on the interface.</p>|`SNMP agent`|ciena6500.ethernet.if.bits.in[{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Bits Sent (LLD)|<p>The total number of bits per second sent on the interface.</p>|`SNMP agent`|ciena6500.ethernet.if.bits.out[{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Ethernet Errors (LLD)|<p>The average number of inbound packets per second that contained errors preventing them from being deliverable to a higher-layer protocol.</p>|`SNMP agent`|ciena6500.ethernet.if.errors.in[{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Admin status (LLD)|<p>The administrative state of the interface.</p>|`SNMP agent`|ethernet.if.status[ifAdminStatus.{#SNMPINDEX}]<p>Update: 5m</p>|
|{#IFDESCR}: Operational status (LLD)|<p>The operational state of the interface.</p>|`SNMP agent`|ethernet.if.status[ifOperStatus.{#SNMPINDEX}]<p>Update: 5m</p>|
|Serial Number: "{#DESCRIPTION}" in {#CONTAINER} MODEL-{#MODEL} (LLD)|<p>The serial number for this module.</p>|`SNMP agent`|serial.number.[{#SNMPINDEX}]<p>Update: 1d</p>|
|{#PORTNAME} "Optical Transmit Power" baseline (LLD)|<p>The baseline set on the shelf. This can be re-initialized when needed via site manager.</p>|`SNMP agent`|optical.tx.baseline[{#PORTNAME}.OPOUT]<p>Update: 5m</p>|
|{#PORTNAME} "Optical Return Loss" baseline (LLD)|<p>The baseline set on the shelf. This can be re-initialized when needed via site manager.</p>|`SNMP agent`|optical.tx.baseline[{#PORTNAME}.ORL]<p>Update: 5m</p>|
|{#PORTNAME} "Optical Transmit Power" (LLD)|<p>The optical transit power for this port in dbm.</p>|`SNMP agent`|optical.tx[{#PORTNAME}.OPOUT]<p>Update: 5m</p>|
|{#PORTNAME} "Optical Return Loss" (LLD)|<p>Optical Return Loss (ORL) is similar to SNR. The higher the ORL, the better.</p>|`SNMP agent`|optical.tx[{#PORTNAME}.ORL]<p>Update: 5m</p>|
|{#PORTNAME} "Optical Receive Power" baseline (LLD)|<p>The baseline set on the shelf. This can be re-initialized when needed via site manager.</p>|`SNMP agent`|optical.baseline[{#PORTNAME}.OPIN]<p>Update: 5m</p>|
|{#PORTNAME} "Optical Receive Power" (LLD)|<p>-</p>|`SNMP agent`|optical.rx[{#PORTNAME}.OPIN]<p>Update: 5m</p>|
|{#PORTNAME} "{#CHECKNAME}" (LLD)|<p>The OSC received light level in dbm.</p>|`SNMP agent`|optical.osc[{#PORTNAME}.{#CHECKNAME}]<p>Update: 1m</p>|
|{#PORTNAME} "{#CHECKNAME}" (LLD)|<p>The span loss ont he receive fiber in db.</p>|`SNMP agent`|optical.osc.spanloss[{#PORTNAME}.{#CHECKNAME}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#IFDESCR} DOWN|<p>The operational status of this Ethernet interface is DOWN.</p>|<p>**Expression**: {Template Ciena 6500 2:ethernet.if.status[ifOperStatus.{#SNMPINDEX}].last(#1)}<>1 and {Template Ciena 6500 2:ethernet.if.status[ifAdminStatus.{#SNMPINDEX}].last(#1,1)}=1</p><p>**Recovery expression**: </p>|warning|
|{#PORTNAME} has No Light|<p>The last two values for "{#CHECKNAME}" is 0. The check reports 0db when the OSC circuit cannot determine the spanloss. This would indicate a loss of light.</p>|<p>**Expression**: {Template Ciena 6500 2:optical.osc.spanloss[{#PORTNAME}.{#CHECKNAME}].sum(#2)}=0 or {Template Ciena 6500 2:optical.osc.spanloss[{#PORTNAME}.{#CHECKNAME}].last(#1)}<-44</p><p>**Recovery expression**: </p>|high|
|{#PORTNAME} Optical Rx Power crossed baseline thresholds|<p>The optical power level it more than {$OPTICAL_VARIANCE}db from the baseline value. This could be due to a new fiber event or the baselines may need to be reset. First verify the optical path then decide weather to reset the baselines. The baseline value can be reset in the PMs on the Ciena shelf.</p>|<p>**Expression**: (({Template Ciena 6500 2:optical.rx[{#PORTNAME}.OPIN].last(#1)}<{Template Ciena 6500 2:optical.baseline[{#PORTNAME}.OPIN].last(#1)}-2) or ({Template Ciena 6500 2:optical.rx[{#PORTNAME}.OPIN].last(#1)}>{Template Ciena 6500 2:optical.baseline[{#PORTNAME}.OPIN].last(#1)}+2))</p><p>**Recovery expression**: </p>|information|
|{#IFDESCR} DOWN|<p>The interface status is not UP for this DWDM transport interface. This indicates the DWDM wave is down and could be a result of a fiber cut.</p>|<p>**Expression**: {Template Ciena 6500 2:net.if.status[ifOperStatus.{#SNMPINDEX}].last(#1)}<>1 and {Template Ciena 6500 2:net.if.status[ifAdminStatus.{#SNMPINDEX}].last(#1,1)}=1</p><p>**Recovery expression**: </p>|average|
|{#PORTNAME} Optical Return Loss crossed baseline thresholds|<p>The optical return loss it more than {$OPTICAL_VARIANCE}db from the baseline value. This could be due to a new fiber event or the baselines may need to be reset. First verify the optical path then decide weather to reset the baselines. The baseline value can be reset in the PMs on the Ciena shelf.</p>|<p>**Expression**: ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.ORL].last(#1)}<{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.ORL].last(#1)}-2) or ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.ORL].last(#1)}>{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.ORL].last(#1)}+2)</p><p>**Recovery expression**: </p>|information|
|{#PORTNAME} Optical Tx Power crossed baseline thresholds|<p>The optical power level is more than {$OPTICAL_VARIANCE}db from the baseline value. This could be due to a new fiber event or the baselines may need to be reset. First verify the optical path then decide weather to reset the baselines. The baseline value can be reset in the PMs on the Ciena shelf.</p>|<p>**Expression**: ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.OPOUT].last(#1)}<{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.OPOUT].last(#1)}-2) or ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.OPOUT].last(#1)}>{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.OPOUT].last(#1)}+2)</p><p>**Recovery expression**: </p>|information|
|{#PORTNAME} LOW "Optical Return Loss"|<p>Optical Return Loss (ORL) is similar to SNR. The higher the ORL, the better. The minimum ORL is 30db. Anything lower than 30db indicates a fiber issue, such as a dirty connector or improper fiber mating.</p>|<p>**Expression**: {Template Ciena 6500 2:optical.tx[{#PORTNAME}.ORL].last(#1)}<30</p><p>**Recovery expression**: </p>|warning|
|{#IFDESCR} DOWN (LLD)|<p>The interface status is not UP for this DWDM transport interface. This indicates the DWDM wave is down and could be a result of a fiber cut.</p>|<p>**Expression**: {Template Ciena 6500 2:net.if.status[ifOperStatus.{#SNMPINDEX}].last(#1)}<>1 and {Template Ciena 6500 2:net.if.status[ifAdminStatus.{#SNMPINDEX}].last(#1,1)}=1</p><p>**Recovery expression**: </p>|average|
|{#IFDESCR} DOWN (LLD)|<p>The operational status of this Ethernet interface is DOWN.</p>|<p>**Expression**: {Template Ciena 6500 2:ethernet.if.status[ifOperStatus.{#SNMPINDEX}].last(#1)}<>1 and {Template Ciena 6500 2:ethernet.if.status[ifAdminStatus.{#SNMPINDEX}].last(#1,1)}=1</p><p>**Recovery expression**: </p>|warning|
|{#PORTNAME} Optical Return Loss crossed baseline thresholds (LLD)|<p>The optical return loss it more than {$OPTICAL_VARIANCE}db from the baseline value. This could be due to a new fiber event or the baselines may need to be reset. First verify the optical path then decide weather to reset the baselines. The baseline value can be reset in the PMs on the Ciena shelf.</p>|<p>**Expression**: ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.ORL].last(#1)}<{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.ORL].last(#1)}-2) or ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.ORL].last(#1)}>{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.ORL].last(#1)}+2)</p><p>**Recovery expression**: </p>|information|
|{#PORTNAME} Optical Tx Power crossed baseline thresholds (LLD)|<p>The optical power level is more than {$OPTICAL_VARIANCE}db from the baseline value. This could be due to a new fiber event or the baselines may need to be reset. First verify the optical path then decide weather to reset the baselines. The baseline value can be reset in the PMs on the Ciena shelf.</p>|<p>**Expression**: ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.OPOUT].last(#1)}<{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.OPOUT].last(#1)}-2) or ({Template Ciena 6500 2:optical.tx[{#PORTNAME}.OPOUT].last(#1)}>{Template Ciena 6500 2:optical.tx.baseline[{#PORTNAME}.OPOUT].last(#1)}+2)</p><p>**Recovery expression**: </p>|information|
|{#PORTNAME} LOW "Optical Return Loss" (LLD)|<p>Optical Return Loss (ORL) is similar to SNR. The higher the ORL, the better. The minimum ORL is 30db. Anything lower than 30db indicates a fiber issue, such as a dirty connector or improper fiber mating.</p>|<p>**Expression**: {Template Ciena 6500 2:optical.tx[{#PORTNAME}.ORL].last(#1)}<30</p><p>**Recovery expression**: </p>|warning|
|{#PORTNAME} Optical Rx Power crossed baseline thresholds (LLD)|<p>The optical power level it more than {$OPTICAL_VARIANCE}db from the baseline value. This could be due to a new fiber event or the baselines may need to be reset. First verify the optical path then decide weather to reset the baselines. The baseline value can be reset in the PMs on the Ciena shelf.</p>|<p>**Expression**: (({Template Ciena 6500 2:optical.rx[{#PORTNAME}.OPIN].last(#1)}<{Template Ciena 6500 2:optical.baseline[{#PORTNAME}.OPIN].last(#1)}-2) or ({Template Ciena 6500 2:optical.rx[{#PORTNAME}.OPIN].last(#1)}>{Template Ciena 6500 2:optical.baseline[{#PORTNAME}.OPIN].last(#1)}+2))</p><p>**Recovery expression**: </p>|information|
|{#PORTNAME} has No Light (LLD)|<p>The last two values for "{#CHECKNAME}" is 0. The check reports 0db when the OSC circuit cannot determine the spanloss. This would indicate a loss of light.</p>|<p>**Expression**: {Template Ciena 6500 2:optical.osc.spanloss[{#PORTNAME}.{#CHECKNAME}].sum(#2)}=0 or {Template Ciena 6500 2:optical.osc.spanloss[{#PORTNAME}.{#CHECKNAME}].last(#1)}<-44</p><p>**Recovery expression**: </p>|high|
