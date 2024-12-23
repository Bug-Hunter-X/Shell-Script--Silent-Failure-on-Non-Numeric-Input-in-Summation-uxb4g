#!/bin/bash

# This script attempts to process a file containing numbers,
# but it contains a subtle error that can lead to unexpected behavior.

# The goal is to sum the numbers in the file 'numbers.txt'

while IFS= read -r line; do
  sum=$((sum + line))
done < numbers.txt

echo "The sum is: $sum"