#!/bin/bash


### Method 1
# rm -rf cmdref
# git clone https://github.com/kuritaka/cmdref
# chmod 755 cmdref/*.sh

### Method 2
# git pull


### Method 3
git fetch origin main
git reset --hard origin/main
chmod 755 *.sh

