#!/bin/bash


DIR="/etc/openvpn/";
LISTFILE=` ls $DIR*.conf `


if [[ "$1" == "scan" ]]; then
    comma=""
    echo "{"
    echo "\"data\":["
    for x in $LISTFILE;
    do
        echo "    $comma{\"{#VPNSERNAME}\":\"`basename $x | awk -F"." {' print $1 '} `\"}"
        comma=","
    done;
    echo "]";
    echo "}"
fi #if [[ "$1" == "scan" ]]; then

# list dc_vpn_gf_subnet
if [[ "$1" == "list" ]]; then
    if [ -n $2 ]; then
        CCDDIR=`cat $DIR$2.conf  | grep -i client-config-dir | awk {'print $2'}`
        LISTUSER=`ls $DIR$CCDDIR | grep -vE [*.txt]`
        comma=""
        echo "{"
        echo "\"data\":["
        for x in $LISTUSER;
        do
            echo "    $comma{\"{#VPNUSER}\":\"`basename $x | awk -F"." {' print $1 '} `\"}"
            comma=",";
        done;
        echo "]";
        echo "}"
    else
        exit;
    fi

fi #if [[ "$1" == "list" ]]; then

# получаем значение received для конкретного сервера и пользователя
if [[ "$1" == "statuslogreceived" ]]; then
    if [ -n $2 ] && [ -n $3 ]; then
        PATCHSTATUSLOG=`cat $DIR$2.conf | grep -i .log | grep -iE 'status ' | awk {'print $2'}`;
        if [ "`grep -c $3, $PATCHSTATUSLOG`" != "0" ]; then cat $PATCHSTATUSLOG | grep $3, | tr "," "\n" | sed -n '3p' ; else echo "0" ; fi
        exit
    else
        exit
    fi

fi

# получаем значение sent для конкретного сервера и пользователя
if [[ "$1" == "statuslogsent" ]]; then
    if [ -n $2 ] && [ -n $3 ]; then
        PATCHSTATUSLOG=`cat $DIR$2.conf | grep -i .log | grep -iE 'status ' | awk {'print $2'}`;
        if [ "`grep -c $3, $PATCHSTATUSLOG`" != "0" ]; then cat $PATCHSTATUSLOG | grep $3, | tr "," "\n" | sed -n '4p' ; else echo "0" ; fi
        exit
    else
        exit
    fi

fi


#
if [[ "$1" == "statuslog" ]]; then
    if [ -n $2 ] && [ -n $3 ]; then
        PATCHSTATUSLOG=`cat $DIR$2.conf | grep -i .log | grep -iE 'status ' | awk {'print $2'}`
        cat $PATCHSTATUSLOG | grep "$3", >/dev/null && echo 1 || echo 0
        exit
    else
        exit
    fi

fi


