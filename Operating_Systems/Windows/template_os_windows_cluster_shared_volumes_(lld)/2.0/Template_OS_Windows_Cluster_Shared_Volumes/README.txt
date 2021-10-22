A working Windows Zabbix Agent is assumed.  Each monitored Windows host requires additional lines in its zabbix.conf file that call the included Powershell scripts.

The template OS Windows Discovery Rules utilize Powershell scripts to collect JSON-formatted Windows Performance Monitor counters.

This template is intended as an add-on to Template_OS_Windows_Cluster_Services.xml.  It is Zabbix server resource-intensive and provides detailed hardware and OS-level performance counters for dificult-to-diagnose issues.

1)  Import the template XML file using the Zabbix Templates Import feature.

2)  ZABBIX.CONF additional lines

UserParameter=windowscsvfs.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_csvfs.ps1
UserParameter=windowscsvvm.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_csvvm.ps1
UserParameter=windowscsvsmb.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_csvsmb.ps1
 
3)  POWERSHELL SCRIPTS

The UserParameter statements call Powershell scripts located in the c:\scripts directory.  These paths may be changed to reflect the deployment.

The -NoProfile -ExecutionPolicy Bypass statements assure the scripts execute and are mandatory.

4)  Restart the Zabbix Agent service after the above modifications.