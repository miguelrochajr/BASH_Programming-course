#!/usr/local/bin/bash


PS3='Pick a color: ' #Prompt select 3

echo
select color in "brown" "gray" "black" "orange" "red"
do
  echo "You selected this color: $color"
  break
done

#The prompt for PS3 will be the following:
# 1) brown
# 2) gray
# 3) black
# 4) orange
# 5) red
# Pick a color: $(promting for anser)
