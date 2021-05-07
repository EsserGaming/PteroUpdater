
#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "$(tput setaf 1)This script must be run as root $(tput setaf 0)" 
   exit 1
fi
echo "$(tput setaf 2)Updating panel... $(tput setaf 0)"
# Update Panel
cd /var/www/pterodactyl
php artisan down
curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv
chmod -R 755 storage/* bootstrap/cache
composer install --no-dev --optimize-autoloader
php artisan view:clear && php artisan config:clear
php artisan migrate --seed --force
chown -R www-data:www-data /var/www/pterodactyl/*
php artisan queue:restart && php artisan up
cd
echo "$(tput setaf 4)Panel successfully updated! $(tput setaf 0)"