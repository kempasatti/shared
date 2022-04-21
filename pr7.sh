#!/bin/bash
read -p "enter the file name with absulute path" file
echo "the original file"
echo "------------------------------------------------------"
cat $file
sed -i '/^[[:space:]]*$/d' $file
echo "after removing empty lines from file"
echo "------------------------------------------------------"
cat $file
