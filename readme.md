script for raspberry pi to get basic info from the system. 

Will add more features/make it look nicer later on. 

Right now, it scans the system for a snapshot of:
* CPU usage
* RAM usage
* temperature
* network info

The output should look like:
 
PI-INFO:
********************
CPU: 1% used

RAM: Total: 184MB Used: 163MB Free: 21MB

temp=44.4'C

eth0       

KB/s in  KB/s out

1.97      5.08

Dependencies: 
bc, ifstat

Get them using:

sudo apt-get install bc ifstat

Also make sure you system is up to date or you might bet an error with the temperature. Just do:

sudo apt-get upgrade