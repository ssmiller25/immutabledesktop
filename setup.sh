#!/bin/sh

check_docker() {
  if command -v docker > /dev/null 2>&1; then
    echo "Docker Detected"
    return 0
  else
    if [ -d /mnt/chromeos ]; then
      echo "Go to https://dvillalobos.github.io/2020/How-to-install-and-run-Docker-on-a-Chromebook/ to install docker on ChromeOS"
    else
      echo "Docker not detected, and unsure of OS for instructions"
      echo "Install docker and re-run to continue"
    fi
  fi
}

check_docker
