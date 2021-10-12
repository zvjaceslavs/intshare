#!/bin/bash
t1=( `/usr/sbin/vxdisk list| awk 'NR!=1 {print $1}' `)
printf "{\n\"data\":[\n\n"
#for i in ${t1[@]}; do

let l1=${#t1[@]}-1
l2=${#t1[@]}
i=0
while [ $i -lt $l1 ]; do
printf "{ \"{#DISK_NAME}\":\"${t1[$i]}\" },\n"
let i=$i+1
done
last=${t1[$l2]}
if [ "$l2" != "0" ]; then
printf "{ \"{#DISK_NAME}\":\"${t1[$i]}\" }\n"
fi
printf "\n]\n}\n"
