#!/usr/local/bin/bash

var=10
echo var
echo $var

unset var #this makes var into null

echo $var

#read input from user
echo "type in some value"
read var2
echo $var2


#for loop
for var in {1..3}
do
  echo $var
done
