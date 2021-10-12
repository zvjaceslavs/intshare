Monitor SMART overall-health self-assessment of storage devices.  Included are a BASH script for 
running smartctl and parsing its output, along with a template with items for various drive names.

Add this UserParameter to /etc/zabbix/zabbix_agentd.conf
  UserParameter=smart.health[*],/usr/lib/zabbix/externalscripts/smart-health.sh $1 $2

smart-health.sh 

  Parameters:
    $1 - the device. For example, "sda", or "twa0"
    $2 - the port, such as "0"

  Return Value
    Status of input item. An integer, such as "0" for "Unknown", or "1" for "OK"

  smartctl Command Examples
    smartctl --health /dev/sdb
    smartctl --health --device=3ware,0 /dev/twa0

  Sample ouput for the above commands:

    smartctl 6.4 2014-10-07 r4002 [x86_64-linux-3.19.0-22-generic] (local build)
    Copyright (C) 2002-14, Bruce Allen, Christian Franke, www.smartmontools.org

    === START OF READ SMART DATA SECTION ===
    SMART overall-health self-assessment test result: PASSED