#!/bin/bash
# Ref:
# https://cmdref.net/middleware/virtualization/xen/index.html
exit


xm list

xm console GEST_NAME   # ctrl + ] : cancel console


xm create CONFIG
xm shutdown SERVER
xm destroy SERVER


#
brctl show



