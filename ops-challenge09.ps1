
#Script: Ops 201 Class 09 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision: 2/16/2023
# Purpose:  LogRetrieval via Powershell

# Main 

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

Get-EventLog System -After (Get-Date).AddDays(-1) | Out-File -FilePath "$home\Desktop\last_24.txt"

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

Get-EventLog System | Where-Object {$_.EntryType -eq "Error"} | Out-File -FilePath "$home\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log.

Get-EventLog System | Where-Object {$_.EventID -eq 16}

# Print to the screen the most recent 20 entries from the System event log.’

Get-EventLog System -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

Get-EventLog System -Newest 500 | Format-Table Source, Message -Wrap

# End
