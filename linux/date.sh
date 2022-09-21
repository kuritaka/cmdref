#!/bin/bash
#Ref:
#https://cmdref.net/os/linux/command/date.html

exit



date --date '10day ago' +"%Y%m%d" #20061030

date +"%Y%m%d" #20061030
date +"%H:%M" #12:47

cp -p FILE FILE.`date +%Y%m%d`
cp -p FILE FILE.`date -d '1day ago' +%Y%m%d`


