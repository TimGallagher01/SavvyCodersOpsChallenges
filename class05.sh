# !/bin/bash

# Script Name: class05.sh
# Author Name: Tim Gallagher
# Date of revision:  07/14/2022
# Description of purpose: Ops Challenge 05 - Loops
# Example usage:  $bash class 05.sh
# Expected output: Loops kill a process
# Declaration of variables (if any): option
# Declaration of functions (if any): n/a


# Declare and set variables
option="y"

# Main
while [ $option == "y" ]
do
    ps aux
    echo -e "\nPlease give the PID of the process you would like to kill:"
    read PID
    kill -9 $PID
    echo -e "\nKill another process? (y to continue / any other key to stop)"
    read option

done

# End