#!/bin/bash

if [ $1 ]
then
	FILE=$1
else
	FILE="file1"
fi
cat $FILE
