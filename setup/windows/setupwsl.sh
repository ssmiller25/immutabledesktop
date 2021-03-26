#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
  # script cleanup here
}

echo "Update base distr"
sudo apt-get update
sudo apt-get -y dist-upgrade

echo "Minimal WSL installation setup"
echo "Software Install"
sudo apt install -y build-essential jq x11-apps

echo "Git Configuration"
git config --global user.name "Steve Miller"
git config --global user.email "me@r15cookie.com"
git config --global core.autocrlf input

echo "ssh-key"
sudo apt-get install -y keychain
echo "# SSH-Agent Config" >> ${HOME}/.bashrc
echo "/usr/bin/keychain --nogui $HOME/.ssh/id_rsa" >> ${HOME}/.bashrc
echo "source $HOME/.keychain/$HOSTNAME-sh" >> ${HOME}/.bashrc
echo "# XWin" >> ${HOME}/.bashrc
echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2}'):0" >>  ${HOME}/.bashrc
