#!/bin/bash

# This script demonstrates the corrected way to read a file in Bash,
# avoiding word splitting and globbing issues.

file_path="/path/to/my/file.txt"

if [ -f "$file_path" ]; then
  # Corrected: Using ' instead of " for the variable
  while IFS= read -r line; do
    echo "$line"
  done < '$file_path'
else
  echo "File not found."
fi