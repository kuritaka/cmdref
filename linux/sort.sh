#!/bin/bash
#Ref:
#https://cmdref.net/os/linux/command/sort.html
exit

sort -k 2 -t ":" test.txt

sort -k 2,3 -t ":" test.txt

sort -k 2 -t ":" -n test.txt    #-n = --numeric-sort

sort -k 2,3 -t ":" -n -r test.txt # -r = --reverse

