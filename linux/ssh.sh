#!/bin/bash
# cheat sheet for ssh
exit

ssh x.x.x.x  hostname

ssh -i ./ssh/xxxxx.pub   user@x.x.x.x





########################################################
# Hwo to create SSH Key
########################################################
ssh-keygen -t rsa -C "comment"     # RSA (ssh version2) : Recommend Key


cd              # change home directory
chmod 700 .ssh
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
rm ~/.ssh/id_rsa.pub



########################################################
#
########################################################
#User
ssh -n xx.xx.xx.xx sudo /usr/sbin/userdel -r test1
ssh -n xx.xx.xx.xx sudo "bash -c 'userdel -r test1; userdel -r test2; userdel -r test3'"



H="192.168.0.1 192.168.0.2"
for i in $H ; do ssh -n $i "hostname" ; done
for i in $H ; do ssh -n $i "netstat -rn |grep 0.0.0.0" ; done
for i in $H ; do ssh -n $i "hostname ; sudo su - -c '/etc/init.d/ntpd restart ; /etc/init.d/ntpd status'" ; done


