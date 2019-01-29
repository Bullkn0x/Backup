#!/bin/bash

NUM=1
MAX=10000

while [[ NUM -lt MAX ]]
do
	echo $NUM
	NUM=$(( $NUM + $NUM ))
done
