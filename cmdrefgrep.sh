#!/bin/sh
#
## How to use
# ./grep_cmdref.sh useradd
#

if [ -z "$1" ]; then
    echo "Error:  argument \$1 is null."
    exit 1
fi

SCRIPT_DIR=$(cd $(dirname $0) ; pwd)

echo "# grep -r -i $1 ${SCRIPT_DIR}"
grep -r -i $1 ${SCRIPT_DIR}  |grep -Ev "\.git|README.md|cmdref*.sh" |awk -F: '{print $1, "\t", $2}'
