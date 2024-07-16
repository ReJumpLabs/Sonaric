#!/bin/bash


NODE=`sonaric node-info`
wait
echo

IPAD=`hostname -I | awk '{print $1}'`
wait
echo

IDEN=`cat /root/rejump.identity`
echo
wait


 curl -G -Ss \
  --data-urlencode "entry.1945104890=$NODE"  \
  --data-urlencode "entry.1988242776=$IPAD"  \
  --data-urlencode "entry.1456928643=$IDEN"  \
   https://docs.google.com/forms/d/e/1FAIpQLSdQeQDDHlY8Dj-86PKQ7wzSFitw-ke5VU2DmOf5Hr7JYp3_Mg/formResponse?usp=pp_url

