
#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "$(tput setaf 1)This script must be run as root $(tput setaf 7)" 
   exit 1
fi
echo "$(tput setaf 4)Updating wings... $(tput setaf 7)" 
#Update wings
cd /usr/local/bin
curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64
chmod u+x /usr/local/bin/wings
systemctl restart wings
cd
echo "$(tput setaf 4)Wings updated! $(tput setaf 7)" 