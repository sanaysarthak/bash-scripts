#!/bin/bash

# Write A Shell Program To Determine The Grade Of A Student.

read -p "Enter the student's marks: " marks

if [ $marks -ge 90 ]; then
    grade="O"
elif [ $marks -ge 80 ]; then
    grade="A+"
elif [ $marks -ge 70 ]; then
    grade="A"
elif [ $marks -ge 60 ]; then
    grade="B+"  
elif [ $marks -ge 55 ]; then
    grade="B"   
elif [ $marks -ge 50 ]; then
    grade="B"  
else
    grade="F"
fi

echo "The student's grade is: $grade"