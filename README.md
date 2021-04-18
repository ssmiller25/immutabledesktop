# Blast Workstation (blast-wk)

**ALPHA!!!** - Please do not use at the moment!

Gitops for your workstation!  Central premises are:

- OS Agnostic.  Goal is to be able to have a similar environment across Linux, MacOS, Chromebooks and Windows.
- Host configuration will be as automated as possible.  
- Almost all workloads are container images.
- All mutable "data" is backed up regularly, and without manual intervention, to the cloud.

[All work currently is in the develop branch](https://github.com/ssmiller25/immutabledesktop/tree/develop).  Once this is ready for release, will be merged in.  Existing code may change dratically

## Setup

- Minimal install to setup.
  - ChromeOS
    - [Setup Linux for ChromeOS](https://chromeos.dev/en/linux/setup) 
    - Run setup/setup.sh from this repo
  - Linux
    - Run setup/setup.sh from this repo
  - Windows
    - Start powershell as Administrator
    - Run `Set-ExecutionPolicy Bypass`
    - Run setup/setup.ps1, setup/setup2.ps1, setup/setup3.ps1
    - Once Linux is up, run setupwsl.sh and setupwsl2.sh
- Setup Rest of Local Environment (shell, dotfiles, backups).  Generally an ansible playbook run from a docker container against the local system
- Pre-pull all needed images (should be part of shortcuts)

## Blast?

The [name for my micro-cluster framwork](https://github.com/ssmiller25/blast).  I envision blast workstations being over multiple machines, so it's "kind-of" a cluster...
