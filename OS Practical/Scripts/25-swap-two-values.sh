#!/bin/bash

# Write a shell program to swap two values.

read -p "Enter val_1: " val_1
read -p "Enter val_2: " val_2

echo "Before Swapping:"
echo "val_1: $val_1"
echo "val_2: $val_2"

# Swapping values using a temporary variable
temp=$val_1
val_1=$val_2
val_2=$temp

echo "After Swapping:"
echo "val_1: $val_1"
echo "val_2: $val_2"
