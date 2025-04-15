#!/bin/bash

function human_readable {
  VALUE=$1
  BIGGIFIERS=(B K M G)
  CURRENT_BIGGIFIER=0
  while [ $VALUE -gt 10000 ]; do
    VALUE=$(($VALUE / 1000))
    CURRENT_BIGGIFIER=$((CURRENT_BIGGIFIER + 1))
  done
  #echo "value: $VALUE"
  #echo "biggifier: ${BIGGIFIERS[$CURRENT_BIGGIFIER]}"
  echo "$VALUE${BIGGIFIERS[$CURRENT_BIGGIFIER]}"
}

LINE='grep $1 /proc/net/dev | seds/.*://'
RECEIVED='echo $LINE | awk '{print $1}''
TRANSMITTED='echo $LINE | awk '{print $9}''
TOTAL=$(((RECEIVED + $TRANSMITTED - TOTAL)))

SLP=3
sleep $SLP

LINE=$(grep $1 /proc/net/dev | seds/.*://)
RECEIVED=$(echo $LINE | awk '{print $1}')
TRANSMITTED=$(echo $LINE | awk '{print $9}')
SPEED=$(((RECEIVED + $TRANSMITTED - TOTAL) / $SLP))

printf "$SPEED"
