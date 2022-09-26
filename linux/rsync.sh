#!/bin/bash
# rsync cheat sheet
# Ref:
# https://cmdref.net/os/linux/command/index.html#user
exit


#-------------------------------------------------
#Local
#-------------------------------------------------
rsync -avzh --stats --delete /home/user1/ /tmp/user1.bk/ #rsync "/" is very important.


#-------------------------------------------------
#Remote
#-------------------------------------------------
rsync -e ssh -avzh --stats --delete /home/user1/ user2@192.168.0.2:/home/backup/server1/home/user1/

rsync -e "ssh -i /home/user1/.ssh/nopass" -avzh --stats --delete /home/user1/ user1@192.168.0.2:/home/user1/backup/server1/home/user1/


#-------------------------------------------------
#Speed
#-------------------------------------------------
rsync -e ssh -avzh --stats –-bwlimit=1250 FILE user@192.168.0.2:/DIR/ # 1Mbps = 125KBps
#--bwlimit=12500   # 100Mbps = 12500KBps = 12.5MB/s
#--bwlimit=1250   # 10Mbps = 1250KBps = 1.25MB/s
#--bwlimit=125    # 1Mbps = 125KBps
#--bwlimit=62   # 500kbps = 62.5KBps



#-------------------------------------------------
#Wild card with rsync
#-------------------------------------------------
rsync -avzh --stats --include='*.log' --exclude='*' srcdir/ dstdir/

rsync -avzh --stats --exclude='*.gz' srcdir/ dstdir/
rsync -avzh --stats --exclude='.*' srcdir/ dstdir/
