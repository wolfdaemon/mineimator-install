#!/bin/bash

# NOTE: run script in the ~/Downloads folder on your system

# give this script authorization
sudo /home/$USER/Downloads/mineimator-install.sh
# get the Mine-imator 2.0.2 .deb file from the website
wget https://www.mineimator.com/dl/mineimator-2.0.2-deb
# install Mine-imator 2.0.2
dkpg -i Mine-imator 2.0.2.deb
# install the required dependencies
sudo apt install libdouble-conversion-dev libvdpau-dev libva-dev libsndio-dev libbsd-dev libtiff*
# fix broken dependencies (in-case the dependencies are messed up)
apt --fix-broken install
# symbolically link `libtiff6` with `libtiff5` within the kernel:
cd /usr/lib/x86_64-linux-gnu/
ln -s /usr/lib/x86_64-linux-gnu/libtiff.so.6 /usr/lib/x86_64-linux-gnu/libtiff.so.5
# create a symbolic link to Mine-imator's Debian install path, so that you can launch it anywhere
ln -s /usr/local/bin/Mine-imator/Mine-imator /usr/local/bin/mineimator
