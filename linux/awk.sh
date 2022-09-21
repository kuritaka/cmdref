#!/bin/bash
# awk cheat sheet
# Ref: https://cmdref.net/os/linux/command/awk.html

exit



echo "1 2 3 4 5" | awk '{ print $1 "," $3 }'

echo "1 2 : 3 4 : 5" | awk -F: '{ print $2 }'


#--------------------------------------------------
#example
#--------------------------------------------------
echo "1 2 3 4 5" | awk '{ print $1 "," $3 }'
1,3

echo "1 2 3 4 5" | awk '{print $1 "        " $4 }'
1        4

echo "1 2 3 4 5" | awk '{print $1 "\t" $4 }'
1       4




