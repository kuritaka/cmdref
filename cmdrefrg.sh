#!/bin/sh
## How to use
# ./cmdrefrg.sh useradd
#

which rg > /dev/null
if [ $? -ne 0 ]; then
    echo "Error: rg(ripgrep) command don't find."
    exit 1
fi

if [ -z "$1" ]; then
    echo "Error:  argument \$1 is null."
    exit 1
fi


SCRIPT_DIR=$(cd $(dirname $0) ; pwd)

echo "# rg -i  $1 ${SCRIPT_DIR}"
rg -i  -g '!.git' -g '!README.md' -g '!cmdref*.sh' ${1} ${SCRIPT_DIR}
