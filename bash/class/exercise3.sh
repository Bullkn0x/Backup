#!/bin/bash
echo "what yo gender be yo, m or f?"

myName=${1:?didnt enter name}
myAge=26
myHeight=6
myEyeColor="Green"
myHairColor=
read myGender
combo=$[myHeight + myAge]

echo $combo
if [ $myGender = "m" ] ; then
	echo "$combo Let's talk about $myName. He is  $myAge. He's $myHeight tall."
elif [ $myGender = "f" ] ; then
	echo "Let's talk about $myName. She is  $myAge. She's $myHeight tall."
else
	echo "Let's talk about $myName. They are  $myAge. They $myHeight tall."
fi
