#!/bin/bash
flag=0
for i in `seq 1 8`
do
 	for j in `seq 1 8`
	do
		if [ $flag -eq 1 ]
		then
			echo -n -e "\e[47m" " "
			flag=0
		else
			echo -n -e "\e[40m" " "
			flag=1
		fi
	done
	echo ""
	if [ $flag -eq 1 ]
	then
		flag=0
	else
		flag=1
	fi
done
