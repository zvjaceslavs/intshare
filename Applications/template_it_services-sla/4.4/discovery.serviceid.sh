#!/bin/bash
# ORIGINAL AUTHOR ########################################################################
# Script:         serviceid.sh                                                           #              
# Author:         Danilo Barros de Medeiros                                              #
# Contact:        danilo@provtel.com.br                                                  #
# Date:           2017-05-02                                                             #
# Description:    Script para consultar SLA de um Servico de TI no Zabbix                #
# Requisites:     Curl-Jq                                                                #
# Link:           https://github.com/danilobarros18/Zabbix/tree/master/API-ITService     #
##########################################################################################

# CONTRIBUTION ###########################################################################
# Script:         discovery.serviceid.sh                                                 #
# Contribution:   Mario Alves marioalvesrzti@gmail.com (script e validações).            #
# Contribution:   Diego Cavalcante diego@suportecavalcante.com.br (script e validações). #
# Description:    Low Level Discovery IT Services por serviço pai.                       #
#                 Low Level Discovery IT Services per parent service.                    #
# Help:           Execute /bin/bash discovery.serviceid.sh para informacoes de uso.      #
#                 Run /bin/bash discovery.serviceid.sh for usage information.            #
# Update v1.3.0:  Thu Jun 05 19:24:00 BRT 2018 (ADD funções LLD, SLA, TIMEPR e TIMEOK).  #
# Update v1.4.0:  Thu Jun 25 18:0:00 BRT 2018 (VARIAVEIS TODAY MONDAY E MONTH ).         #
# Description:    INCREMENTADO SLA CONSUMIDO API POR DIA ,SEMANA E MÊS CORRENTE          #
########################################################################################## 

# GLOBAL VARIABLES #######################################################################
URL='http://192.168.0.114/zabbix/api_jsonrpc.php' # URL/IP Zabbix.                       #
HEADER='Content-Type:application/json'                                                   #
USER='"Admin"' # Enter your username.                                                    #
PASS='"zabbix"' # CEnter your password.                                                  #
# END ####################################################################################

# ARGUMENTS AND VARIABLES ################################################################
SERVICEID=$2 # ARG $2 = Place SLA serviceid.                                             #
PARENTID=$3  # ARG $3 = Place SLA PARENTID                                               #
DAYS=$3      # ARG $3 = Enter the desired number of days for the SLA filter.             #
DIA=`date +%s`                                                                           #
TODAY=`date -d '' '+%s'`                                                                 #
MONDAY=$([ $(date -d 'last mon' '+%V') -eq $(date '+%V') ] && date -d 'last mon' '+%s' || date -d '' '+%s')
MONTH=`date -d $(date '+%Y-%m-01') '+%s'`                                               #
VERSION="1.5.0"                                                                          #
UPDATE="15/06/2018"                                                                      #
# END ####################################################################################

# API AUTENTICATION ######################################################################
autenticate()
{
 JSON='
 {
     "jsonrpc": "2.0",
     "method": "user.login",
     "params": {
         "user": '$USER',
         "password": '$PASS'
     },
     "id": 0
 }'
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |cut -d '"' -f8 
}
TOKEN=$(autenticate) # Token obtained by Zabbix
# END ###################################################################################

