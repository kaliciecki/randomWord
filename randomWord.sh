#!/bin/bash

#Create a script which will print a random word from file provided as first argument.
#If no file is provided, use a file containing a list of words on your system (usually /usr/share/dict/words or /usr/dict/words).

#File path:
file=/usr/share/dict/words

#Command to pickup random word


if [ ! -z "$1" ]
	then
		getRandomWord=$( shuf -n 1 $1 )
else
		getRandomWord=$( shuf -n 1 $file )
fi
			

echo $getRandomWord 
