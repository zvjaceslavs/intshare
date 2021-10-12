#!/bin/bash
disk=$1
vxdisk -qe list $disk|awk '{print $5}'|grep online|wc -l
