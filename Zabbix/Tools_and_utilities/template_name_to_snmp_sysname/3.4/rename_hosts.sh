#####################################################################################################
#  _____     _     _     _        __  __                 ____                                       #
# |__  /__ _| |__ | |__ (_)_  __ |  \/  | __ _ ___ ___  |  _ \ ___ _ __   __ _ _ __ ___   ___ _ __  #
#   / // _` | '_ \| '_ \| \ \/ / | |\/| |/ _` / __/ __| | |_) / _ \ '_ \ / _` | '_ ` _ \ / _ \ '__| #
#  / /| (_| | |_) | |_) | |>  <  | |  | | (_| \__ \__ \ |  _ <  __/ | | | (_| | | | | | |  __/ |    #
# /____\__,_|_.__/|_.__/|_/_/\_\ |_|  |_|\__,_|___/___/ |_| \_\___|_| |_|\__,_|_| |_| |_|\___|_|    #
#                                                                                                   #
# Name: Michel van Son                                                                              #
# Company: SolvedIT <www.solvedit.nu>                                                               #
# Purpose: This script will rename all hosts according to received sysname value                    #
# Original script: http://developers-club.com/posts/82465/                                          #
#####################################################################################################

#!/bin/bash

#####################################################################################################
# Use your own MySQL settings                                                                       #
#####################################################################################################
varMysqlHost=xxx.xxx.xxx.xxx
varMysqlDB=zabbix
varMysqlUser=zabbix
varMysqlPassword=zabbix

#####################################################################################################
# Initiate DB connection and get hosts                                                              #
#####################################################################################################
MYSQL="mysql --connect_timeout 10 $varMysqlDB -h $varMysqlHost -u $varMysqlUser --password=$varMysqlPassword --skip-column-names -B -e"
$MYSQL "SELECT host FROM hosts where host LIKE '$1'" | while read line

#####################################################################################################
# Loop through all hosts and get snmp hostname for each                                             #
#####################################################################################################
do
arr=($line)
echo "Getting sysname for ${arr[0]}"
snmpName=$(snmpwalk -Oqv -v1 -c public ${arr[0]} system.sysName.0 2> /dev/null)
echo "Sysname: $snmpName"
$MYSQL "UPDATE hosts SET name = '$snmpName' WHERE host ='${arr[0]}'"
done
