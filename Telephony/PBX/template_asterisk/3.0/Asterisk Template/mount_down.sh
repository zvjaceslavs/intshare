#!/bin/bash
###############
##Check Mount##
###############
NFS_IP="127.0.0.1"

CHECK=$(grep $NFS_IP  /proc/mounts)
if [[ -z $CHECK ]]; then
             echo "0"
else         echo "1"


fi
