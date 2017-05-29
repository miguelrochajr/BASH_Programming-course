#!/usr/local/bin/bash




declare -a arr # -a stands for array
arr=( 30 32 )


echo -e "${arr[0]} \n${arr[1]}"

#another way to assign elements to the array:

arr=([0]=first [1]="second" [7]=45)

echo -e "${arr[0]}, ${arr[1]}, ${arr[7]} \n"



a=something123

echo ${a[*]}
echo ${a[0]}
echo ${a[1]}
echo ${#a[@]} #print out how many elements in the array


# ---- ARRAYS OPERATIONS

myArray=( zero one two )
echo "${myArray[0]}"

echo "${#myArray[0]}" #this will print out of the lenght of the first element

echo "${#myArray[*]}" #this will print out of the lenght of the array. Just like the line 25.
