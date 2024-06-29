# Exit immediately if a command exits with a non-zero status
set -e

# Needed for all installers
sudo apt update -y
sudo apt install -y curl git unzip

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Run installers
sit_back="Sit back and wait while we tune your Ubuntu"

options='
\n
What do you plan to use your Ubuntu for?\n
What are you?:\n
1. System Administrator\n
2. Researcher/Academia\n
3. Software Developer\n
4. Multimedia Creator\n
5. Graphic Designer\n
6. Data Scientist\n
7. Web Developer\n
8. Office User\n
9. Casual User\n
0. Gamer\n

'

echo -e $options
read -p "Enter choice (1~9,0):" choice

case $choice in
    1) 
        echo "You chosed System Administrator setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/sysadmin/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/terminals/*.sh; do source $script; done
        ;;
    2) 
        echo "You chosed Researcher/Academia setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/academia/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        ;;
    3) 
        echo "You chosed Software Developer setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/softdev/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/terminals/*.sh; do source $script; done
        ;;
    4) 
        echo "You chosed Multimedia Creator setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/multimedia/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        ;;
    5) 
        echo "You chosed Graphic Designer setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/graphics/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        ;;
    6) 
        echo "You chosed Data Scientist setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/datasci/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        ;;
    7) 
        echo "You chosed Web Developer setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/webdev/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/terminals/*.sh; do source $script; done
        ;;
    8) 
        echo "You chosed Gamer setup"
        echo $sit_back
        for script in ~/.local/share/fresher/install/gamer/*.sh; do source $script; done
        for script in ~/.local/share/fresher/install/util/*.sh; do source $script; done
        ;;
    *)  
        echo -e "Invalid choice. Try again\n"
        ;;
        
esac


# Upgrade everything that might ask for a reboot last
sudo apt upgrade -y

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Logout to pickup changes
gum confirm "Ready to logout for all settings to take effect?" && gnome-session-quit --logout --no-prompt
