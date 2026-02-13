#!/bin/bash

# Check that exactly 3 arguments were provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <number1> <operator> <number2>"
  exit 1
fi

num1=$1
operator=$2
num2=$3

case $operator in
  +)
    result=$((num1 + num2))
    ;;
  -)
    result=$((num1 - num2))
    ;;
  \*)
    result=$((num1 * num2))
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero"
      exit 1
    fi
    result=$((num1 / num2))
    ;;
  *)
    echo "Error: Invalid operator. Use +, -, *, or /"
    exit 1
    ;;
esac

echo "Result: $result"
