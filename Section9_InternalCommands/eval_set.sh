#!/usr/local/bin/bash


# eval command combine all the arguments in an expressoin and evaluatue them. IT take this args into a stirng separetaed by spaces and eval them

if [ ! -z $1 ]
then
  process = "ps -e | grep $1"
fi

eval $process #takes the string to the variable process and perform it


## set commmand. - enables and + disables
# set changes the values of the variables in the shell

set +o history #disables
set -o history


echo "Before setting the parameters"

echo "\$1 = $1"
echo "\$2 = $2"

set `echo "three four"`

echo "After setting parameters"

echo "\$1 = $1"
echo "\$2 = $2"