# FUNCTION LLD ##########################################################################
function lld
{
sla ()
{
  JSON='
       {
        "jsonrpc": "2.0",
        "method": "service.get",
        "params": {
        "output": ["name","goodsla","serviceid","showsla","status"],
        "selectTrigger":[ "triggerid","description","priority" ],
        "selectParent":{ "name":[ "description" ],
        "selectDependencies" : "serviceid",
        "filter":{"name":["$PID"],
        "serviceids":["self.serviceids"]
          }
      }
    }
  ,
"auth": "'$TOKEN'",
                  "id": 1}'


command01=(`curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool | jq '.result | map({name,serviceid,parentserviceid:.parent.serviceid?}) | map(select(.parentserviceid | test("'$SERVICEID'|'$PARENTID'"))) | map({name, serviceid})'| grep "serviceid" |cut -d ":" -f 2 |sed 's/ //g' |sed 's/[",]//g'`)
command02=(`curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool | jq '.result | map({name,serviceid,parentserviceid:.parent.serviceid?}) | map(select(.parentserviceid | test("'$SERVICEID'|'$PARENTID'"))) | map({name, serviceid})'| grep "name" |cut -d ":" -f 2 |sed 's/ //g' |sed 's/[",]//g'`)
command03=(`curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool | jq '.result | map({goodsla,name,serviceid,parentserviceid:.parent.serviceid?})| map(select(.parentserviceid | test("'$SERVICEID'|'$PARENTID'")))| map({name, goodsla})' | grep "goodsla"| cut -d ":" -f2| sed 's/ //g'|sed 's/"//g'`)

length=${#command01[@]}
 printf "{\n"
 printf '\t'"\"data\":["
  for ((i=0;i<$length;i++))
   do
    printf '\n\t\t{'
    printf "\"{#SLAID}\":\"${command01[$i]}\", \"{#SLANAME}\":\"${command02[$i]}\", \"{#SLAGOOD}\":\"${command03[$i]}\"}"
     if [ $i -lt $[$length-1] ];then
     printf ','
     fi
   done
 printf "\n\t]\n"
 printf "}\n"
 }
 sla 
}
# END ###################################################################################

# INICIO DA FUNÇÃO DE COLETA TODAY
# FUNCTION SLADAY #######################################################################
function sladay
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$TODAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "problemTime" -A 1 |grep "sla" |awk '{print substr($2,1,7)}'|sed 's/,//g'
}
# END ###################################################################################

# FUNCTION TIMEPRDAY######################################################################
function timeprday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$TODAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "problemTime" |awk '{print substr($2,1,6)}' |sed 's/,//g'
}
# END ###################################################################################

# FUNCTION TIMEOK #######################################################################
function timeokday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$TODAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "okTime" |awk '{print substr($2,1,7)}' |sed 's/,//g'
}
# END ###################################################################################

# FUNCTION DOWNTIMEDAY ##################################################################

function downtimeday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$TODAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool | grep "downtimeTime" | awk '{print substr($2,1,7)}'|sed 's/,//g'
}

# END FINAL FUNÇÃO DAY########################################################################################

# INICIO DA FUNÇÃO DE COLETA MONDAY ##########################################################################

# FUNCTION SLAMONDAY #######################################################################
function slamonday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONDAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "problemTime" -A 1 |grep "sla" |awk '{print substr($2,1,7)}'|sed 's/,//g'
}
# END ###################################################################################

# FUNCTION TIMEPRMONDAY######################################################################
function timeprmonday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONDAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "problemTime" |awk '{print substr($2,1,6)}' |sed 's/,//g'
}
# END ###################################################################################

# FUNCTION TIMEOKMONDAY #######################################################################
function timeokmonday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONDAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "okTime" |awk '{print substr($2,1,7)}' |sed 's/,//g'
}
# END ###################################################################################

# FUNCTION DOWNTIMEMONDAY ##################################################################

function downtimemonday
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONDAY',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool | grep "downtimeTime" | awk '{print substr($2,1,7)}'|sed 's/,//g'
}

# END FINAL FUNÇÃO MONDAY########################################################################################

# COMEÇO DA FUNÇÃO DE COLETA MONTH
# FUNCTION SLAMONTH #######################################################################
function slamonth
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONTH',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "problemTime" -A 1 |grep "sla" |awk '{print substr($2,1,7)}'|sed 's/,//g'
}
# END ###################################################################################

# FUNCTION TIMEPRMONTH ######################################################################
function timeprmonth
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONTH',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "problemTime" |awk '{print substr($2,1,6)}' |sed 's/,//g'
}
# END ###################################################################################

# FUNCTION TIMEOKMONTH #######################################################################
function timeokmonth
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONTH',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool |grep "okTime" |awk '{print substr($2,1,7)}' |sed 's/,//g'
}
# END ###################################################################################

# FUNCTION DOWNTIMEMONTH ##################################################################

