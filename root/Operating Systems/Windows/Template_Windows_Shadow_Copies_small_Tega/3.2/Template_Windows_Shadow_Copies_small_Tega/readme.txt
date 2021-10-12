Template Windows Shadow Copies small Tega
The template monitors shadow copies. 


fixed some bugs
adapted for zabbix 3.4

Minimal powershell version is 3.0
Checking output should run script as administator:
powershell.exe -Nologo -NoProfile -ExecutionPolicy Bypass -Command "&{ set-location 'full path to script e.g: c:\zabbix\scripts'; .\shadow_copies.ps1 }"
powershell.exe -Nologo -NoProfile -ExecutionPolicy Bypass -Command "&{ set-location 'full path to script e.g: c:\zabbix\scripts'; .\shadow_copies.ps1 -debugprint}"

in zabbix agent config:
UserParameter=tega.discovery.shadowcopies[*], powershell.exe -Nologo -NoProfile -ExecutionPolicy Bypass -Command "&{ set-location 'full path to script e.g: c:\zabbix\scripts'; .\shadow_copies.ps1 $1 }"





Controlled parametrs:
1) Shadows copies turned on/off
2) The count of shadow copies
3) Age of shadow copies, hours
4) The last date of the shadow copy
5) The allocated space of shadow copies on volume. Percent of capacity of volume.
6) The used space of shadow copies. 

Triggers:
1) Shadows copies turned on/off
2) Age of shadow copies
3) The allocated space of shadow copies on volume
4) The used space of shadow copies

Graphs:
1) The count of shadow copies
2) The used space of shadow copies

Macros:
{$CACHE_TIME_TWSCST} Cache TTL. 0 - cache off, seconds

 Edge for triggers:
 {$MAX_ALLOCATED_PERCENT_TWSCST} The allocated space of shadow copies on volume, percent of capacity of volume
 {$MAX_USED_PERCENT_TWSCST} The used space of shadow copies, percents of capacity of storage shadow copies
 {$MIN_SIZE_TWSCST} The minimum volume size for operation of the template, bytes
 {$SHADOWCOPY_AGE_TWSCST} Age of shadow copies, hours



Script shadow_copies.ps1
The template uses shadow_copies.ps1 for data getting. 
Script shadow_copies.ps1 uses WMI classes for obtaining information. 
Information is obtained for the shadow copies created by system provider.



liboutput.ps1 generates data in JSON format for LLD or single value for keys. 
Some parametrs shadow_copies.ps1:
-Help -  help information
-Cache - Cache TTL.  0 - cache off, seconds
-CacheFile - name cache file. Default: shadow_copies.ps1.xml in the same directory, as shadow_copies.ps1

Install
1) Place the files in the directory of external programs
e.g.
c:\program files\zabbix\scripts

Files shadow_copies.ps1 and liboutput.ps1 must be in the same directory.


2) In the configuration file of the agent, zabbix_agentd.win.conf:
a) UnsafeUserParameters=1
b) UserParameter=tega.discovery.shadowcopies[*], powershell.exe -Nologo -NoProfile -ExecutionPolicy Bypass -Command "&{ set-location 'c:\program files\zabbix\scripts\'; .\shadow_copies.ps1 $1 }"
where set-location is path to directory
c) Restart zabbix agent
3) Load the template


