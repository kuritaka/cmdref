#!/bin/bash
#Ref:
# https://cmdref.net/os/linux/command/traceroute
exit

traceroute -n 192.168.0.10     #Do not resolve IP addresses to their domain names

traceroute -T -p 80 192.168.0.10   # (-T = TCP)

traceroute -U -p 53 192.168.0.10   # DNS (-U = UDP)

