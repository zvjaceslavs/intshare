#####################################################################################################
#   _____     _     _     _        ____  _   _ __  __ ____    _   _ ____ _____     __               #
#  |__  /__ _| |__ | |__ (_)_  __ / ___|| \ | |  \/  |  _ \  | \ | / ___|_ _\ \   / /               #
#    / // _` | '_ \| '_ \| \ \/ / \___ \|  \| | |\/| | |_) | |  \| \___ \| | \ \ / /                #
#   / /| (_| | |_) | |_) | |>  <   ___) | |\  | |  | |  __/  | |\  |___) | |  \ V /                 #
#  /____\__,_|_.__/|_.__/|_/_/\_\ |____/|_| \_|_|  |_|_|     |_| \_|____/___|  \_/                  #
#                                                                                                   #
# Name: Michel van Son                                                                              #
# Company: SolvedIT <www.solvedit.nu>                                                               #
# Purpose: This script will return a value when 'No Such Instance currently exists at this OID'     #
# In some cases you'll want to trigger or recover when the value doesn't exist.                     #
#####################################################################################################

#!/bin/bash

#####################################################################################################
# Arguments                                                                                         #
# $1: Host                                                                                          #
# $2: The requested oid                                                                             #
# $3: Error value (The error value you want to replace) (optional)                                  #
# $4: Return value (something like 0/1, FALSE/TRUE) (optional)                                      # 
# $5: SNMP Version (optional)                                                                       #
#####################################################################################################

#####################################################################################################
# Script defaults                                                                                   #
#####################################################################################################
varErrorValue="${4:-No Such Instance currently exists at this OID}"
varRetValue="${4:-0}"
varSNMPVer="${5:-2c}"

#####################################################################################################
# Try to get SNMP value                                                                             #
#####################################################################################################
snmpValue=$(snmpwalk -Oqv -v$varSNMPVer -c public $1 $2)
#echo $snmpValue
if [ "$snmpValue" == "$snmpErrorValue" ]
then
    echo "$varRetValue"
else
    echo "$snmpValue"
fi
