# This script will silently reset Windows to its factory settings and remove all user data.
# It uses the RemoteWipe CSP to perform the reset.
# This script requires administrative privileges to run.

# Get the WMI object for the RemoteWipe CSP
$namespace = "root\cimv2\mdm\dmmap"
$classname = "MDM_RemoteWipe"
$cimSession = New-CimSession

# Trigger the remote wipe
$cimSession | Invoke-CimMethod -Namespace $namespace -ClassName $classname -MethodName doWipeProtected

# The device will reboot and begin the reset process.
# This process is unattended and will not require any user interaction.
