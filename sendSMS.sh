#!/bin/bash

if [ $# -lt 2 ]
then
    echo "Use: sendSMS.sh [tel. nr] \"[message]\""
    exit 1
fi

NR=$1
MESSAGE=$2

curl -i \
-X POST \
-H "X-Version: 1" \
-H "Content-Type: application/json" \
-H "Authorization: bearer $CLIACKATELL_AUTH_TOKEN" \
-H "Accept: application/json" \
-d "{\"text\":\"$MESSAGE\",\"to\":[\"$NR\"]}" \
-s \
https://api.clickatell.com/rest/message

