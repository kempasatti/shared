#!/bin/bash
read -p "enter the list of numbers " -a arr
n=${#arr[@]}
for i in `seq 0 $((n-1))`
do
	for j in `seq 0 $((n-2-i))`
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done
echo ${arr[@]}
