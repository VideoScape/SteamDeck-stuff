> :warning: THIS SCRIPT IS INTENDED FOR PEOPLE WHO ACTUALLY KNOW WHAT THE UTILIZED LINUX-COMMANDS DO, OTHERWISE USAGE IS NOT RECOMMENDED! :warning:
# A post-update script for the Steam Deck

This script does some stuff useful for when a system update resets non-flatpack software
> If you are weary of random scripts from the internet, you can review the current version below

Ideas for other stuff the script could do are highly appreciated!

## Running the script

1. If you haven't done so yet, you need to set a password for the `deck` user (the default user) to use the `sudo` command, you have two ways of doing this:
  - Either, you can set the password in the `System Settings` app under `Users -> Steam Deck User -> Change Password`
  - Or you can set the password with the `passwd` command, though you should be careful of what you type, as the prompt doesn't show how many keys you've input
> Remember the password you set, in some cases you won't be able to change it if you don't!

adding personal Zoho service, do not bother otherwise if not me.

adding https://github.com/krum110487/SSHDeck this in too so it will help.

2. You can now run this with the following commands:
```shell
# download the script to the current directory
wget https://raw.githubusercontent.com/VideoScape/SteamDeck-stuff/main/script.sh

# execute the script and change permissions so it works
sudo chmod a+x script.sh
sudo ./script.sh
```
