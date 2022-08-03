# !/bin/bash

# Script Name: class04.sh
# Author Name: Tim Gallagher
# Date of revision:  07/14/2022
# Description of purpose: Ops Challenge 04 - Array
# Ecample usage:  $bash class 04.sh
# Expected output: Create 4 directories and 1 file in each
# Declaration of variables (if any): paths
# Declaration of functions (if any): n/a


# Declare and set variables

paths=( [0]="./demo"
        [1]="./demo/dir1"
        [2]="./demo/dir2"
        [3]="./demo/dir3"
        [4]="./demo/dir4"
        )

# Main

# Create the directories

mkdir ${paths[0]}
mkdir ${paths[1]}
mkdir ${paths[2]}
mkdir ${paths[3]}
mkdir ${paths[4]}

# Create the files 

touch "${paths[1]}/file1.txt"
touch "${paths[2]}/file1.txt"
touch "${paths[3]}/file1.txt"
touch "${paths[4]}/file1.txt"

# End