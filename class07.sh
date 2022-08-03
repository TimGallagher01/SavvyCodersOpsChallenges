# !/bin/bash

# Script Name: class07.sh
# Author Name: Tim Gallagher
# Date of revision:  07/19/2022
# Description of purpose: Ops Challenge 07 - System Information
# Example usage:  $bash class 07.sh
# Expected output: Present System Information
# Declaration of variables (if any):
# Declaration of functions (if any): n/a

# Main
# Important to always run this script as root or sudo to avoid warnings from lshw

echo -e "Show System Information"
echo -e "Computer name: "$(lshw | grep "" -m1)
echo -e "CPU: "$(lshw | grep "*-cpu" -A 5)
echo -e "RAM: "$(lshw | grep "*-memory" -A 3)
echo -e "Display Adapter: "$(lshw | grep "*-display" -A 10)
echo -e "Network Adapter: "$(lshw | grep "*-network" -A-15)
echo -e "Information Complete."