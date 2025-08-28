#!/bin/bash

# Develop a pow() function that takes two arguments (a, b) and raises the first argument to the power of the second (a^b).

pow() {
        local a=$1
        local b=$2
        local res=1

        for (( i=0; i<b; i++)); do
                (( res *= a ))
        done

        echo $res
}

#Develop the shortest() function, which can take an unlimited number of arguments(strings) and output the shortest argument

shortest() {
    local str=("$@")
    local len=${#str[@]}
    local min=${#str[0]}

    for (( i=1; i<len; i++ )); do
        if [ ${#str[i]} -lt $min ]; then
            min=${#str[i]}
        fi
    done

    for s in "${str[@]}"; do
        if [ ${#s} -eq $min ]; then
            echo "$s"
        fi
    done
}

# Develop a print_log() function that takes a string as an argument and outputs the same string with the date at the beginning.

print_log() {
  local message="$1"
  local date_str
  date_str=$(date '+[%Y-%m-%d %H:%M]')
  echo "$date_str $message"
}
