#!/bin/bash
read -p "enter the two numbers for addition:" a b
sum=`echo "$a+$b" | bc`
echo the addition of $a and $b is $sum
