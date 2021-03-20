# Blast Workstation (blast-wk)

My vision for an immutable desktop "system".  [Blast](https://github.com/ssmiller25/blast).  Central premises are:

- Almost all workloads are container images
- All mutable "data" is backed up regularly, and without manual intervention, to the cloud.
- Any **base** can be used for the workstation - Linux, Mac, ChromeOS, or even Windows!

Previous [ansible based system is kept on the ansible-base branch](https://github.com/ssmiller25/immutabledesktop/tree/ansible-base) for historical purposes.  Eventually the only ansible recipes will be for bootstrapping the initial OSes.

## Getting Started

This is **VERY** much alpha.  

- [setup.sh](setup.sh) Bootstrap for Linux and ChromeOS
- **TODO** Bootstrap for Windows
- docker/* - Docker containers