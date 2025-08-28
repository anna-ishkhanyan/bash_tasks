#!/bin/bash

#Develop a script that takes the temperature value in Celsius OR Kelvins and returns the inverse value.

str="$1"
len=${#str}
num=""
i=0

while [[ $i -lt $len && ${str:i:1} =~ [0-9] ]]; do
    num="${num}${str:i:1}"
    ((i++))
done

char="${str:i:1}"

if [[ "$char" == "K" ]]; then
    echo "$((num - 273))C"
else
   echo "$((num + 273))K"
fi
