# Blast Workstation (blast-wk)

My vision for an immutable desktop "system".  [Blast](https://github.com/ssmiller25/blast).  Central premises are:

- Almost all workloads are container images
- All mutable "data" is backed up regularly, and without manual intervention, to the cloud.
- Any **base** can be used for the workstation - Linux, Mac, ChromeOS, or even Windows!

Previous [ansible based system is kept on the ansible-base branch](https://github.com/ssmiller25/immutabledesktop/tree/ansible-base) for historical purposes.  Eventually the only ansible recipes will be for bootstrapping the initial OSes.

## Installation

This is **VERY** much alpha.  

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
    - Once LInux is up, run setupwsl.sh and setupwsl2.sh
- Setup Rest of Local Environment (shell, dotfiles, backups).  Generally an ansible playbook run from a docker container against the local system
- Pre-pull all needed images (should be part of shortcuts)