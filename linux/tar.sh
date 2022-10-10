#!/bin/bash
# Ref:
# https://cmdref.net/os/linux/command/tar.html
exit




#=============================================
#tar.gz  tgz
#=============================================
## Create
tar zcvf test.tar.gz DIR1 DIR2
tar zcvf testdir_back.tar.gz -C /etc testdir

## Test
tar ztvf test.tar.gz
zcat FILE.tar.gz | tar tvf -

## eXtract
tar zxvf test.tar.gz
tar zxvf user01.tar.gz  -C /home
tar --no-same-owner zxvf test.tar.gz   # with root user owner



#=============================================
#tar.bz2 tbz2
#=============================================
## Create
tar jcvf test.tar.bz2 DIR1 DIR2

## Test
tar jtvf test.tar.bz2   # test

## eXtract
tar jxvf test.tar.bz2
