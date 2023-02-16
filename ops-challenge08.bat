#Script: Ops 201 Class 08 Ops Challenge Solution
# Author: Dericus Horner
# Date of latest revision:02/15/2023
# Purpose: Copy data using ROBOCOPY

# Main

@echo off

set source=C:\Users\j.thompson\Desktop\"My Project Files"
set destination=E:\backups\work

echo C:\Users\j.thompson\Desktop\ "My Project Files" "E:\My Project Files"


robocopy "C:\User\j.thompson\Desktop\My Project Files" "E:\My Project Files" /E /MIR /Z /XA:H /W:5 /R:2

echo Files copied successfully

# Done

