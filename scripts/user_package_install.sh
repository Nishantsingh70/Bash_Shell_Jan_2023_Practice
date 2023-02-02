UID1=$(id -u)

if [ $UID1 -eq 0 ]
then
	echo "We can install any packages."
	read -p "Enter your package name: " pack
	if rpm -q $pack &> /dev/null
	then
		echo "$pack already installed."
	elif yum install $pack -y &> /dev/null
	then
		echo "$pack installed successfully."
	else
		tput setaf 1
		echo "$pack not installed."
		tput setaf 7
	fi
else
	echo "We can't install any packages."
fi
