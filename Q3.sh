#!/bin/bash

	convert_to_Far(){
		echo "scale=2; ($1 * 9/5) + 32" | bc
}


read -p 'Enter a number: ' num
far=$(convert_to_Far "$num")

if [ $num -lt  0 ]; then
	echo "The weather is freezing"
elif [ $num -gt 0 ] && [ $num -lt 30 ]; then
	echo "The weather is cool"
elif [ $num -gt 30 ]; then
	echo "The weather is hot"
fi

echo "Temperature in Far : $far"
