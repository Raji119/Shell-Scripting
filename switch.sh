#!/bin/bash

while true
do
 echo "1.ls \n2.pwd \n3.Script Name \n4.exit"
 read -p "Enter Your Choice:" ch
 case $ch in
  1)ls;;
  2)pwd;;
  3)echo $0;;
  4)exit;;
  5)echo "Invalid Input"
 esac
done  