function downtimemonth
{
 {
  JSON='
  {
      "jsonrpc": "2.0",
      "method": "service.getsla",
      "params": {
          "serviceids": '$SERVICEID',
          "intervals": [
              {
                  "from": '$MONTH',
                  "to": '$DIA'
              }
       ]
  },
  "auth": "'$TOKEN'",
  "id": 1
  }'
 }
 curl -s -X POST -H "$HEADER" -d "$JSON" "$URL" |python -mjson.tool | grep "downtimeTime" | awk '{print substr($2,1,7)}'|sed 's/,//g'
}

# END FUNÇÃO MONTH ########################################################################################

###################################
# ARGUMENT OPTION $1              #
###################################
case $1 in                        #
    LLD) lld;                     #
        ;;                        #
    SLADAY) sladay;               #
        ;;                        #
    TIMEPRDAY) timeprday;         #
        ;;                        #
  TIMEOKDAY) timeokday;           #
        ;;                        #
  DOWNTIMEDAY) downtimeday;       #
        ;;                        #
    SLAMONDAY) slamonday;         #
        ;;                        #
    TIMEPRMONDAY) timeprmonday;   #
        ;;                        #
  TIMEOKMONDAY) timeokmonday;     #
        ;;                        #
  DOWNTIMEMONDAY) downtimemonday; #
        ;;                        #
    SLAMONTH) slamonth;           #
        ;;                        #
    TIMEPRMONTH) timeprmonth;     #
        ;;                        #
  TIMEOKMONTH) timeokmonth;       #
        ;;                        #
  DOWNTIMEMONTH) downtimemonth;   #
        ;;                        #
        *)                        #
# END #############################
echo ""
echo "----------------------------------------------------- INFO ------------------------------------------------------"
echo "                                               ZABBIX SLA REPORT                                                 "
echo "                                       Version: $VERSION Update: $UPDATE"                                         
echo "----------------------------------------------------- HELP ------------------------------------------------------"
echo "#                                                                                                               #"
echo "# Usage: LLD|SLA|TIMEPR|TIMEOK|DOWNTIME|SEMANA                                                                  #"
echo "#                                                                                                               #"
echo "# Ex: /bin/bash discovery.itservices.sh LLD                                                                     #"
echo "# Ex: /bin/bash discovery.itservices.sh SLADAY ID    DAYS                                                       #"
echo "# Ex: /bin/bash discovery.itservices.sh TIMEPRDAY   ID DAYS                                                     #"
echo "# Ex: /bin/bash discovery.itservices.sh TIMEOKDAY   ID DAYS                                                     #"
echo "# Ex: /bin/bash discovery.itservices.sh DOWNTIMEDAY ID DAYS                                                     #"
echo "#                                                                                                               #"
echo "# Ex: /bin/bash discovery.itservices.sh SLAMONDAY ID    DAYS                                                    #"
echo "# Ex: /bin/bash discovery.itservices.sh TIMEPRMONDAY   ID DAYS                                                  #"
echo "# Ex: /bin/bash discovery.itservices.sh TIMEOKMONDAY   ID DAYS                                                  #"
echo "# Ex: /bin/bash discovery.itservices.sh DOWNTIMEMONDAY ID DAYS                                                  #"
echo "#                                                                                                               #"
echo "# Ex: /bin/bash discovery.itservices.sh SLAMONTH ID    DAYS                                                     #"
echo "# Ex: /bin/bash discovery.itservices.sh TIMEPRMONTH   ID DAYS                                                   #"
echo "# Ex: /bin/bash discovery.itservices.sh TIMEOKMONTH   ID DAYS                                                   #"
echo "# Ex: /bin/bash discovery.itservices.sh DOWNTIMEMONTH ID DAYS                                                   #"
echo "#                                                                                                               #"
echo "-----------------------------------------------------------------------------------------------------------------"
echo "-------------------------------------------------- DESCRIPTION --------------------------------------------------"
echo " # ID: serviceid of the SLA consulted. (ex: 33)                                                                  "
echo " # DAYS: number of days filtered in the SLA consulted. (ex: 7 ou 15)                                             "
echo "-----------------------------------------------------------------------------------------------------------------"
exit ;;
esac
# END SCRIPT ###########################################################################
