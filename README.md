# mineimator-install
A quick way to install a universally-launchable "Mine-imator" instance on Debian GNU/Linux

## What does this script do?
This script allows the user to easily install the latest version of [Mine-imator 2.0.2](https://www.mineimatorforums.com/index.php?/topic/90789-mine-imator-202/) made for Debian GNU/Linux & Ubuntu.

It also allows you to launch the program from anywhere as a command, which is something that, by default, remarkably does not do. If you're using a launcher like [dmenu](https://tools.suckless.org/dmenu/), this can be particularly confusing because `mineimator` or "`mine-imator`" does not show up by default.

### Download/install instructions
1. Download the script into your `~/Downloads` folder within your home directory
2. Navigate to your `~/Downloads` directory:  
`cd ~/Downloads`  
3. Run the script with the following command, replacing `$USER` with your Debian username:  
`sudo -u $USER bash mineimator-install.sh`  

### NOTE: What distros does it work on?
[Debian "bookworm"](https://www.mineimatorforums.com/index.php?/topic/90789-mine-imator-202/) (also known as "*Debian 12 Stable*") is the only OS this was tested on. Your mileage may vary.

The build itself is designed for Ubuntu & Debian. If there is anyone who wants to contribute an alternative script path for Ubuntu, or make another install for another Linux-based OS, feel free to make a pull request.
