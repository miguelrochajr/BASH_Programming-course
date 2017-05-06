#!/usr/local/bin/bash

#the random function generates from 0 to 32767. These are the 16bits range

MAX=10
i=1

while [ "$i" -le $MAX ]
do
  n=$RANDOM
  echo "$n"
  let "i +=1"
done
