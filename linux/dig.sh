#!/bin/bash

# Ref:
# https://cmdref.net/os/linux/command/dig.html

exit

#===========================================
#Cheat Sheet
#===========================================
#help
dig -h
dig [@global-server] [domain] [q-type]
dig @8.8.8.8 google.com any
dig @8.8.8.8 -x 74.125.235.101
dig google.com mx
dig +trace google.com
dig +trace -x 173.252.120.6

dig google.com soa
dig google.com txt


#===========================================
#Example
#===========================================

