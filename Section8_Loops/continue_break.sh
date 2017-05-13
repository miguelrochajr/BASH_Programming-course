#!/usr/local/bin/bash

UPPER_LIMIT=9

echo "Numbers 1 to 10 (but not 3 and eleven)"

n=0

while [ "$n" -le "$UPPER_LIMIT" ]
do
  n=$(($n+1))

  if [ "$n" -eq 3 ] || [ "$n" -eq 11 ]
  then
    continue #continue conducts the loop into the next iteration from where the 'conitnue' was called. echo -n "$n " will be skipped.
  fi

  echo -n "$n "
done

echo

n=0

while [ "$n" -le "$UPPER_LIMIT" ]
do
  n=$(($n+1))

  if [ "$n" -gt 2 ]
  then
    break #same as in C, C++ and Python
  fi

  echo -n "$n  "
done

echo
