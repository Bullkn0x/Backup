#!/bin/bash

FILE=${1:?Please provide a file to read}
while read -r  LINE
do
	if [ -f "$LINE" ] ; then
	echo "Working on $LINE ..."
	fi
done < "$FILE"
