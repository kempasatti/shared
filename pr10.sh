#!/bin/bash
read -p "enter the list of strings seperated by space" -a arr
n=${#arr[@]}
for i in `seq 0 $((n-1))`
do
	str=${arr[$i]}
	n=${#str}
	echo "the length of the string ( ${arr[$i]} ) is $n "
done
