#!/bin/bash

if [ "$1" == "" ]; then
    echo "Usage: add-user.sh <USERNAME>"
    exit 1
fi

USER="$1"

read -s -p "Enter $USER's Password: " PASS
echo ""

wget --no-cookies \
     --no-check-certificate \
     --content-on-error \
     --method=PUT \
     --header="Content-Type: application/json" \
     --body-data="{\"_id\":\"org.couchdb.user:$USER\",\"name\":\"$USER\",\"type\":\"user\",\"roles\":[],\"password\":\"$PASS\"}" \
     -nv \
     -O - \
     127.0.0.1:5984/_users/org.couchdb.user:$USER

if [ "$?" == "0" ]; then
    echo "NOTE: add the user to a database"
fi