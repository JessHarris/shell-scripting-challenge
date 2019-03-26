#!/bin/bash
#This script does alot of random stuff
#Udemy course practice solutions

#Exercise1&2:Write a shell script that prints "Shell Scripting is Fun!" to the screen. 
#Modify the shell script from exercise 1 to include a variable.

MESSAGE="Shell Scripting is Fun"
echo "$MESSAGE"

#Exercise3:Store the output of the command "hostname" in a variable. Display "This script is running on
#_______." where "_______" is the output of the "hostname" command.

HOSTNAME=$(hostname)
echo "This script is running on : ${HOSTNAME}"

#Exercise4:Write a shell script to check to see if the file "/etc/shadow" exists. If it does exist, display
#"Shadow passwords are enabled." Next, check to see if you can write to the file. If you can,
#display "You have permissions to edit /etc/shadow." If you cannot, display "You do NOT have
#permissions to edit /etc/shadow."

if [ -e /etc/shadow ]
then 
	echo "Shadow passwords are enabled"
	if [ -w /etc/shadow ]
	then
		echo "You have permissions to edit /etc/shadow"
	else
		echo "You do not have permissions to edit /etc/shadow"
	fi
else
	echo "File does not exist"
fi

#Exercise5: Write a shell script that displays "man", "bear", "pig", "dog", "cat", and sheep to the screen with
each appearing on a separate line.

LIST="man bear pig dog cat"

for animal in "$LIST"
do
	echo "$animal"
done

#Exercise6:Write a shell script that prompts the user for a name of a file or directory and reports if it is a
#regular file, a directory, or other type of file.

read -p "Please enter file path" PATH

if [ -f $PATH ]
	then 
		echo "this exists and is regular file"
elif [ -d $PATH ]
	then
		echo "this is a directory"
else 
	echo "this is something else other than file or directory"
fi

#Exercise8:Modify the previous script to accept an unlimited number of files and directories as arguments.

for ITEM in $@
do
	if [ -f $ITEM ]
		then 
			echo "this exists and is regular file"
	elif [ -d $ITEM ]
		then
			echo "this is a directory"
	else 
		echo "this is something else other than file or directory"
	fi
done
