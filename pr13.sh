#!/bin/bash
echo "1. Currently logged users"
echo "2. Your shell directory" 
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information."
echo "10.Memory information."
echo "11.File system information."
echo "12.Currently running process."
read -p "enter your choice: " op
case $op in
	1)
		echo "currently logged users"
		users
	2)
		echo "your shell directory is: $SHELL" ;;
	3)
		echo "your home directory is : $HOME" ;;
	4)
		echo "your machine os and version is"
		cat /etc/os-release | head -n 2 ;;
	5)
		echo "current working directory is: $(pwd) " ;;
	6)
		n=$(users | wc -w)
		echo "number of users logged in is: $n" ;;
	7)
		echo "all available shells"
		cat /etc/shells ;;
	8)
		echo "Hard disk information"
		lsblk ;;
	9)
		echo "CPU information"
		lscpu ;;
	10)
		echo "memory information"
		free ;;
	11)
		echo "file system information"
		df -h ;;
	12)
		echo "currently running proc"
		ps ;;
	*)
		echo "invalid option"
esac
