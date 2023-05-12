#!/bin/bash

# Specify the file containing programs and domains
input_file="parsed-targets.txt"

# Read the file line by line
while IFS='|' read -r program domains
do
  # Count the number of domains
  num_domains=$(echo "$domains" | tr ',' '\n' | wc -l)

  # Check if the program has more than 3 domains
  if (( num_domains < 3 )); then
    output="$program|$domains"
    echo "$output"
  fi
done < "$input_file"
