# Notes

Notes before I can script

## Pop!_OS 20.04

* VSCode: Install and configure "Settings Sync"
* Settings: 
  * Setup "Night Light" to lower blue light in evening <https://askubuntu.com/questions/1088650/gnome-night-light-setting-from-the-command-line>
  * Power: Disable automatic brightness (doesn't work well on macbook)
* Installing the facetime camera driver
  * Instructions https://github.com/patjak/bcwc_pcie/wiki/Get-Started
  * apt-get install unrar
  * Commands:

    ```sh
    cd /home/steve/git-external/patjak/facetimehd-firmware
    make
    sudo make install
    ```

  * Additional sensor calibartion: https://github.com/patjak/bcwc_pcie/wiki/Extracting-the-sensor-calibration-files
    * Calibration files NEEDED
  * apt-get install linux-headers-$(uname -r) git kmod libssl-dev checkinstall
  * After kernel update

    ```sh
    cd /home/steve/git-external/patjak/bcwc_pcie
    make clean
    make
    sudo make install
    sudo depmod
    ```

* Keyboard bindings 
  * Super+Shift+s: Copy selected screenshot to clipboard
  * Super+s: Save selected screenshot to file
  * Super+r: Show the run command prompt
* Virtualbox shortcuts
  * For Macbook, need to change Virtualbox's Host Key to Right windows key (rigth command in Mac)
* Easel Driver
  * Got raw deb from <https://easel.inventables.com/>, but need to figure out where that lives...hopefully somewhere in a repo...
* Calibre (flatpak - package in Ubuntu doens't work with Python3...)
* ppp0 Fix (might be just MY vpn).  <https://serverfault.com/questions/716509/how-to-set-permanent-mtu-size-for-ppp0> but might look for more graceful way to adjust VPN settings besides a hack to ifup to set MTU manually...

# For both Chromebook and Linux Desktop

* install "keychain", then add following to personal profile:

```sh
# keychain stuff
eval `keychain --eval id_rsa $HOME/.ssh-rory/id_rsa`
```

# Other stuff

* In Debian based distors, make **sure** the editor is set to vim!
* In Debian based distors, copy sudoers.d/05-steve into /etc/sudoers.d - allow me to run ntpdate, mostly needed for windows WSL2 stuff
