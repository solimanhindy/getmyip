#!/bin/bash

#Version 0.1
#Soliman Hindy <hindy@lovetux.net>

#This a script made to obtain my public IPv4 address
#This intended to be run on a user's crontab.

MADATE=$(date +%F)
OUTPUT=${HOME}/log
SITE="ifconfig.co"
CURL="/usr/bin/curl"
CURL_OPTS="-s -4"

if [ ! -d "${OUTPUT}" ]; then
   echo "Please create ${OUTPUT} directory with mkdir -p ${OUTPUT}"
   exit 2
fi

${CURL} ${CURL_OPTS} ${SITE} -o ${OUTPUT}/${MADATE}-myip.txt
