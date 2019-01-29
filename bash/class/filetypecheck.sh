#!/bin/bash
FILE=${1:? Please Provide a paramter}
if
	[ ! -e "$FILE" ] ; then
	echo "$FILE does not exist" ; exit 1
elif
	[ -d "$FILE" ] ; then
	echo "$FILE is a directory " ; exit 1
else 
	echo "$FILE exist and is a a valid file"
fi

cat $FILE 	
