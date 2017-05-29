#!/usr/local/bin/bash


file=wood.txt

#0 for STIN
#1 for STDOUT
#2 for STDERR

# the 1> is the redirection of the standard output
# the 2> is the standar error

echo "This line is sent to $file" 1> $file


#to assign a file descriptor
echo 12345 > fd.txt
exec 3<>fd.txt #open the file and assign a file descriptor 3 to it
read -n 2 <&3 #read only 3 chars from the file
echo -n . >&3 #then will write a decimal point there
exec 3>&- #closes file descriptor 3
cat fd.txt
