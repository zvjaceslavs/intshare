
Zabbix template for monitoring Synology servers
===============================================

Version: 2013-11-06
Author: Maxim Krusina / Massimo Filippi, s.r.o. / maxim@mfcc.cz



Instructions:
-------------

1. This template uses value mappings, which cannot be exported by current version of Zabbix, so first add value mappings manually in Zabbix admin (Administration / General / Value mapping). Add these three lists:


Name:
Synology Disk Status

Values:
1 ⇒ Normal
2 ⇒ Initialized
3 ⇒ Not Initialized
4 ⇒ System Partition Failed
5 ⇒ Crashed


Name:
Synology Raid Status

Values:
1 ⇒ Normal
2 ⇒ Repairing
3 ⇒ Migrating
4 ⇒ Expanding
5 ⇒ Deleting
6 ⇒ Creating
7 ⇒ Raid Syncing
8 ⇒ Raid Parity Checking
9 ⇒ Raid Assembling
10 ⇒ Canceling
11 ⇒ Degrade
12 ⇒ Crashed


Name:
Synology System Status

Values:
1 ⇒ Normal
2 ⇒ Failed


2. Import synology.xml


3. On Synology server(s), enable SNMP monitoring:
Control panel / SNMP
[x] Enable SNMP service
[x] SNMPv1, SNMPv2c service


4. Add Synology host(s) to Zabbix, apply template



Notes:
------
* Exported from: Zabbix 2.0.8
* Tested on: Zabbix 2.0.8, Synology DSM 4.2.x, 4.3.x
* More info on Synology SNMP/MIB here: http://www.synology.com/support/snmp_mib.php
* Uses default SNMPv2c
* Uses hardcoded 8 HDDs (can be used with Synology models with less disks)



ToDo:
-----
* Use discovery rules / prototypes instead of hardcoded items for all 8 disks
* Move this project to GitHub
* Change Text datatypes to Character, where possible
* Add screen definition to template
* Add triggers for high temperatures
