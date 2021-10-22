#!/bin/bash
iostat -Exn | grep Error | awk '{$1=""; print $0}' | sed s/[^0-9]//g | grep -v 0 | wc -l | sed 's/^[ \t]*//;s/[ \t]*$//'
vxdisk -o alldgs list | grep online | wc -l | sed 's/^[ \t]*//;s/[ \t]*$//'
perl -e 'print time."\n"'
