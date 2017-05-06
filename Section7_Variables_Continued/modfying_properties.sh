#!/usr/local/bin/bash

x=8/2
echo "\$x = $x" #this will treat x as a string

declare -i x #declaring as an integer will let make some basic operations
x=8/2
echo "\$x = $x"

declare -a x=(9 8 7 4 1) #-a is declaring an array
for i in {0..4}
do
  echo "${x[$i]}"
  let "i+=1"
done

###### _ declaring a function _ #######
#declaring
declare -f someFuncion

#implementin the function
someFuncion(){
  echo "This is the function $FUNCNAME"
}

#calling the function
someFuncion

###### _ -x, to export the variable _ #######
#these variables are exportable outside of the script environment

declare -x var_x=10
echo "$var_x"
