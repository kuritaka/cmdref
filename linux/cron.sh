#!/bin/bash
#Ref:
#https://cmdref.net/os/linux/cron/index.html


#========================================
# /var/spool/cron/USER
#========================================

crontab -l          #List
crontab -u USER -l

crontab -e          #Edit

crontab -r          #Remove


#Format
# 1.minute  2.hour  3.dom  4.month 5.weekday   command
0 * * *  * /home/shell/test.sh >/var/log/cron_root/test.log 2>&1
* * * *  * /home/shell/test.sh 1>/dev/null 2>/dev/null
0/10 * * *  * /home/shell/test.sh >/var/log/test.log 2>>/var/log/cron_root/test_error.log
0 12 * * * /home/shell/sample1.sh > /dev/null 2>&1        # 12:00 Everyday
0 4 * * 0,1,2 /home/shell/sample2.sh  > /dev/null 2>&1       # 4:00 Sunday, Monday, Tuesday
0 7 * * 1-5 /home/shell/sample3.sh  > /dev/null 2>&1   # Monday - Friday

1 8,17 * * * * /home/shell/test1.sh >> /var/log/test-`date +\%Y\%m\%d-\%H\%M`.log 2>&1

#========================================
#/etc/cron.d/FILE
#========================================


#========================================
#/etc/crontab
#========================================
