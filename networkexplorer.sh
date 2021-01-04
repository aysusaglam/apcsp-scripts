#!/bin/bash



echo "My IP address is:"


hostname -I
 
  echo "MAC/HW address is:"

  cat /proc/net/arp

check_ping()

{

  ping $1 -c1 &> /dev/null

if [ $? -eq 0 ] ; then

{

  echo IP address $i is up.

 
  echo "Hostname is (if found):"

   host $i

 

  echo "Open ports for" $i

  nc -zv -w 1 $i 22

  nc -zv -w 1 $i 80




}

 fi

}
 

for i in 178.128.10.{1..255}

do

check_ping $i

done 

  
