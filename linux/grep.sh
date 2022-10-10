#!/bin/bash
# Ref: https://cmdref.net/os/linux/command/grep.html
exit

grep -Ev "^#|^$" /etc/ssh/sshd_config


grep -Ev "^*#|^$" /etc/httpd/conf/httpd.conf
grep -Ev "^$|^#|^\s*#"  /etc/httpd/conf/httpd.conf
grep -Ev '^[ ^t]*#|^$'  /etc/httpd/conf/httpd.conf


#-------------------------------------------------------
#Print file name and contents
#-------------------------------------------------------
grep . ifcfg-*
grep "" ifcfg-*
grep -H . ifcfg-*


#-------------------------------------------------------
#-r : recursive
#-------------------------------------------------------
grep -r final  dir
grep -r hogehoge /var/www/html
grep -r hogehoge --include="*.html" /var/www/htm


#-------------------------------------------------------
# After, Before contents
#-------------------------------------------------------
grep -A 2 aaa test.txt  #After
grep -B 2 aaa test.txt  #Before
grep -2 aaa test.txt    #After and Before


