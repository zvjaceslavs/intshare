#!/bin/bash
#
PD=/tmp/zabbix_HP_array_monitor
if [[ -n ${1} && -n ${2} && -z ${3} ]]; then
  ##### DISCOVERY #####
  TYPE="${2}"
  if [[ ${TYPE} == "virtdiskovery" ]]; then
    DRIVES=`cat $PD |awk '/Logical Drive:/ {printf("VirtualDrive%d\n", $3)}'`
    if [[ -n ${DRIVES} ]]; then
      JSON="{ \"data\":["
      flag=0
      for DRIVE in ${DRIVES}; do
        if [ $flag != 0 ]; then
            JSON=${JSON}","
        fi
	flag=$flag+1
        JSON=${JSON}"{ \"{#VIRTNUM}\":\"${DRIVE}\"}"
      done
      JSON=${JSON}"]}"
      echo ${JSON}
    fi
  elif [[ ${TYPE} == "physdiskovery" ]]; then
    DRIVES=`cat $PD |awk '/physicaldrive/ {printf("DriveSlot%s\n", $2)}'`
    if [[ -n ${DRIVES} ]]; then
      JSON="{ \"data\":["
      flag=0
      for DRIVE in ${DRIVES}; do
        if [ $flag != 0 ]; then
            JSON=${JSON}","
        fi
	flag=$flag+1
        JSON=${JSON}"{ \"{#PHYSNUM}\":\"${DRIVE}\"}"
      done
      JSON=${JSON}"]}"
      echo ${JSON}
    fi
  fi
  exit 0
elif [[ -n ${1} && -n ${2} && -n ${3} ]]; then
  ##### PARAMETERS #####
  HOST="${1}"
  DRIVE="${2}"
  METRIC="${3}"
  FILECACHE="/tmp/zabbix.hparry.cache"
  TTLCACHE="55"
  TIMENOW=`date '+%s'`
  ##### CACHE #####
  if [ -s "${FILECACHE}" ]; then
    TIMECACHE=`stat -c"%Z" "${FILECACHE}"`
  else
    TIMECACHE=0
  fi
  if [ "$((${TIMENOW} - ${TIMECACHE}))" -gt "${TTLCACHE}" ]; then
    echo "" >> ${FILECACHE} # !!!
    DATACACHE=`cat $PD | sed s/physicaldrive/physicaldrive:/ | awk -F': ' '
        function ltrim(s) { sub(/^[ \t]+/, "", s); return s }
        function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
        function trim(s)  { return rtrim(ltrim(s)); }
        /physicaldrive/              {slotcounter+=1; slot[slotcounter]=trim($2)}
        /Serial Number/             {inquiry[slotcounter]=trim($2)}
        /Status/           {state[slotcounter]=trim($2)}
        /Current Temperature/        {temperature[slotcounter]=trim($2)}
        END {
          for (i=1; i<=slotcounter; i+=1) {
            printf ( "DriveSlot%s inquiry: %s\n",slot[i], inquiry[i]);
            printf ( "DriveSlot%s state: %s\n", slot[i], state[i]);
            printf ( "DriveSlot%s temperature: %d\n", slot[i], temperature[i]);
          }
        }';
        cat $PD | grep -v OS | grep -v Parity | awk -F':' '
        function ltrim(s) { sub(/^[ \t]+/, "", s); return s }
        function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
        function trim(s)  { return rtrim(ltrim(s)); }
        /Logical Drive:/ {drivecounter+=1; slot[drivecounter]=trim($2);}
        /Status:/          {state[drivecounter]=trim($2)}
        END {
          for (i=1; i<=drivecounter; i+=1) {
            printf ( "VirtualDrive%d state: %s\n", slot[i], state[i]);
          }
        }'` || exit 1
    echo "${DATACACHE}" > ${FILECACHE} # !!!
  fi
  #
  cat "${FILECACHE}" | grep -i ${DRIVE} | awk -F': ' "/${METRIC}/ {print \$2}" | head -n1
  exit 0
#
else
  exit 0
fi
