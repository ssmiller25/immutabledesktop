REM make sure to run `Set-ExecutionPolicy Bypass`

echo "Go to https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package to install the wsl update kernel"
Read-Host -Prompt "Press Enter to continue"
echo "Setting default WSL version to 2"
wsl --set-default-version 2
echo "Install Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
