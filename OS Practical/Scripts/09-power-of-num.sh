#!/bin/bash

# Write A Shell Script To Find The Value Of One Number Raised To The Power Of Another.

read -p "Enter base of number: " base

read -p "Enter power to which number will be raised: " power

result=$(echo "$base ^ $power" | bc)

echo "$base raised to $power is : $result"
