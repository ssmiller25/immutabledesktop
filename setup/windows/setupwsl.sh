#!/usr/bin/env bash

set -Eeuo pipefail
trap cleanup SIGINT SIGTERM ERR EXIT

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

cleanup() {
  trap - SIGINT SIGTERM ERR EXIT
  # script cleanup here
}

echo "Minimal WSL installation setup"
echo "Software Install"
sudo apt install -y build-essential jq 

echo "Git Configuration"
git config --global user.name "Steve Miller"
git config --global user.email "me@r15cookie.com"
git config --global core.autocrlf input