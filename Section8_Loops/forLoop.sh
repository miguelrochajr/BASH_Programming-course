#!/usr/local/bin/bash

for i in {1..5}
do
  echo "Outer loop: \$i: $i  ------"
  for j in {1..3}
  do
    echo "Inner loop \$j: $j !!! Outer loop iteration \$i: $i"
  done
done
