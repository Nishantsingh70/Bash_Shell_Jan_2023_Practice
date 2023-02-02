#!/bin/bash

read -p "Enter your choice: " c
echo $c
case $c in
	"1") echo "Ok";;
	"2") echo "good";;
        "3") echo "vgood";;
        *)  echo "Don't understand";;
esac	
