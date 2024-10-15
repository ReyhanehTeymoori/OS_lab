#!/bin/bash

read -p "Enter your number :" num

reverse_num=0
original_num=$num

while [ $num -gt 0 ]; do
	
	last_digit=$(( num % 10 ))
	reverse_num=$(( reverse_num * 10 + last_digit ))
	num=$(( num /10 ))
done

echo "reversed number : $reverse_num"

if [ $original_num -lt 0 ]; then
	echo "reversed number : -$reverse_num"
fi


