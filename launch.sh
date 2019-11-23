#!/bin/sh

ps auxw | grep standalone.py | grep -v grep > /dev/null 2>&1

if [ $? != 0 ]
then 
	python3.6 standalone.py & > /dev/null
fi
