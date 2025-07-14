Write-Host "This script will reset Windows to its factory settings and remove all user data."
Write-Host "Please save all your work and close all applications before proceeding."
Read-Host -Prompt "Press Enter to continue"
Start-Process "systemreset" -ArgumentList "--factoryreset"
