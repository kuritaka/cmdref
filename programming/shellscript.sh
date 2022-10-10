#!/bin/bash
#
#Ref:
#https://cmdref.net/programming/shell/index.html
#

cd `dirname $0`
pwd

SCRIPT_DIR=$(cd $(dirname $0) ; pwd)
echo "\$SCRIPT_DIR = $SCRIPT_DIR"


TDAY=$(date +"%Y%m%d")
YEAR=$(date +"%Y")
BDATE=$(date --date '1day ago' +"%Y%m%d")

echo "TDAY: $TDAY"
echo "YEAR: $YEAR"
echo "BDATE: $BDATE"


DIR="/tmp/test-directory"
[ -d "$DIR" ] || echo "mkdir $DIR"

check_arg(){
if [ -z "$1" ]; then
    echo "Error:  argument \$1 is null"
    #exit 1
fi
}

check_user(){
if [ "$(whoami)" != "root" ]; then
    echo "please change user from $(whoami) to root"
    exit 1
fi

}

check_hostname(){
  echo "Host: $(hostname)"
}


check_heredocument(){

OUT="/tmp/out_${TDAY}.txt"

cat << OUT > $OUT
$(hostname)

OUT

}


test_expr(){

i=2
v1=$(( (i + 1) * 5 ))    #recommend
v2=$(expr \( $i + 1 \) \* 5)

echo "'\$(( (i + 1) * 5 )) ' = $v1"
echo "'\$(expr \( $i + 1 \) \* 5)' = $v2"
}


#check_user
check_arg
check_hostname
check_heredocument
test_expr
