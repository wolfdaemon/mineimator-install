#!/bin/bash

# NOTE:
# - run this script in the `~/Downloads` folder on your system
# - run this script as an administrator:
# 	- ("sudo mineimator-install.sh")

# Prompt the user to inform then that this will be an interactive script
printf "NOTICE: Stay here with us! This script is interactive.\n\n"

# Prompt the user if they ran the script properly before executing
read -p " Did you:`echo $'\n\n1. '`Download this script into your \"/home/$USER/Downloads\" folder?`echo $'\n\n '`And are you:`echo $'\n\n2. '`Running this script within your \"/home/$USER/Downloads\" folder?`echo $'\n3. '`Running this script with the command: \"sudo -u $USER bash mineimator-install.sh\"? [Y/n]`echo $'\n> '`" -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	# get the Mine-imator 2.0.2 .deb file from the website
	wget https://www.mineimator.com/dl/mineimator-2.0.2-deb
	# rename executable into a proper .deb file
	mv /home/$USER/Downloads/mineimator-2.0.2-deb /home/$USER/Downloads/mineimator-2.0.2.deb
	# install the required dependencies
	sudo apt install libdouble-conversion-dev libvdpau-dev libva-dev libsndio-dev libbsd-dev libtiff*
	# create a symbolic link to Mine-imator's Debian install path, so that you can launch it anywhere
	sudo ln -s /usr/local/bin/Mine-imator/Mine-imator /usr/local/bin/mineimator
	# symbolically link `libtiff6` with `libtiff5` within the kernel:
	sudo ln -s /usr/lib/x86_64-linux-gnu/libtiff.so.6 /usr/lib/x86_64-linux-gnu/libtiff.so.5
	echo "\n"
	echo "Now, install Mine-imator 2.0.2 by manually entering the following command into your terminal, and press ENTER:"
	echo "sudo dpkg -i /home/$USER/Downloads/mineimator-2.0.2.deb"
fi
