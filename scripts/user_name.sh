lw() {
	name=$1
	echo "I am ${name}"
}

myuser(){
	cat /etc/passwd | grep ${1} | cut -d ":" -f1
}

mynettest(){
	ping -c 1 www.google.com &> /dev/null
	[ $? == 0 ] && echo "net connected." || echo "issue in net."

}
