REM make sure to run `Set-ExecutionPolicy Bypass`

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
echo "Reboot, then run setup2.ps1"