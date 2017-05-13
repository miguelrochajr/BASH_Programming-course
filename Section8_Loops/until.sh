#!/usr/local/bin/bash


#until will run while  a condition is false
until [ "$n" = end ]
do
  echo "Input eend to exit or something else to move on"
  read n
  echo "$n"
done
