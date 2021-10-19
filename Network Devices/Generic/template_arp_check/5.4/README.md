# SNMPv2 ARP

## Overview

  
**This script and template to help process ipNetToMediaPhysAddress.**


  
It obtains "#***ARPINDEX***" (part of OID = interface ID + ip) to constrain **ipNetToMediaPhysAddress** OID:  
"1.3.6.1.2.1.4.22.1.2" + "." + interface ID + "." + ip =  
"1.3.6.1.2.1.4.22.1.2" + {#***ARPINDEX***}  
  
Also it gets:  
{#***ARPIFNAME***} - Name of the interface (Example: Vl900 - VLAN 900)  
{#***ARPIP***} - IP row from ARP Cache  
  
  
**How to install:**


  
1. Uncomment ExternalScripts in zabbix.conf or zabbix\_proxy.conf  
2. Copy file snmpv2-arp.py to $ExternalScripts  
3. Run this*:


`echo "#!/bin/bash`  
`python3 $ExternalScripts/snmpv2-arp.py $1 $2`  
`" > $ExternalScripts/snmpv2-arp-bash.sh`  
  
* there is an issue to run python3 file (slowdown server, I do not know why)  
  
4. Import template ARP Check.xml to your Zabbix Server


Link to additional script: https://github.com/nen-dev/zabbix-net-template/blob/main/SNMPv2-ARP-check/snmpv2-arp.py


 


 



## Author

Nen

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Get SNMP index|<p>This script obtain "#ARPINDEX" (part of OID = interface ID + ip) to constrain ipNetToMediaPhysAddress OID: "1.3.6.1.2.1.4.22.1.2" + "." + interface ID + "." + ip = "1.3.6.1.2.1.4.22.1.2" + {#ARPINDEX} Also it gets: {#ARPIFNAME} - Name of the interface (Example: Vl900 - VLAN 900) {#ARPIP} - IP row from ARP Cache</p>|`External check`|snmpv2-arp-bash.sh["{HOST.CONN}","1.3.6.1.2.1.4.22.1.2"]<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#ARPIFNAME} - {#ARPIP} (LLD)|<p>Find IP(+ Name of the Interface) to MAC</p>|`SNMP agent`|net.interface.arp.[net.{#ARPINDEX}]<p>Update: 30m</p>|
## Triggers

There are no triggers in this template.

