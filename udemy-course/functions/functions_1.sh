#!/bin/bash
#Write a shell script that consists of a function that displays the number of files in a
#directory accepted as an argument to the function. Next have the function display the name of the directory followed by a colon.
#Finally, display the number of files to the screen on the next line. Call the function three times.
#First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.

file_count(){
	local DIR=$1
	NUMBER_OF_FILES=$(ls $DIR | wc -l)
	echo "${DIR}:"
	echo "$NUMBER_OF_FILES"


}
file_count /etc
file_count /var
file_count /usr/bin