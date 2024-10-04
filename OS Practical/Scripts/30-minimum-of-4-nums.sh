#!/bin/bash

# Write A Shell Program To Find The Minimum Among Four Values.

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
read -p "Enter fourth number: " num4

min=$num1

if (( num2  <min )); then
	min=$num2
elif (( num3 < min )); then
	min=$num3
else
	min=$num4
fi

echo "$min is the minimum!"