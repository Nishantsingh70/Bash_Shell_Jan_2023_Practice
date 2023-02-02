#!/bin/bash
tput setaf 1
echo -e "\t\twelcome to server management"
tput setaf 7

myclear(){
echo -e "\n Ok bye see you next time..\n"
rm -f /tmp/password.txt
exit 1
}

trap myclear 2

echo "what do you want to perform? "
echo "Press 1: Strat chat.."
echo "Press 2: Manage your script from outside.."
echo "Press 3: Get other computer output: support team"

read -p "Enter your choice :" ch
echo $ch

if [ $ch -eq 1 ]
then
	read -p "Enter your port number: " port
	echo "start chating at ip $(hostname -i):$port  .."
	#nc -l $port

elif [ $ch -eq 2 ]
then
	read -p "Enter your password: " myp
	echo $myp > /tmp/password.txt
	echo "manage outside.."
	read -p "Enter your port number: " ip
	echo $ip
	cat /tmp/password.txt
	rm -f /tmp/password.txt

elif [ $ch -eq 3 ] 
then
	echo "support team"

exit 0
fi

