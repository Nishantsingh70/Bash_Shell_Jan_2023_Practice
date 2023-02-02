#!/bin/bash

read  a
read  b
read  c
read  d

if [ $a -eq "0" -o $b -eq "0" -o $c -eq "0" -o $d -eq "0" ]; then
echo "We are fine"
else
echo "We are not fine"
fi
