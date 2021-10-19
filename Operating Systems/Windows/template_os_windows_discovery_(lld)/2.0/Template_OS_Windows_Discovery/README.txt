A working Windows Zabbix Agent is assumed.  Each monitored Windows host requires additional lines in its zabbix.conf file that call the included Powershell scripts.

The template Discovery Rules utilize Powershell scripts to collect JSON-formatted Windows Performance Monitor counters.

1)  Import the template XML file using the Zabbix Templates Import feature.

2)  ZABBIX.CONF additional lines

UserParameter=windowspdisk.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_pdisks.ps1
UserParameter=windowsldisk.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_ldisks.ps1
UserParameter=windowsnetwork.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_adapters.ps1
 
3)  POWERSHELL SCRIPTS

The UserParameter statements call Powershell scripts located in the c:\scripts directory.  These paths may be changed to reflect the deployment.

The -NoProfile -ExecutionPolicy Bypass statements assure the scripts execute and are mandatory.

4)  Restart the Zabbix Agent service after the above modifications.