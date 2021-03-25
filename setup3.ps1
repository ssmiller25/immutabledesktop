echo "Chocolate Installs"

choco install -y microsoft-windows-terminal vcxsrv docker-desktop wsl-ubuntu-2004 vscode
echo "Go to https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package to complete wsl2 kernel installation"
echo "Reboot, then manually start `wsl.exe` and go through initial setup"
echo "Log into docker hub in docker-desktop"
echo "Run ssh-keygen from windows to generate workstation ssh"
echo "Update Windows Terminal to make WSL primary shell"
echo "Pin \\wsl$\Ubuntu-20.04\home\steve" for "Quick Access" in File Exploer (and put as shortcut on desktop)"
echo "Start "X-Lanuch", go through wizard, save config...and shortcut to config to launch X-server"
echo ""
echo "In WSL"
echo "  Copy .ssh from Windows Home to Linux Home"
echo "  Run `code` from WSL to download Linux x64 vscode extensions"
