#!/bin/bash

# Note: Sorting of the percentage does not work in this version of the script.

declare -a student_names
declare -a student_classes
declare -a student_marks
declare -a student_percentages

echo "Enter the names and classes of 5 students:"
for (( i=0; i<5; i++ ))
do
    echo
    read -p "Enter name of student $((i+1)) : " student_names[$i]
    read -p "Enter class of student $((i+1)) : " student_classes[$i]
done

# Taking marks as input
for (( i=0; i<5; i++ )) 
do
    echo
    echo "Enter marks for ${student_names[$i]} in 5 subjects:"
    total_marks=0
    for (( j=0; j<5; j++ )) 
    do
        read -p "Mark for Subject $((j+1)): " marks
        total_marks=$((total_marks + marks))
    done
    
    percentage=$(echo "scale=2; $total_marks / 5" | bc)
    student_percentages[$i]=$percentage
done

echo
echo "| Name | Class | Percentage |"
echo "_____________________________"
echo

for (( i=0; i<5; i++))
do
    echo "| ${student_names[$i]} | ${student_classes[$i]} | ${student_percentages[$i]}% |"
done
