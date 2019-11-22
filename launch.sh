#!/bin/sh

ps auxw | grep standalone.py | grep -v grap > /dev/null

if [ $? != 0 ]
then 
	python3.6 standalone.py > output.txt
fi
