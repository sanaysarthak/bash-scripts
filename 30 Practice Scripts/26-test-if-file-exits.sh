#!/bin/bash

echo "Enter filename (with extension): "
read filename

if [ -f "$filename" ]; 
then
    echo "File exists already."
else
    echo "File does not exist."
fi