@echo off
rem This script will silently reset Windows to its factory settings and remove all user data.
rem It uses the RemoteWipe CSP to perform the reset.
rem This script requires administrative privileges to run.

powershell.exe -ExecutionPolicy Bypass -File silent_factory_reset.ps1
