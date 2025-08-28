#!/bin/bash

# An unsorted list is passed to the script. Write a program that will output the sum of even numbers

IFS=',' read -r -a array <<< "$1"

len=${#array[@]}
i=0
sum=0
while [ $i -lt $len ]; do
	if (( ${array[$i]} % 2 == 0 )); then
		(( sum += ${array[$i]} ))
	fi
	((i++))
done

echo "$sum"
