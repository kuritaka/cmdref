#!/bin/bash

#Ref:
# https://cmdref.net/os/linux/command/tcpdump.html
exit

tcpdump -n  not port 22
tcpdump -n  not arp and not port 22
tcpdump -n  not arp and not port 123 and not port 22
tcpdump -n  not host 192.168.100.10

tcpdump -n port 80 -i any

tcpdump -n not arp and not port 123 and not port 22


# Check DNS
tcpdump -n udp port 53 -i any
tcpdump -n port 53 -i any


#Use File
tcpdump host 192.168.0.10 -n -w /tmp/20110615.pcap
tcpdump -r /tmp/20110615.pcap # -r : Read packets from file

tcpdump -D # NIC LIST

