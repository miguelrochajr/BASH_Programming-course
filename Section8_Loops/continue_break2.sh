#!/usr/local/bin/bash


for i in 1 2
do
  echo "Loop 1: iteration $i"
  for j in 1 2 3
  do
    echo -e "\t Loop 2: iteration $j"
    for k in 1 2 3 4
    do
      echo -e "\t\t Loop 3: iteration $k"
      if [ "$k" -eq 2 ]
      then
        # note here that break uses an argument 2.
        # this will break to two 'for loops' levels. Instead of a single break, that
        # would go back to Loop2, this breaks the current Loop3 and the Loop2 going
        # straght to Loop1
        break 2
      fi
    done
  done
done

echo ""
echo " -------- new loop ----------"
echo ""

for i in {1..5}
do
  echo "Loop1: iteration $i"
  for j in {1..3}
  do
    echo -e "\t Loop 2: iteration $j"
    for k in {1..6}
    do
      echo -e "\t\t Loop 3: Iteration $k"
      if [ "$k" -eq 2 ]
      then
        continue 4
      fi
    done
  done
done

exit 0
