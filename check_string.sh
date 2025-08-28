#!/bin/bash

# Develop script that takes any string and calculate count of letters, numbers, symbols *!@#$%^&()_+ inside except whitespaces

str="$1"
len=${#str}
num=0
letter=0
sym=0
for (( i=0; i<len; i++ )); do
	char="${str:$i:1}"

	if [[ $char =~ [A-Z] || $char =~ [a-z] ]]; then
		(( letter++ ))
	elif [[ $char =~ [0-9] ]]; then
		(( num++ ))
	elif [[ "$char" =~ [\*\!\@\#\$\%\^\&\(\)\_\+] ]]; then
		(( sym++ ))
	fi
done

echo "Numbers: $num Symbols: $sym Letters: $letter"
