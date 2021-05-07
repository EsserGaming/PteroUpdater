
#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "$(tput setaf 1)This script must be run as root $(tput setaf 0)" 
   exit 1
fi

   echo "$(tput setaf 2)Updating wings... $(tput setaf 0)" 

#Update wings
cd /usr/local/bin
curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64
chmod u+x /usr/local/bin/wings
systemctl restart wings
cd
echo "$(tput setaf 4)Wings successfully updated! $(tput setaf 0)"