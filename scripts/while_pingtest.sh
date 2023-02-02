while :
do
	echo -n "."
	sleep 1

	if ! ping -c 1 8.8.8.8 > /dev/null
	then
		echo "I am down"
	fi
done
