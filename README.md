# Bash Script File Reading Error

This repository demonstrates a common yet subtle error in Bash scripting related to file reading. The script attempts to read a file line by line and print its contents. However, it contains an error in how it handles the file path variable within the `while` loop, leading to potential word splitting and globbing issues.

## The Bug

The script uses double quotes (") around the variable `$file_path` within the `while` loop. This allows word splitting and globbing to occur, potentially leading to unexpected behavior if the file path contains spaces or special characters.

## The Solution

The solution uses single quotes (') around the variable `$file_path`. This prevents word splitting and globbing, ensuring the script correctly reads the file. The solution also includes error handling to check for file existence.