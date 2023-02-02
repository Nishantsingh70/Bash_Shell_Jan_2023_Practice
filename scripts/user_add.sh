#!/bin/bash

#user=$@

#for i in $@
#for i in $(cat user.db)
#do
#if useradd $i
#then
#echo "$i user added successfully"
#fi
#done;

for i in $(cat user.db)
do
	if id $i &> /dev/null
	then
		echo "$i user is already exist in system."
	else
		if useradd $i
		then
			echo "$i user added successfully in system."
		else
			echo "$i user creation failed"
		fi
	fi
done
