#!/bin/bash

# Initializing the sum variable with 0
sum=0

# Iterate over each argument passed to the script
for arg in "$@"
do
    sum=$((sum + arg))
done

echo "Sum : $sum"
