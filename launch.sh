#!/bin/sh
source $HOME/.bash_profile
cd /home/ben/brat/
CWD="$(pwd)"
echo $CWD


ps auxw | grep standalone.py | grep -v grep > /dev/null 2>&1

if [ $? != 0 ]
then 
	/usr/bin/python3.6 standalone.py &
	echo launching server
else
	echo server is up
fi
