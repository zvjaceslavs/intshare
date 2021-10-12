#!/bin/bash
#
# smart-health.sh
#
# RELEASE
#  2015-07-30-1718
#
# Last Modified:
#  2015-07-08-0028 UTC by jhsimonson
#  2015-07-27-0032 UTC by jhsimonson for #7159
#  2015-07-28-0010 UTC by jhsimonson for #7161
#  2015-07-30-1718 UTC by jhsimonson for #7171
#  2015-08-03-0010 UTC by jhsimonson for #7202
#
# Parameters:
#  $1 - the device. For example, "sda", or "twa0"
#  $2 - the port, such as "0"
#
# Return Value
#  Status of input item. An integer, such as "0" for "Unknown", or "1" for "OK"
#
# Command Examples
#  smartctl --health /dev/sdb
#  smartctl --health --device=3ware,0 /dev/twa0
#
# Sample ouput for the above commands:
#
#   smartctl 6.4 2014-10-07 r4002 [x86_64-linux-3.19.0-22-generic] (local build)
#   Copyright (C) 2002-14, Bruce Allen, Christian Franke, www.smartmontools.org
#
#   === START OF READ SMART DATA SECTION ===
#   SMART overall-health self-assessment test result: PASSED
#
# This routine must run under 5 seconds, or Zabbix will abandon it and no data will appear.

#-------------------------------------------------------------------------------------

# Save the first input parameter as the device, such as "sda", or "twa0"
#
TheDevice=$1

# Save the second input parameter as the port number, such as "0".
#
ThePort=$2

#-------------------------------------------------------------------------------
# Non-Changeable constants
#
TheOKCode=1
TheUnknownStatusCode=0
TheOKMark="OK"
Passed="PASSED"
OLDPassed="OK"
TheHealthTestResultTarget="SMART overall-health self-assessment test result"
TheOLDHealthTestResultTarget="SMART Health Status"
False="FALSE"
True="TRUE"
TheStatusCode=$TheUnknownStatusCode
TheDevice02=${TheDevice:0:2}

# Execute the smartctl command and place each line in an array of strings.
# Split the lines on ":" and "\n" (line feed).
#
IFS=$':\n'
if [ "$TheDevice02" = "tw" ]; then
  TheOutputLines=( $(smartctl --health --device=3ware,$ThePort /dev/$TheDevice) )
elif [ "$TheDevice02" = "sd" ]; then
  TheOutputLines=( $(smartctl --health -T permissive /dev/$TheDevice) )
else
  TheOutputLines=( $(smartctl --health -T permissive ${TheDevice:0:1}":") )
fi
unset IFS

#
# These two following routines should be combined into a general-purpose function.
# I am not doing it now becuase the parameters will be a bit messy.
# I'll do it later when more time is available.
#

# Traverse the array containing one line of output per array location.
# Look for the target string indicating the Health.
# Set the status to OK if the health is PASSED.
#
Found=$False
for p in "${TheOutputLines[@]}"; do
  if [ $Found = $True ]; then
    if [ ${p:0:7} = $Passed ]; then
      TheStatusCode=$TheOKCode
      fi
    break
    fi
  if [ "$p" = "$TheHealthTestResultTarget" ]; then
    Found=$True
    fi
  done

# If the Target string was not found, then maybe the drive is using 
# a very old version Smartmon.
# Look for the old target.
#
if [ $Found = $False ]; then
  for p in "${TheOutputLines[@]}"; do
    if [ $Found = $True ]; then
      if [ ${p:0:3} = $OLDPassed ]; then
        TheStatusCode=$TheOKCode
        fi
      break
      fi
    if [ "$p" = "$TheOLDHealthTestResultTarget" ]; then
      Found=$True
      fi
    done
  fi

echo $TheStatusCode

exit 0
