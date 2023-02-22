

# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
ipconfig /all > network_report.txt

# Use Select-String to search network_report.txt and return only the IP version 4 address.
$ipv4Address = Get-Content network_report.txt | Select-String -Pattern "IPv4 Address" | Select-Object -Last 1 | ForEach-Object {($_ -split ": ")[-1].Trim()}
Write-Host "IPv4 Address: $ipv4Address"

# Remove the network_report.txt when you are finished searching it.
Remove-Item -Path network_report.txt

