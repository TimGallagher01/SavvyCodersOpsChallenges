$get_config = ipconfig > netconfig.txt
$get_info Select-String -path "netconfig.txt" -Pattern 'IPv4 Address
$get_rid_of_file = rm "network_report.txt"

Function Show_IP {

$get_config
$get_info
$get_rid_of_file

}

# Main
Show_IP