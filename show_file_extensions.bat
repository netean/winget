@echo off
REM This script configures Windows Explorer to show file extensions
REM by modifying the HideFileExt registry value.

echo Configuring Windows Explorer to show file extensions...

REM Set the HideFileExt value to 0 (0 = show extensions, 1 = hide extensions)
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

IF %ERRORLEVEL% EQU 0 (
    echo Successfully updated the registry.
) ELSE (
    echo ERROR: Failed to update the registry. Error code: %ERRORLEVEL%
    goto :eof
)

echo .
echo To apply the changes, Windows Explorer needs to be restarted.
echo You can do this manually by signing out and signing back in,
echo or by restarting your computer.
echo Alternatively, this script can attempt to restart Explorer automatically.

choice /C YN /M "Do you want to restart Explorer now?"
IF ERRORLEVEL 2 (
    echo Explorer will not be restarted automatically. Please do it manually.
    goto :eof
)
IF ERRORLEVEL 1 (
    echo Restarting Explorer...
    REM Terminate the Explorer process
    taskkill /f /im explorer.exe
    REM Start the Explorer process
    start explorer.exe
    echo Explorer restarted.
)

echo .
echo File extensions should now be visible.
