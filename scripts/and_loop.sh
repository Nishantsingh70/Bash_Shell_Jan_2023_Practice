#!/bin/bash

read  a
read  b
read  c
read  d

if [ $a -eq "0" -a $b -eq "0" -a $c -eq "0" -a $d -eq "0" ]; then
echo "We are fine"
else
echo "We are not fine"
fi
