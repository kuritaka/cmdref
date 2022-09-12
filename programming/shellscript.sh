#!/bin/bash
#
#Ref:
#https://cmdref.net/programming/shell/index.html
#

cd `dirname $0`
pwd


TDAY=$(date +"%Y%m%d")
YEAR=$(date +"%Y")
BDATE=$(date --date '1day ago' +"%Y%m%d")

echo "TDAY: $TDAY"
echo "YEAR: $YEAR"
echo "BDATE: $BDATE"


DIR="/tmp/test-directory"
[ -d "$DIR" ] || echo "mkdir $DIR"



check_user(){
if [ "$(whoami)" != "root" ]; then
    echo "please change user from $(whoami) to root"
    exit 1
fi

}

check_hostname(){
  echo "Host: $(hostname)"
}


check_here(){

OUT="/tmp/out_${TDAY}.txt"

cat << OUT > $OUT
$(hostname)

OUT

}


#check_user
check_hostname
check_here