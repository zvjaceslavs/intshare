A working Windows Zabbix Agent is assumed.  Each monitored Windows host requires additional lines in its zabbix.conf file that call the included Powershell scripts.

The template OS Windows Discovery Rules utilize Powershell scripts to collect JSON-formatted Windows Performance Monitor counters.

This template is intended as an add-on to Template_OS_Windows_Discovery.xml.  It is Zabbix server resource-intensive and provides detailed hardware and OS-level performance counters for dificult-to-diagnose issues.

1)  Import the template XML file using the Zabbix Templates Import feature.

2)  ZABBIX.CONF additional lines

UserParameter=windowspdiskperf.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_pdisks.ps1
UserParameter=windowsldiskperf.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_ldisks.ps1
UserParameter=windowsnetworkperf.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_adapters.ps1
UserParameter=windowsprocessorperf.discovery,powershell -NoProfile -ExecutionPolicy Bypass -File c:\scripts\get_processors.ps1
 
3)  POWERSHELL SCRIPTS

The UserParameter statements call Powershell scripts located in the c:\scripts directory.  These paths may be changed to reflect the deployment.  Three of the scripts (get_pdisks.ps1, get_ldisks.ps1 and get_adapters.ps1) are also inculuded in Template_OS_Windows_Discovery.  If that is already installed and working, you only need to add get_processors.ps1.

The -NoProfile -ExecutionPolicy Bypass statements assure the scripts execute and are mandatory.

4)  Restart the Zabbix Agent service after the above modifications.