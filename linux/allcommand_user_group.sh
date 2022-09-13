#!/bin/bash
exit
##################################
#
##################################
#Ref:
# https://cmdref.net/os/linux/command/index.html#user_administration


#----------------------------
# useradd
#----------------------------
ueradd USER1

useradd -u UID -g GROUP -G GROUP1,GROUP2 -s /bin/bash -d HOME_DIR LOGIN


#How to create Adminuser on RHEL
useradd -G wheel USER1

#How to create Adminiuser on Ubuntu
useradd -m -s /bin/bash -G sudo USER2


#----------------------------
# passwd
#----------------------------
passwd
passwd user1
echo "password01" | passwd --stdin user01
passwd -S user1 # check about the status of the password
passwd -l user01 #  Lock the user
passwd -u user01 # Unlock
passwd -d user01 # delete password

#----------------------------
# chpasswd
#----------------------------
echo user01:password | chpasswd
echo 'USER:PASS' > tmp.txt ; chpasswd < tmp.txt ; rm -f tmp.txt



#----------------------------
# usermod
#----------------------------
#Group
usermod -g GROUP USER
usermod -g GROUP -G SUBGROUP USER
usermod -G SUBGROUP USER
usermod -aG SUBGROUP USER # add Group
usermod -G SUBGROUP1,SUBGROUP2 USER
usermod -G "" USER

usermod -l USER_NAME_NEW USERNAME_OLD # change username
usermod -d HOME_DIR_NEW USER_NAME # change home directory
usermod -u UID USER # change UID


#----------------------------
# chage
#----------------------------
chage -l USER # check
chage -M 90 USER # the password expires day set 90days


#----------------------------
# groupadd
#----------------------------
groupadd -g GID GROUP
groupadd -g 1100 dev













