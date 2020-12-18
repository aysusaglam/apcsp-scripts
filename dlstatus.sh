#!/bin/bash
ROOMS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10  dl11"

for room in $ROOMS ; do

if ping -c 1 $room &> /dev/null
then
  echo "$room: alive"
else
  echo "$room: dead"
fi

done
exit 0
