#!/bin/bash

ts=$(date +%F)

while :
do
read -p "Enter your username to lock & backup: " user

if [ -z $user ]
then
	echo "User name is not provided"
else
	if id $user &> /dev/null
	then
		passwd -l $user
		homeDir=$(grep ^${user}: /etc/passwd | cut -f 6 -d ":")
		echo $homeDir
		if [ -d $homeDir ]
		then
			echo "home dir exist."
			tar -cf ${user}.${ts}.tar $homeDir
		fi
		exit 0

	else
		echo "User does not exist in this system."
	fi
fi
done
