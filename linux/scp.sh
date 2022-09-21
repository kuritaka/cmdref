#!/bin/bash
# scp Cheat Sheat
# Ref:
# https://cmdref.net/os/linux/command/scp.html

exit

scp test.tar.gz   user1@192.168.0.10:/tmp

scp -rp /tmp/test1/     user1@192.168.0.10:/tmp/test2/


#scp speed
scp -l 100000  test.tar.gz   user1@192.168.0.10:/tmp    #100Mbps, 12MB/s


#scp -l 10000	    10,000 Kbit/s (10Mbps)	        1.2MB/s
#scp -l 100000	    100,000 Kbit/s (100Mbps)	    12MB/s
#scp -l 1000000	    1,000,000 Kbit/s (1000Mbps)	    120MB/s

