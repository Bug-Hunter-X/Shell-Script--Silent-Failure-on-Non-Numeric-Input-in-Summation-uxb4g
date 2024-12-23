#!/bin/bash

# Improved script to handle potential errors during summation

sum=0

while IFS= read -r line; do
  # Check if the line contains only digits
  if [[ "$line" =~ ^[0-9]+$ ]]; then
    sum=$((sum + line))
  else
    echo "Warning: Non-numeric value '$line' encountered. Skipping." >&2
  fi
done < numbers.txt

echo "The sum is: $sum"