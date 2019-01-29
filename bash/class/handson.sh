#!/bin/bash

FILE=${1:?Please provide a file to analyze}
while read -r LINE
do
	if [ ! -f "$LINE" ] ; then 
	echo "test" > $LINE.txt
	fi
	
done < "$FILE"
