start_page=1
page=$1
while [ $start_page -le $page ]
do
	echo $start_page is done.
	start_page=$(($start_page + 1))
done
