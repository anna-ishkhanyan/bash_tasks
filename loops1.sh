#!/bin/bash

# Develop a script that takes a string as an argument and returns its reverse version, changing uppercase letters to lowercase and back

str="$1"
len=${#str}

for (( i = len - 1; i >= 0; i-- )); do
    char="${str:$i:1}"

    if [[ "$char" =~ [A-Z] ]]; then
        echo -n "${char,,}"
    elif [[ "$char" =~ [a-z] ]]; then
        echo -n "${char^^}"
    else
        echo -n "$char"
    fi
done

echo
