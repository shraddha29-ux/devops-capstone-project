#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest, and time period in years.

# Do not use this script in production. It's for sample use only.

# Input principal amount
echo "Enter the principal amount:"
read p

# Input annual rate of interest
echo "Enter rate of interest per year (%):"
read r

# Input time period in years
echo "Enter time period in years:"
read t

# Calculate simple interest
s=$((p * r * t / 100))

echo "The simple interest is: $s"
