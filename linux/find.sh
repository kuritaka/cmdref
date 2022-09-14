#!/bin/bash
#Ref:
#https://cmdref.net/os/linux/command/index.html

find /dir -type f -name "*.log*" -mtime +7 -exec rm -rf {} \; #"-mtime +7" is 7 days ago


find /testdir -mtime -5 -ls  #find recently change files
