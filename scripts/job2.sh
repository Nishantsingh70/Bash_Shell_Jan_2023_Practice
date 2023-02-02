i=0
while [ $i -le 10 ]
do
	echo "I am job2 $i.."
	i=$(($i+1))
	sleep 0.5
done

