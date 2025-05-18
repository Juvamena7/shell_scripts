#!/bin/bash


if [ $# -ne 3 ]; then
  echo "Usage: $0 <num1> <operator> <num2>"
  exit 1
fi

num1="$1"
operator="$2"
num2="$3"



case "$operator" in
  "+")
    result=$((num1 + num2))
    echo "The sum of $num1 and $num2 is: $result"
    ;;
  "-")
    result=$((num1 - num2))
    echo "The difference of $num1 and $num2 is: $result"
    ;;
  "*")
    result=$((num1 * num2))
    echo "The product of $num1 and $num2 is: $result"
    ;;
   *)
    echo "Invalid operator. Please use +, -, or *"
    exit 1
    ;;
esac 

