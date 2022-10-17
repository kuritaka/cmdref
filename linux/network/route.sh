#!/bin/bash
#Ref:
# https://cmdref.net/os/linux/command/route.html
exit


route  # show the IP routing table
route -n # show the IP routing table



route add -net 192.168.10.0 netmask 255.255.255.0 gw 10.80.0.1
route add -host 192.168.0.100 gw 192.168.1.100
route add default gw 192.168.0.1




route del -net 192.168.10.0 netmask 255.255.255.0
route del -host 192.168.0.100
route del default

route del -host 192.168.0.100 gw 192.168.0.1
route del default gw 192.168.0.1


