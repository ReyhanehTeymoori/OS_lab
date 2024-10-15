#!/bin/bash
 error(){
	echo "Error: $1"
	exit 1
}
read -p "Enter first number: " num1

if ! [[ "$num1" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
	error "invalid input"
fi

read -p "Enter second  number: " num2

if ! [[ "$num2" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
        error  "invalid input"
fi

read -p "Enter type of operation: " operand 

case $operand in
	"+")
		result=$(echo "$num1 + $num2" | bc);;
	"-")
		result=$(echo "$num1 - $num2" | bc);;

	"*")
		result=$(echo "$num1 * $num2" | bc);;
	"/")
		if [ "$num2" == "0" ]; then
			error "invalid operation"
		fi
		result=$(echo "$num1 / $num2" | bc);;
	*)
		error "invalid operation";;
esac

echo "resullt : $result "

