#!/bin/bash
#!/bin/sh


PASSWORD="DEFAULT_EMPTY_VALUE"


# disable the readonly filesystem
printf "$PASSWORD\n" | sudo steamos-readonly disable

# initialize the pacman keyring
pacman-key --init
pacman-key --populate archlinux holo

# install some packages used by the ark app to decompress some certain filetypes
pacman -S p7zip unrar --noconfirm
pacman -S warpinator --noconfirm
flatpak run space.crankshaft.Crankshaft
curl -L https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_prerelease.sh | sh

wget "https://assist.zoho.eu/api/v2/install_urs?type=2&encapiKey=yA6KbntfvQylyz1XSEk715iD8Y01pa9q3nnjtS7lKcYheIayiKE%2BhhRoJ4GzI2be0ICF5%2F8Aao8Vc9rruI1WfJA9MtVUK5TGTuv4P2uV48xhu9mNdN8uhJyoA7EQEqJAcBks&app=linux&version=64bit&isDebian=false" -P /home/deck/stuff/ -O zohoassist_1.0.0.1.zip

unzip zohoassist_1.0.0.1.zip -d /home/deck/stuff/  && chmod +x home/deck/stuff/install.bin && sudo /home/deck/stuff/install.bin
printf "$PASSWORD\n" | sudo systemctl enable ZohoAssistUrs.service
printf "$PASSWORD\n" | sudo systemctl start ZohoAssistUrs.service


wget https://raw.githubusercontent.com/krum110487/SSHDeck/main/bin/Install.sh -P /home/deck/stuff/
printf "$PASSWORD\n" | sudo cd "/home/deck/Downloads"; chmod +x /home/deck/stuff/Install.sh; /home/deck/stuff/Install.sh

# re-enable the readonly filesystem
steamos-readonly enable


rm -rf /home/deck/stuff

echo "Done!"

exit
