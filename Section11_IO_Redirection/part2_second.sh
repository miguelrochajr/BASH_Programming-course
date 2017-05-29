#!/usr/local/bin/bash

count=0

# cat wood.txt | while read line;
#                 do
#                   {
#                     echo $line
#                     (( count++ ));
#                   }
#                 done
# echo "Number of read lines is $count"

#the code above has a major issue. The pipe redirection creates a subshell and the count
#variable is incremented inside of this subshell. Which means that we don't
#have access to it when echoing at line 12. When we echo, we will just have
#the value we assigned at line 3, which is zero.

# the problem is solution below.

exec 3<> wood.txt # opens up wood.txt and assign descriptor 3

while read line <&3 # read from file <&3
do
{
  echo "$line"
  (( count++ ));
}
done

exec 3>&-
echo "Number of lines read is $count"
