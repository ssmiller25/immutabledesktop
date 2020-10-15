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
  * Additional sensor calibartion: https://github.com/patjak/bcwc_pcie/wiki/Extracting-the-sensor-calibration-files
    * Calibration files NEEDED
  * apt-get install linux-headers-$(uname -r) git kmod libssl-dev checkinstall
  * After kernel update
```sh
cd /home/steve/git-external/patjak/bcwc_pcie
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
