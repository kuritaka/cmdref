#!/bin/bash
# sed cheat sheet
# Ref: https://cmdref.net/os/linux/command/sed.html

exit

sed -e 's/xxx/XXX/g' input.txt > output.txt

sed -i "s/IPADDR=192.168.0.10/IPADDR=192.168.0.11/g" ifcfg-eth0

