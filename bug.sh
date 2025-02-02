#!/bin/bash

# This script attempts to read a file and print its contents.
# However, it contains a subtle error that can lead to unexpected behavior.

file_path="/path/to/my/file.txt"

if [ -f "$file_path" ]; then
  # The error is here: using " instead of ' for the variable
  while IFS= read -r line; do
    echo "$line"
  done < "$file_path"
else
  echo "File not found."
fi