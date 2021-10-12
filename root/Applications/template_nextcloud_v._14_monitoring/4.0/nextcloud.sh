#!/bin/bash

#### Define the variables passed from command line ####
USER=$1
PASSWORD=$2
NEXTCLOUDIP=$3
METHOD=$4

### check the type of metrics to get ####

#### get the enabled applications ####
if [[ $METHOD == 'enapps' ]]; then
        CALL=$(curl -s -L -u $1:$2 -X GET 'http://'$3'/ocs/v1.php/cloud/apps?filter=enabled' -H "OCS-APIRequest: true" |  egrep '<element>')
        MACRO="APP"
	COUNT=$(echo $CALL| xargs -n1 | wc -l)

#### get the users ####
elif [[ $METHOD == 'users' ]]; then
        CALL=$(curl -s -L -u $1:$2 -X GET 'http://'$3'/ocs/v1.php/cloud/users' -H "OCS-APIRequest: true" |  egrep '<element>')
        MACRO="USERNAME"
	COUNT=$(echo $CALL| xargs -n1 | wc -l)

fi;

### dirty approach to print json ####

printf "{\"data\":[\n"
echo $CALL | xargs -n1 | cut -d'>' -f2- | cut -d'<' -f1 | while read line; do \
        if [[ $COUNT > 1 ]];then
                printf "{\"{#$MACRO}\":\"$line\"},\n"
                COUNT=$(( COUNT - 1))
        elif [[ $COUNT = 1 ]]; then
                printf "{\"{#$MACRO}\":\"$line\"}\n"
fi;
done
printf "]}\n"
