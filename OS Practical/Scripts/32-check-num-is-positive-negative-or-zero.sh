#!/bin/bash

# Write A Shell Program To Determine The Given Number Is Positive Or Negative Or Zero.

read -p "Enter number: " num

if [ $num -gt 0 ]; then
	echo "$num is positive."
elif [ $num -lt 0 ]; then
	echo "$num is negative."
else
	echo "$num is zero."
fi
