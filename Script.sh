#!/bin/bash

# Function to generate Fibonacci series up to n terms
fibonacci() {
  local n=$1
  local a=0
  local b=1
  local next

  echo "Fibonacci series up to $n terms:"

  for (( i=0; i<n; i++ ))
  do
    echo -n "$a "
    next=$((a + b))
    a=$b
    b=$next
  done
  echo
}

# Get the number of terms from the user
read -p "Please enter the number of terms: " number

# Check if the input is a valid number
if [[ "$number" =~ ^[0-9]+$ ]] && [ "$number" -gt 0 ]; then
  fibonacci $number
else
  echo "Invalid input. Please enter a positive integer."
fi
