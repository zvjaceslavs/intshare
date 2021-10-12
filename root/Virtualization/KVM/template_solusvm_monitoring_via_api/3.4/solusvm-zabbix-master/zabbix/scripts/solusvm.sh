#!/usr/bin/env bash
# SolusVM check
# https://github.com/qwsj

SOLUSSEC=0          # 0 - HTTP / 1 - HTTPS
SOLUSIP="127.0.0.1" # SOLUS API NODE
TYPECC="kvm"        # NODE TYPE [openvz|xen|xen hvm|kvm]

if [ $SOLUSSEC == 0 ] ; then # PROTOCOL HTTP or HTTPS
    RPROTOCOL="http"
    RPORT=5353
else
    RPROTOCOL="https"
    RPORT=5656
fi
if [ ! -z $1 ] ; then # SOLUSID API CHECK
    SOLUSID=$1
else
    exit
fi
if [ ! -z $2 ] ; then # SOLUSKEY API CHECK
    SOLUSKEY=$2
else
    exit
fi

if [[ ${3} == "nodediscovery" ]] ; then # NODE ID & NAME DISCOVERY
    NODEDISCOVERY=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&type=$TYPECC\&rdtype=json\&action=node-idlist | jq '.nodes' | tr -d \" | sed 's/\,/\n/g')
    if [[ -n ${NODEDISCOVERY} ]] ; then
        JSON="{ \"data\":["
        SEP=""
        for NODENUM in ${NODEDISCOVERY} ; do
            CHECKNAME=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODENUM\&action=node-statistics | jq .name)
            if [ -z $CHECKNAME ] ; then
                CHECKNAME=" "
            fi
            JSON=${JSON}"$SEP{\"{#NODEID}\":\"${NODENUM}\", \"{#NODENAME}\":${CHECKNAME}}"
            SEP=", "
        done
        JSON=${JSON}"]}"
        echo ${JSON}
    fi
fi

if [ ! -z $4 ] ; then # SOLUS NODE NUM
    NODEIDNUM=$4
else
    exit
fi

if [[ ${3} == "vmcount" ]] ; then # VM COUNT
    CHECKVMCOUNT=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .virtualservers)
    echo $CHECKVMCOUNT;
fi
if [[ ${3} == "ramstat" ]] ; then # ALLOCATED RAM NODE STAT
    CHECKRAM=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .allocatedmemory)
    echo $[$CHECKRAM * 1024];
fi
if [[ ${3} == "ramlimit" ]] ; then # RAM LIMIT NODE STAT
    CHECKRAML=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .memorylimit)
    echo $[$CHECKRAML * 1024];
fi
if [[ ${3} == "diskfree" ]] ; then # FREE DISK NODE STAT
    CHECKFDISK=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .freedisk | tr -d \")
    echo $[$CHECKFDISK * 1024];
fi
if [[ ${3} == "disklimit" ]] ; then # DISK LIMIT NODE STAT
    CHECKLDISK=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .disklimit)
    echo $[$CHECKLDISK * 1024];
fi
if [[ ${3} == "freeip4" ]] ; then # FREE IPv4 NODE STAT
    CHECKFIP4=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .freeips)
    echo $CHECKFIP4;
fi
if [[ ${3} == "freeip6" ]] ; then # FREE IPv6 NODE STAT
    CHECKFIP6=$(curl -s -k $RPROTOCOL://$SOLUSIP:$RPORT/api/admin/command.php?id=$SOLUSID\&key=$SOLUSKEY\&rdtype=json\&nodeid=$NODEIDNUM\&action=node-statistics | jq .freeipv6)
    echo $CHECKFIP6;
fi
unset NODEIDNUM; exit