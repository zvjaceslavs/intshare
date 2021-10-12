Template to get information about .NET status

This template was created to be appliead at a Veeam Backup Service Provider. The customer had many problems related to .NET version and we build a simple scipt and template to put on Veeam servers and monitor via Zabbix. 

How to use

After import the template on Zabbix, you will need to put the script on zabbix home at "scripts" folder at client machine side. After it, go to the zabbix_agent.conf (client machine side) and add this line:

UserParameter=netinfo[*],PowerShell.exe -ExecutionPolicy UnRestricted -File <SCRIPT PATH> $1 $2

***Note: Remember of change the value <SCRIPT PATH> to the real script path.

After it is only add the script at the host that you want to monitor.


How can I test the script on client side?

You can test the script running it via powershell with this parameters. E.g:

.\Netframeworkinfo.ps1 netver
   ****return .NET version****

.\Netframeworkinfo.ps1 kbnumber
   ****return the KBnumber of the last update of the .NET****

.\Netframeworkinfo.ps1 updatedate
   ****return the date of the last update of the .NET****



Knowed Issues:

To charge the variable $session, the windows upadate service needs be enabled and running. You will perceive this issue if you receive error related this variable when to try get values of KBNUMBER and UPDATEDATE.



