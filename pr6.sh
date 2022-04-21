#!/bin/bash
read -p "enter the string" str
len=${#str}
reverse=""
for i in `seq $((len-1)) -1 0`
do
reverse=$reverse${str:$i:1}
done
echo "the reversed string is $reverse"
