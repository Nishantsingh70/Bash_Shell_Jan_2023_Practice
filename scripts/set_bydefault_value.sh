#!/bin/bash

echo -n "Enter your name: "
read myname

#x=${myname:-nishant}
#x=${myname:=nishant}
#x=${myname:+nishant}
x=${myname+singh}

echo "your name is ${x^}."
