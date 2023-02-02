#!/bin/bash

name="nishant"
phone=1111
age=12

#read -p "Enter your choice: " ch
#echo $ch

myusgae(){
echo "Usage: [-p value] [-c value] -n -a"
exit 1
}

while getopts "np:a" ch
do
	case $ch in 
		n) echo $name;;
		p) echo $OPTARG;; #echo $phone;;
		a) echo $age;;
		*) echo "I don't know.";;
	esac
done
