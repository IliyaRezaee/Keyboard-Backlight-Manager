#! /usr/bin/bash

sudo apt install acpi-support
sudo cp /etc/acpi/asus-keyboard-backlight.sh /usr/bin/asus-keyboard-backlight
sudo apt install libclang-dev libudev-dev pkg-config rustc cargo git
cd ~/Downloads
git clone https://gitlab.com/asus-linux/asusctl.git
cd asusctl
make
sudo make install

sudo cp ./keyboard-backlight-manager /usr/bin
sudo cp "Keyboard Backlight Manager.desktop" /usr/share/applications
