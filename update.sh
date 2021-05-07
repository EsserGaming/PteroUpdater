#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "$(tput setaf 1)This script must be run as root $(tput setaf 7)" 
   exit 1
fi

# Panel
echo "$(tput setaf 2)Updating panel... $(tput setaf 7)" 
bash <(curl -s https://raw.githubusercontent.com/EsserGaming/PteroUpdater/main/panel.sh)

# Wings
echo "$(tput setaf 2)Updating wings... $(tput setaf 7)" 
bash <(curl -s https://raw.githubusercontent.com/EsserGaming/PteroUpdater/main/wings.sh)

echo "$(tput setaf 4)Pterodactyl updated!... $(tput setaf 7)" 