# !/bin/bash

# Script Name: class06.sh
# Author Name: Tim Gallagher
# Date of revision:  07/18/2022
# Description of purpose: Ops Challenge 05 - Conditional
# Example usage:  $bash class06.sh
# Expected output: Test for file or create
# Declaration of variables (if any): file, files
# Declaration of functions (if any): n/a

# Declare array
files=(file1.txt file2.txt file3.txt file4.txt)

# For loop to check for each file in array

for file in "${files[@]}"
do
    # add IF to check for file
    if [ -f "$file" ]; then
        # If file exists tell me
        echo "$file already exists."
    else
        echo "$file does not exist."
        touch $file
        echo "The $file now exists."
    fi

done




