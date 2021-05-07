
#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "$(tput setaf 2)This script must be run as root $(tput setaf 2)" 
   exit 1
fi

# Panel
echo Updating panel
bash <(curl -s https://raw.githubusercontent.com/EsserGaming/PteroUpdater/main/panel.sh)

# Wings
echo Updating wings
bash <(curl -s https://raw.githubusercontent.com/EsserGaming/PteroUpdater/main/wings.sh)