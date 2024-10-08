#!/bin/bash

# 36.Write A Shell Program To Calculate Employee Pay. (Note Check Basic Pay And Change The Percentage Of HRA, DA, TAX).

# taking basic pay as user input
read -p "Enter Basic Pay: " basic_pay

# defining HRA, DA, and TAX percentages based on basic pay
if (( $(echo "$basic_pay < 50000" | bc -l) )); then
    hra_percentage=20
    da_percentage=15
    tax_percentage=10
elif (( $(echo "$basic_pay >= 50000 && $basic_pay < 90000" | bc -l) )); then
    hra_percentage=25
    da_percentage=20
    tax_percentage=15
else
    hra_percentage=30
    da_percentage=25
    tax_percentage=20
fi

# calculating HRA, DA, and TAX
hra=$(echo "$basic_pay * $hra_percentage / 100" | bc)
da=$(echo "$basic_pay * $da_percentage / 100" | bc)
gross_pay=$(echo "$basic_pay + $hra + $da" | bc)
tax=$(echo "$gross_pay * $tax_percentage / 100" | bc)
net_pay=$(echo "$gross_pay - $tax" | bc)

# displaying the results
echo "Basic Pay:     Rs. $basic_pay"
echo "HRA ($hra_percentage%):     Rs. $hra"
echo "DA ($da_percentage%):      Rs. $da"
echo "Gross Pay:     Rs. $gross_pay"
echo "Tax ($tax_percentage%):     Rs. $tax"
echo "Net Pay:       Rs. $net_pay"
