#!/bin/bash

# Write A Shell Program To Compute The Rental Charge For Traveling In A Car, Van, Jeep And Bus (All Different Rents.)

# defining (setting) default rental rates for each type of vehicle accordingly
car_rate=50      
van_rate=80      
jeep_rate=100    
bus_rate=150     

# taking user choice as input
read -p "Choose vehicle type: Car, Van, Jeep, Bus : " vehicle
read -p "Enter the number of days you want to rent the $vehicle: " days

# Calculate and display rental charge
case $vehicle in
    "Car")
        charge=$(echo "$car_rate * $days" | bc)
        ;;
    "Van")
        charge=$(echo "$van_rate * $days" | bc)
        ;;
    "Jeep")
        charge=$(echo "$jeep_rate * $days" | bc)
        ;;
    "Bus")
        charge=$(echo "$bus_rate * $days" | bc)
        ;;
    *)
        echo "Invalid vehicle type. Please enter correct choice!"
        exit 1
        ;;
esac
echo "Total rental charge for $vehicle for $days days: Rs. $charge"
