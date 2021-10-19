#!/bin/bash

PF=/tmp/zabbix_paraccel_nodes

function valid_ip()
{
    local ip=$1
    local stat=1
    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
	stat=$?
    fi
    return $stat
}

if [[ -z ${1} || -z ${2} || -z ${3} ]]; then
    METRIC="ip"
    NUM=`cat $PF | head -1 | sed -e 's/|/\n/g' | sed -n "/$METRIC/="`
    NODES=`cat $PF | tail -n +2 | head -n -1 | sed  's/[ ]\{2,\}/|/g' | cut -d"|" -f$NUM`

    if [[ -n ${NODES} ]]; then
      JSON="{ \"data\":["
      flag=0
      for NODE in ${NODES}; do
	if valid_ip $NODE; then
	    if [ $flag != 0 ]; then
		JSON=${JSON}","
	    fi
	    flag=$flag+1
    	    JSON=${JSON}"{ \"{#NODE}\":\"${NODE}\"}"
    	fi    
      done
      JSON=${JSON}"]}"
      echo ${JSON}
    fi
    exit 0
elif [[ -n ${1} && -n ${2} && -n ${3} ]]; then
    HOST="$1"
    METRIC="$2"
    NODE="$3"
    if valid_ip $NODE; then
	NUM=`cat $PF | head -1 | sed -e 's/|/\n/g' | sed -n "/^$METRIC$/="`
	VAL=`cat $PF | tail -n +2 | head -n -1 | sed  's/[ ]\{2,\}//g' | grep $NODE"|" | head -1  | cut -d'|' -f$NUM`
	echo $VAL
	exit 0
    fi
    echo ZBX_NOTSUPPORTED
    exit 2
else 
    exit 1
fi

