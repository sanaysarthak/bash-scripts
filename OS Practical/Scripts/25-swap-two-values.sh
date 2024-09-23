#!/bin/bash

# init (fix errors)

# Write a shell program to swap two values.

read -p "Enter val_1 : " val_1
read -p "Enter val_2 : " val_2

echo "Before Swapping:-"
echo "val_1 : " $val_1
echo "val_2 : " $val_2

temp=$(val_1)
val_1=$(val_2)
val_2=$(temp)

echo "After Swapping:-"
echo "val_1 : " $val_1
echo "val_2 : " $val_2