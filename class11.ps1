# powershell

# Script Name: Class11.ps1
# Author Name: Tim Gallagher
# Date of revision: 7/26/2022
# Description of purpose:  Ops CHallenge 11 - Automated Endpoint Configuration
# Example usage: Class11.ps1 within powershell
# Expected output: show process information
# Declaration of variables (if any): 
# Declaration of functions (if any):

<#Enable File and Printer Sharing
Allow ICMP traffic
Enable Remote management
Remove bloatware
Enable Hyper-V
Disable SMBv1, an insecure protocol #>

# Task 1
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

# Task 2
netsh advfirewall firewall add rule name="Class11-Allow ICMP incoming ping requests" dir=in action=allow protocol=icmpv4

# Task 3
reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t Reg_DWORD /d 0 /f

# Task 4
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Task 5
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Task 6
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

