#!/bin/bash
read -p 'Enter a number: ' num

if [ $num -lt  0 ]; then
	echo "The weather is freezing"
elif [ $num -gt 0 ] && [ $num -lt 30 ]; then
	echo "The weather is cool"
elif [ $num -gt 30 ]; then
	echo "The weather is hot"
fi
