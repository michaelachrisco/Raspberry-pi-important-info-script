#!/bin/bash
#Michael Chrisco
#GPL
#dependency: bc, ifstat
#sudo apt-get install bc ifstat

echo "PI-INFO:"
echo "********************"
#get total idle time and convert into all CPU usage
ID=`top -b -d 1 -n 1 | grep Cpu | cut -c 37-40`
echo CPU: $((${ID/.*}*-1+100))% used
#Get Ram usage from free and calculate how much used and how much is available
RAM=`free -m | grep Mem| awk {'print "Total: "$2"MB " " Used: "$3"MB" " Free: "$4 "MB"'}`;
echo RAM: $RAM
#temp
echo `vcgencmd measure_temp`
#network
echo Snapshot of Network
ifstat .1 1

#exact temperature
#exact answer
#temperature_exact=`cat /sys/class/thermal/thermal_zone0/temp`
#C into F
#Ctemp=`vcgencmd measure_temp| egrep "[0-9.]{4,}" -o`
#echo $temperature_exact milli-degrees_C
#echo  "(($Ctemp*9)/5)+32" | bc

exit 1
