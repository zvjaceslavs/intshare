# NUT Monitoring for Zabbix 4.2+

This package has been done to monitor UPSes which have been configured with NUT package.
Yes, you read it, this package is able to monitor several UPSes by using LLD rules.
This way, you can track UPS status, power loss, battery charge and UPS load and get graphs for all your UPSes.

First based on templates found on share.zabbix.com I recreated everything from scratch: 
 - to use dependent items
 - because I lost everything due to database loss

## Prerequesites

 - Zabbix >= 4.2: LLD JSON structure changed: https://www.zabbix.com/documentation/4.2/manual/discovery/low_level_discovery. Easy to change to support older Zabbix versions.
 - NUT setup: the UPS should reply to upsc <UPS>

## Installation instructions

1. Install nut.sh in ${SCRIPTS_FOLDER}. I used /etc/zabbix/sh.
2. Modify userparameter_nut.conf to replace /etc/zabbix/sh by ${SCRIPTS_FOLDER}
3. Check that the script called without any parameter lists your UPSes
4. Check that the script gives all values related to one UPS by typing `${SCRIPTS_FOLDER}/nut.sh ${UPS}` 
5. Import template
6. Check if {$UPS_BATTERY_CRITICAL} and {$UPS_BATTERY_LOW} macros are OK for you
7. Wait for the LLD rule to trigger (12h by default)
	
## Usage

    ${SCRIPTS_FOLDER/nut.sh ==> List all UPSes discovered
    ${SCRIPTS_FOLDER/nut.sh <UPS> ==> List all variables known for this UPS
	
## Limitations

ups.alarm not managed yet (my devices do not provide it)

## Credits

Jérôme Blion (https://www.hebergement-pro.org/)