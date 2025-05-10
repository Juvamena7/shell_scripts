#!/bin/bash


read -p " enter first number: " num1
read -p " enter second number: " num2
read -p " select any one operation(+,-,*): " operation


if [ "$operation" = "+" ]; then

	sum=$((num1+num2))
	echo "sum of the numbers: $sum"
elif [ "$operation" = "-" ]; then
	
	sub=$((num1-num2))
	echo "subtraction of the numbers: $sub"
elif [ "$operation" = "*" ]; then
	
	mul=$((num1*num2))
	echo "multiplication of the numbers: $mul"

else
	echo "unknown selection"

fi
