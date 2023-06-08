#!/bin/bash

read -p "Enter String1:" str1
read -p "Enter String2:" str2
if [ $str1 = $str2 ]
then
 echo "$str1 = $str2"
elif [ $str1\<$str2 ]
then
 echo "$str1 < $str2"
fi
