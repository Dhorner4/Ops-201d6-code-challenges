# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending | Format-Table Name, CPU -AutoSize

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending | Format-Table Name, Id -AutoSize

#  Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table Name, WS -AutoSize

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
Start-Process iexplore.exe -ArgumentList "https://owasp.org/www-project-top-ten/"

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
for ($i = 1; $i -le 10; $i++) {
    Start-Process iexplore.exe -ArgumentList "https://owasp.org/www-project-top-ten/"
}

# Close all Internet Explorer windows
Get-Process iexplore | Foreach-Object { $_.CloseMainWindow() }

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.
Get-Process | Where-Object { $_.Name -eq "iexplore" } | Select-Object -First 1 | Stop-Process
