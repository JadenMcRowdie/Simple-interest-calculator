#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

# Get user input
read -p "Enter principal amount: " principal
read -p "Enter rate of interest (in %): " rate
read -p "Enter time period (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display results
echo "--------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
