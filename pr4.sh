#!/bin/bash
read -p "enter the expression: " a b c
case $b in
+)
	sum=`echo "$a+$c" | bc`
	echo "the sum of $a and $c is $sum";;
-)
	dif=`echo "$a-$c" | bc`
	echo "the difference bw $a and $c is $dif";;
x)
	mul=`echo "$a*$c" | bc`
	echo "the multiplication of $a and $c is $mul";;
/)
	div=`echo "scale=2;$a/$c" | bc`
	echo "the division of $a by $c is $div";;
*)
	echo "enter the valid operation"
esac
