#!/bin/bash

read -p "Enter a Number:" num

if [ $num -eq 5 ]
then
 echo "You choose right"
elif [ $num -lt 5 ]
then
 echo "Too Small"
else
 echo "Too Large"
fi


