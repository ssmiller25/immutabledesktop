echo "Chocolate Installs"

choco install -y microsoft-windows-terminal vcxsrv docker-desktop wsl-ubuntu-2004 vscode
echo "Setting Ubuntu 20.04 as default Linux distro"
wsl --set-default Ubuntu-20.04
echo "Reboot, then manually start `wsl.exe` and go through initial setup"
Read-Host -Prompt "Press Enter to continue"
echo "Log into docker hub in docker-desktop"
Read-Host -Prompt "Press Enter to continue"
echo "Update Windows Terminal to make WSL primary shell"
Read-Host -Prompt "Press Enter to continue"
echo "Pin \\wsl$\Ubuntu-20.04\home\steve for Quick Access in File Explorer (and put as shortcut on desktop)"
Read-Host -Prompt "Press Enter to continue"
echo "Start "X-Lanuch", go through wizard, save config...and shortcut to config to launch X-server"
Read-Host -Prompt "Press Enter to continue"
echo "In WSL: Run `code` from WSL to download Linux x64 vscode extensions"
Read-Host -Prompt "Press Enter to continue"
