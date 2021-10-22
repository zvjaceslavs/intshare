# Microsoft Message Queue Monitor for Zabbix
The Microsoft Message Queue Monitor is a Zabbix template complete with PowerShell scripts that will allow you to monitor all of your Microsoft Message Queues quickly and easily. All queues will be discovered when the template is properly applied to a client running the MSMQ service. For your convenience all triggers are disabled by default. To be alerted when a queue has a message count greater than 100 simply enable the generated trigger.

See it on ZShare: https://share.zabbix.com/cat-app/queue-managers/microsoft-message-queue-monitor-for-zabbix

# Installation
  1. Copy all of the included files to your preferred template directory on the client that will be monitored.
  2. Add the UserParamater entries found in "zabbix3.0_addconf.txt" to the Zabbix Agent's configuration on the client to be monitored.
  3. Save the configuration and restart the Zabbix agent on the client (e.g. `Restart-Service -Name 'Zabbix Agent'`)
  4. On the Zabbix web interface, go to Zabbix -> Configuration -> Templates and click the "Import" button in the top right of the screen.
  5. Select "Choose file" to upload the "zbx_msmq_templates.xml" file to the Zabbix server and click "Import".
  6. Apply the "Template Microsoft MSMQ" template to the Windows hosts you want to monitor.
