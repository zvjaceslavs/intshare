Template and VBS based monitoring scripts for HP EVA.
Based on zabbix_sender/zabbix trapper and must be compatible with any version of zabbix (tested only with 3.4)
Tested on EVA8400 and EVA6500.
All information for customization monitored values can be found in HP Storage System Scripting Utility Reference and HP P6000 Command View User Guide.

Requirements:
Script must run on host with installed SSSU.exe and evaperf.exe utilites
Storage name must be equal to zabbix host name
Vdisk name must not contain illegal charater for zabbix item key
evaperf.exe must be configured for frendly name. To configure frendly name run:
 - evaperf as
	node name show as wwn
 - evaperf fnh localhost admin
	enter your password
 - evaperf fn
 - evaperf as
	node name must be show as storage name


Installation:
1. Import XML template
2. Create Hosts for EVA Storages (host name must be equal to storage name in Command View)
3. Edit vbs scripts section Config (username, password, paths, names);
4. Copy vbs scripts to any location for example 
	C:\Program Files\ZabbixAgent\eva_discovery.vbs
	C:\Program Files\ZabbixAgent\eva_performance.vbs
	C:\Program Files\ZabbixAgent\eva_status.vbs
5. Add schedule
#once a day discovery
cscript C:\Program Files\ZabbixAgent\eva_discovery.vbs
#every 1 minutes get performance
cscript C:\Program Files\ZabbixAgent\eva_performance.vbs
#every 5 minutes get stats
cscript C:\Program Files\ZabbixAgent\eva_status.vbs
6. To force update execute 
cscript C:\Program Files\ZabbixAgent\eva_discovery.vbs
cscript C:\Program Files\ZabbixAgent\eva_performance.vbs
cscript C:\Program Files\ZabbixAgent\eva_status.vbs
