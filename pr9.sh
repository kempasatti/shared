#!/bin/bash
read -p "enter the limit" li
a=0
b=1
echo "the fibanoci series is"
echo -n "$a"
echo -n ", $b"
c=$((a+b))
while [ $c -le $li ]
do
	echo -n ", $c"
	tmp=$c
	c=$((c+b))
	b=$tmp
done
echo ""
