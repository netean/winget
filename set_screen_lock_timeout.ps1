# This PowerShell script configures the screen saver to activate after 15 minutes
# of inactivity and to require a password when resuming.

Write-Host "Configuring screen lock timeout and settings..."

# Define the registry path
$RegistryPath = "HKCU:\Control Panel\Desktop"

# --- Ensure Screen Saver is Active ---
# ScreenSaveActive (String): 1 = Active, 0 = Not Active
try {
    Set-ItemProperty -Path $RegistryPath -Name "ScreenSaveActive" -Value "1" -Type String -Force -ErrorAction Stop
    Write-Host "Successfully set ScreenSaveActive to 1."
}
catch {
    Write-Error "Failed to set ScreenSaveActive. Error: $($_.Exception.Message)"
}

# --- Set Screen Saver Timeout to 15 minutes (900 seconds) ---
# ScreenSaveTimeOut (String): Timeout in seconds
try {
    Set-ItemProperty -Path $RegistryPath -Name "ScreenSaveTimeOut" -Value "900" -Type String -Force -ErrorAction Stop
    Write-Host "Successfully set ScreenSaveTimeOut to 900 seconds (15 minutes)."
}
catch {
    Write-Error "Failed to set ScreenSaveTimeOut. Error: $($_.Exception.Message)"
}

# --- Require password on resume from screen saver ---
# ScreenSaverIsSecure (String): 1 = Require password, 0 = Do not require password
try {
    Set-ItemProperty -Path $RegistryPath -Name "ScreenSaverIsSecure" -Value "1" -Type String -Force -ErrorAction Stop
    Write-Host "Successfully set ScreenSaverIsSecure to 1."
}
catch {
    Write-Error "Failed to set ScreenSaverIsSecure. Error: $($_.Exception.Message)"
}

# --- Set a default (blank) screen saver ---
# SCRNSAVE.EXE (String): Path to the screen saver executable.
# Using "scrnsave.scr" which is the blank screen saver.
# This is often necessary for the timeout and lock to work if no other screen saver is chosen by the user.
try {
    Set-ItemProperty -Path $RegistryPath -Name "SCRNSAVE.EXE" -Value "C:\Windows\System32\scrnsave.scr" -Type String -Force -ErrorAction Stop
    Write-Host "Successfully set SCRNSAVE.EXE to the default blank screen saver."
}
catch {
    Write-Error "Failed to set SCRNSAVE.EXE. Error: $($_.Exception.Message)"
    Write-Warning "The blank screen saver might need to be selected manually in Screen Saver Settings if not already."
}

Write-Host ""
Write-Host "Screen lock settings have been applied."
Write-Host "For the changes to take full effect, you may need to sign out and sign back in, or restart your computer."
Write-Host "Alternatively, the new settings should apply once the system has been idle for the specified duration."
