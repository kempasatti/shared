#!/bin/bash
read -p "enter the list of values" -a arr
n=${#arr[@]}
max=${arr[0]}
for i in `seq $((n-1))`
do
	if [ $max -lt ${arr[$i]} ]
	then
		max=${arr[$i]}
	fi
done
echo "the greatest number is $max"
