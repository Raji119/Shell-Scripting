#!/bin/bash

read -p "Enter Directory Path:" path

if [ ! -d $path ]
then
 echo "Invalid Path"
else
 echo "The File Size greater than 40 Bytes are:"
 ls -sh | awk '{ if($1>40B) print $2,"\t:\t",$1}'
fi
