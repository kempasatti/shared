#!/bin/bash
read -p "enter the value:" n
a=1
for i in `seq $n`
do
	for j in `seq $i`
	do
		echo -n $a" "
		a=$((a+1))
	done
	echo
done
