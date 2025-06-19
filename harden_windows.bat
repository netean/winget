@echo off
REM Basic Windows 11 Pro hardening script

echo Applying basic security settings...

REM --- Windows Defender Firewall ---
echo Enabling Windows Defender Firewall for all profiles...
netsh advfirewall set allprofiles state on
echo Windows Defender Firewall enabled.
echo.

REM --- User Account Control (UAC) ---
echo Ensuring User Account Control (UAC) is enabled...
REM EnableLUA (EnableLimitedUserAccount) to 1 is the default.
REM This command ensures it's explicitly set. A reboot is typically required for UAC changes to take full effect if it was previously off.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 1 /f
echo UAC settings checked. A reboot may be required if UAC was previously disabled.
echo.

REM --- Remote Desktop ---
echo Disabling Remote Desktop connections...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
echo Remote Desktop connections disabled.
echo.

REM --- Controlled Folder Access ---
echo --- Controlled Folder Access ---
echo Controlled Folder Access helps protect your files and folders from unauthorized changes by unfriendly applications.
echo Enabling it via command line is complex and may require specific SIDs or further configuration not suitable for a general script.
echo It is recommended to configure Controlled Folder Access manually through the Windows Security app:
echo 1. Open Windows Security.
echo 2. Go to "Virus & threat protection".
echo 3. Under "Ransomware protection", click "Manage ransomware protection".
echo 4. Turn on "Controlled folder access".
echo You can then customize protected folders and allow apps through Controlled Folder Access.
echo.

echo Basic hardening measures applied.
echo Please review the output and consider restarting your system for all changes to take effect.
