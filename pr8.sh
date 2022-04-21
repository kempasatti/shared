#!/bin/bash
read -p "enter the numbers and operator string" str
n=${#str}
op=${str:$((n-1)):1}
case $op in
	+)
		sum=0
		for i in `seq 0 $((n-2))`
		do
			sum=$((sum+${str:$i:1}))
		done
		echo "the sum is $sum" ;;
	-)
		dif=${str:0:1}
		for i in `seq 1 $((n-2))`
		do
			dif=$((dif-${str:$i:1}))
		done
		echo "substraction is $dif" ;;
	/)
		div=${str:0:1}
		for i in `seq 1 $((n-2))`
		do
			div=`echo "scale=2;$div/${str:$i:1}" | bc`
		done
		echo "the division is $div" ;;
	x)
		mul=${str:0:1}
		for i in `seq 1 $((n-2))`
		do
			mul=$((mul*${str:$i:1}))
		done
		echo "the multiplication is $mul" ;;
esac
