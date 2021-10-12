## Redfish monitoring framewrk for MegaRAC SP-X and Phoenix ServerBMC™
The package contains few scripts capable for low-level discovery of the major system parameters and adding neccessary items and graphs into Zabbix. At the moment it can handle the following Redfish schema sections: **Processors, Memory, Sensors, Temperatures, Fans, Power**

Built on Ruby and bash. The template is proved to work with Zabbix 5.x.x

## Installation
- Unpack the scripts to the Zabbix _externalscripts_ directory. It can be either Zabbix Server or Proxy node.
- Create a directory to store LLD collected files and set the permissions.
```
mkdir externalscripts/redfish
chown zabbix:zabbix externalscripts/redfish
```
- You must edit the _redfish-collect_ and _g-redfish-lld_ and make sure the variable _LOCALPATH_ is pointing to the location of the _externalscripts/redfish_ directory created above
- Import the template XML file in Zabbix Templates section.
- Override the inherited macroses for the newly added host or in the imported template:
```
{$PASSWORD} with your password
{$USER} with your username
{$IPMI} the reachable address
{$CHASSIS}: valid values are 'Self' for MegaRAC and 'TiogaPass_Baseboard' for Phoenix
{$SYSTEM}: valid values are 'Self' for MegaRAC and 'system' for Phoenix
{$TYPE}: valid values are 'AMI' for MegaRAC and 'GAGARIN' for Phoenix
```
- Make sure your host is reachable from the Zabbix server/proxy _nmap 10.10.20.10 443_
- Optionally, adjust Discovery Rules and Item Prototype Intervals so that Zabbix does not hit the BMC too often.
- Open Zabbix Latest data view to monitor the item values being discovered and populated.

## Credits 
Based on spectroman's [iDRAC RedFish monitoring framework](https://github.com/spectroman/redfish-idrac-lld) 
