#!/bin/bash
#
# Created by Wilson Waters 20190421
#
#

address=$1
variable=$2
path="/aircon/get_sensor_info"

if [[ "${variable}" == "pow" || "${variable}" == "mode" || "${variable}" == "stemp" ]]
then
   path="/aircon/get_control_info"
fi


value=`curl http://${address}${path} 2>/dev/null | grep -o "${variable}=[^,]*" | head -1 | sed "s/^.*=//"`

echo $value
