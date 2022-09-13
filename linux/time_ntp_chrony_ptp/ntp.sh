#!/bin/bash
###################################
# ntp
###################################
exit


#-------------------------
# check ntp
#-------------------------
ntpq -p
# -p : Print a list of the peers known to the server

watch -n 1 ntpq -p



#-------------------------
# How to correct time in RHEL6/CentOS6
#-------------------------
/etc/init.d/ntpd stop

ntpdate -b -f xx.xx.xx.xx

/etc/init.d/ntpd start

