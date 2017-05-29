#!/usr/local/bin/bash

declare -a colors

echo "Your favourite color separeted by space: "
read -a colors # -a assigns the inputs as elements in an array

count=${#colors[@]}


i=0
while [[ "$i" -lt "$count" ]]; do
  echo "${colors[$i]}"
  (( i++ ))
done

echo ${colors[*]}

unset colors[2] #this will delete the third element of the array
echo ${colors[*]}

unset colors
echo "No colors to show. Colores were gone"
echo ${colors[*]}
