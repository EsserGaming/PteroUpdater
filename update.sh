# Color info
BLUE='\033[1;34m'
LIGHT_GREEN='\033[1;32m'
NoColor='\033[0m'

# Panel
echo "$LIGHT_GREEN" Updating panel
bash <(curl -s https://raw.githubusercontent.com/EsserGaming/PteroUpdater/main/panel.sh)

# Wings
echo "$BLUE" Updating wings
bash <(curl -s https://raw.githubusercontent.com/EsserGaming/PteroUpdater/main/wings.sh)