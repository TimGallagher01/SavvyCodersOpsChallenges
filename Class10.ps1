# !/bin/bash

# Script Name: Class10.ps1
# Author Name: Tim Gallagher
# Date of revision: 7/25/2022
# Description of purpose:  Ops CHallenge 10 - System Process Commands
# Example usage: Class10.ps1 within powershell
# Expected output: show process information
# Declaration of variables (if any): 
# Declaration of functions (if any): 

#1 Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
#2 Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
#3 Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
#4 Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
#5 Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
#6 Close all Internet Explorer windows.
#7 Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

# Task 1
Get-Process | Sort-Object -Property cpu -Descending

# Task 2
Get-Process | Sort-Object Id -Descending

# Task 3
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5

# Task 4
Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

# Task 5
for ($i=1 ; $i -le 10; $i++)
{
    Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/
}

# Task 6
Stop-Process -name iexplore

# Task 7

Start-Process -FilePath "C:\Program Files (x86)\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

Get-Process -Name iexplore | Select-Object -Property Id | Stop-Process

