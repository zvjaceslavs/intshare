#!/bin/bash

##
# Version:      v0.1
# Author:       peter Laschtowitz
# Email:        pl@pq-computers.com
##

# Config
systemname=""
zabbixserverip=""

# Get data from system profiler
SPHardwareDataType="$(system_profiler SPHardwareDataType | tail +5)"
SPSoftwareDataType="$(system_profiler SPSoftwareDataType)"
SPPowerDataType="$(system_profiler SPPowerDataType)"

# Find and save data from SPHardwareDataType
ModelIdentifier="$(echo "$SPHardwareDataType" | grep "Model Identifier" | cut -d ':' -f 2)"
SerialNumber="$(echo "$SPHardwareDataType" | grep "Serial Number" | cut -d ':' -f 2)"

# Find and save data from SPSoftwareDataType
SystemVersion="$(echo "$SPSoftwareDataType" | grep "System Version" | cut -d ':' -f 2)"
ComputerName="$(echo "$SPSoftwareDataType" | grep "Computer Name" | cut -d ':' -f 2)"

# Find and save data from SPPowerDataType
BatteryCondition="$(echo "$SPPowerDataType" | grep "Condition" | cut -d ':' -f 2)"
BatteryCycleCount="$(echo "$SPPowerDataType" | grep "Cycle Count" | cut -d ':' -f 2)"
if [ "$BatteryCondition" = "" ]; then BatteryCondition=" n/v"; fi
if [ "$BatteryCycleCount" = "" ]; then BatteryCycleCount=" 0"; fi

# Get List of Applications folder
AppList="$(ls /Applications)"

# Get all Network interfaces
NetworkList="$(scutil --nwi)"

# Add some information for the HardwareFull item
SPHardwareDataType+="$(system_profiler SPDisplaysDataType | tail +1)"

rm -rf /tmp/zabbix-macosx-sender-value-list.key

echo "$systemname ModelIdentifier$ModelIdentifier" >> /tmp/zabbix-macosx-sender-value-list.key
echo "$systemname SerialNumber$SerialNumber" >> /tmp/zabbix-macosx-sender-value-list.key
echo "$systemname SystemVersion$SystemVersion" >> /tmp/zabbix-macosx-sender-value-list.key
echo "$systemname ComputerName$ComputerName" >> /tmp/zabbix-macosx-sender-value-list.key
echo "$systemname BatteryCondition$BatteryCondition" >> /tmp/zabbix-macosx-sender-value-list.key
echo "$systemname BatteryCycleCount$BatteryCycleCount" >> /tmp/zabbix-macosx-sender-value-list.key

sleep 10
/usr/local/bin/zabbix_sender -z $zabbixserverip -i /tmp/zabbix-macosx-sender-value-list.key
/usr/local/bin/zabbix_sender -k HardwareFull -o "$SPHardwareDataType" -z $zabbixserverip -s $systemname
/usr/local/bin/zabbix_sender -k SoftwareFull -o "$AppList" -z $zabbixserverip -s $systemname
/usr/local/bin/zabbix_sender -k NetworkFull -o "$NetworkList" -z $zabbixserverip -s $systemname
