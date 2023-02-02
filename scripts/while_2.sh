x=1
while [ $x -le 5 ]
do
	if [ $x -eq 4 ]
	then
		break
	fi
	echo $x
	x=$(($x+1))
done
