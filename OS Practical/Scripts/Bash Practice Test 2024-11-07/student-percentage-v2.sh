#!/bin/bash

declare -a student_names
declare -a student_classes
declare -a student_marks
declare -a student_percentages

echo "Enter details of the 5 students:-"
for (( i=0; i<5; i++ ))
do
    echo
    read -p "Enter name of student $((i+1)) : " student_names[$i]
    read -p "Enter class of student $((i+1)) : " student_classes[$i]
    # taking marks as input
    total_marks=0
    for (( j=0; j<5; j++ )) 
    do
        read -p "Enter marks in subject $((j+1)) : " marks
        total_marks=$((total_marks + marks))
    done
    percentage=$(echo "scale=2; $total_marks / 5" | bc)
    student_percentages[$i]=$percentage
done

for (( i=0; i<5; i++ ))
do
    for (( j=i+1; j<5; j++ ))
    do
        if (( $(echo "${student_percentages[$i]} < ${student_percentages[$j]}" | bc -l) ))
        then
            # swap the values
            temp_percentage=${student_percentages[$i]}
            student_percentages[$i]=${student_percentages[$j]}
            student_percentages[$j]=$temp_percentage

            temp_name=${student_names[$i]}
            student_names[$i]=${student_names[$j]}
            student_names[$j]=$temp_name

            temp_class=${student_classes[$i]}
            student_classes[$i]=${student_classes[$j]}
            student_classes[$j]=$temp_class
        fi
    done
done

echo
echo "| Name | Class | Percentage |"
echo "_____________________________"
echo

for (( i=0; i<5; i++))
do
    echo "| ${student_names[$i]} | ${student_classes[$i]} | ${student_percentages[$i]}% |"
done
