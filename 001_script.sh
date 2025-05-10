#!/bin/bash


read -p "Enter first number: " num1
read -p "Enter second number: " num2


echo " Select your option"
echo " add "
echo " sub "
echo " mul "

read choice

case $choice in 
	add) 
		sum=$((num1+num2))
		echo "sum is : $sum"
		;;

	sub)
		sub=$((num1-num2))
		echo "sub is : $sub"
		;;

	mul)
		mul=$((num1*num2))
		echo "mul is: $mul"
		;;
	*)
		echo "unknown option"
		;;

esac

