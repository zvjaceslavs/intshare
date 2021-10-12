# Zabbix MacOSX Sender

### Installation

This Script requires [Zabbix agent](https://www.zabbix.com/download_agents#tab:40LTS) v4.0.x to run.

Install the script and startup script.


##### Install startup script

`$ sudo cp -r Library/LaunchDaemons/com.pq-computers.ZabbixMacosxSender.plist /Library/LaunchDaemons`

`$ sudo launchctl load /Library/LaunchDaemons/com.pq-computers.ZabbixMacosxSender.plist`

##### Edit and Install sender script

`$ vi zabbix-macosx-sender.sh`

`$ sudo cp -r zabbix-macosx-sender.sh /usr/local/bin/`

`$ sudo chmod 755 /usr/local/bin/zabbix-macosx-sender.sh`

##### Optional: Remove zabbix user from macOS login window 
`$ sudo dscl . create /Users/zabbix IsHidden 1`

