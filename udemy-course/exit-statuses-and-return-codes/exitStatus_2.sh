#!/bin/bash
FILE=$1
if [ -f "$FILE" ]
	then
		echo "This is a file"
		exit 0
elif [ -d "$FILE" ]
	then
		echo "This is a directory"
		exit 1
else
	echo "This is not a regular file for directory"
	exit 2
fi

		
	
