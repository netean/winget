@echo off
REM Enables the screen saver and sets the timeout to 15 minutes.

REM Enable the screen saver
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f

REM Set the screen saver to require a password on resume
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f

REM Set the screen saver timeout to 15 minutes (900 seconds)
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 900 /f

REM Set a default screen saver (e.g., scrnsave.scr - blank screen)
REM Check if C:\Windows\System32\scrnsave.scr exists, otherwise use another default or notify user.
IF EXIST "C:\Windows\System32\scrnsave.scr" (
    reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d "C:\Windows\System32\scrnsave.scr" /f
) ELSE (
    echo WARNING: Default screensaver C:\Windows\System32\scrnsave.scr not found.
    echo Please set a screensaver manually.
)

echo Screen lock settings applied.
echo Please note that for changes to take full effect, a log off and log back in, or a system restart might be required.
