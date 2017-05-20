#!/usr/local/bin/bash


# up=$'\x1b[A' #keycodes for buttons on the keyboard. This here is for the uparrow
# down=$'\x1b[B'
# left=$'\x1b[D'
# right=$'\x1b[C'
#
# # -s doesnt echo the input
# # -n3 accepts only and only 3 charachters for input. You can change to any charachters you want
# # -p. the input will be store to variable 'arrow'
# read -s -n3 -p "Press an arrow key: " arrow
#
# case "$arrow" in
#   $up) echo "You pressed up!";;
#   $down) echo "You pressed down!";;
#   $left) echo "You pressed left!";;
#   $right) echo "You pressed right!";;
# esac




# echo "Enter a string:"
# #read var #this will take a look at it and print it consedering backslashes. Ex: input test\\ will result at test\
# read -r var #this will read it the input as it is
# echo "$var"


#reading from a file

echo "Read"
while read line
do
  echo "$line"
done <wood.txt #this is a redirect
