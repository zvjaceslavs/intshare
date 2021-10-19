#!/bin/bash
#
#The script checks a web site and count the key word/show lines with the key work
# Usage:
#  ./web_check.sh 'https://64.233.165.99/' 'Google' wc "Host:www.google.com"
#  ./web_check.sh 'https://64.233.165.99/' 'Google' tail "Host:www.google.com"
# or
#  ./web_check.sh 'https://ya.ru/' 'yandex' wc
#  ./web_check.sh 'https://ya.ru/' 'yandex' tail
# tail - show lines with keyword
# wc - count number of keyword

URL=$1
WORD=$2
OPTION=$3
HEADER=$4
BROWSER1='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36 OPR/66.0.3515.44'
BROWSER2='Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0'
BROWSER3='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'
RANDOMN=`echo $(( ( RANDOM % 3 )  + 1 ))`
BROWSER="BROWSER$RANDOMN"
CURL_OPTIONS="-k -s -L -A"

if [[ $# -lt 3 ]] ; then
  echo "Usage: $0 <url> <keyword> <option> [<header>]"
  echo
  echo "Example: $0 'https://www.google.com/' 'google' wc"
  exit 0
fi

if [[ $OPTION = "wc" ]]
then
    OPTION="wc -l"
elif [[ $OPTION = "tail" ]]
then
    OPTION="tail -n 3"
else
    echo "Option is wrong. Use either 'wc' or 'tail'"
    exit 1
fi

if [[ -n $HEADER ]];
then
    curl $CURL_OPTIONS "${!BROWSER}" -H "$HEADER" -L $URL | grep $WORD | $OPTION
else
    curl $CURL_OPTIONS "${!BROWSER}" $URL | grep $WORD | $OPTION
fi

