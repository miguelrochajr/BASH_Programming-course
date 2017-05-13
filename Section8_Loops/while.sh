#!/usr/local/bin/bash


a=notSet
prev=$a

while echo "Previous variable = $prev"
      echo
      prev=$a
  [[ "$a" != end ]]; do
    echo "Input end to exit or anything else to go on!"
    read a
    echo "variable: $a"
done
