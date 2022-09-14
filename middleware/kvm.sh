#!/bin/sh
#Ref:
# https://cmdref.net/middleware/virtualization/kvm/index.html
exit

virsh list --all
virsh list --autostart

virsh console GUEST


# Start/Stop KVM
virsh start GUEST


virsh autostart GUEST
virsh autostart --disable GUEST

virsh shutdown GUEST
virsh destroy GUEST


# Define/Undefine KVM
virsh define xxxxx.xml

virsh undefine SERVER  #virsh undefine will delete XML configuration file.



#=========================
#KVM Networking
#=========================
brctl show


