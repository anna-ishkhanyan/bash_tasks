#!/bin/bash

# Develop a script that takes a number
# as an argument and creates these folders in the current directory 
# with the following naming convention: folder_<[a-z]>.

letters=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

num="$1"
created=()

for (( i=0; i<num; i++ )); do
  foldername="folder_${letters[i]}"
  mkdir -p "$foldername"
  created+=("$foldername")
done

if [ $num -eq 1 ]; then
	echo "1 folder created:"	
else
	 echo "$num folders created:"
fi

IFS=", "
echo "${created[*]}"
