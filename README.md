LJD Ubuntu Init Script
===============================================================================

Updated for Ubuntu 16.04.

Installs my favorite packages and configures everything the way I like it.

    wget -O - https://goo.gl/iy4GXV | bash

<https://goo.gl/iy4GXV> redirects to
<https://raw.githubusercontent.com/lj-ditrapani/init/master/init.sh>


Additional steps

- Un-mute and set alsamixer volume
- Log out and log back in for group assignments & user settings to take effect
- Manually add core gnupg key
    - gpg --allow-secret-key-import --import main-sec.asc
    - gpg --edit-key main
    - trust
    - 5
    - quit
- Manually add ssh keys to .ssh
- Manually add passwords
    - git clone url .password-store
- Log into firefox sync


Setting up wireless
-------------------

Add the following lines to /etc/network/interfaces

    sudo vi /etc/network/interfaces
    # to connect on boot up
    auto wlan0
    iface wlan0 inet dhcp
    wpa-ssid <my_ssid>
    wpa-psk <my_ssid_password>

Then bring the interface up

    sudo ifup -v wlan0

or

    sudo ip link set wlan0 up

If blocked by rfkill

    rfkill list all
    sudo rfkill unblock all

Scan without wicd-curses

    sudo iwlist scan

To restart networking

    sudo service networking restart

pass
----

    sudo update-alternatives --config editor
    pick vim.gtk

    # generate random bytes
    sudo apt-get install rng-tools
    sudo rngd -r /dev/urandom
