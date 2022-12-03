#!/bin/sh
echo "Welcome to Pixarch Installation"
read -p "Do you want to install Pixarch[Y/N]:" choice

var="Y"
echo "$var $choice"
if [ $choice = $var ]
then
    echo "Beginning installation for Pixarch..."
    echo "Downloading packages for Pixarch..."
    # sudo pacman -S feh lightdm polybar rofi alacritty picom vim git

    echo "Installing LightDM..."
    read -p "Do you want to install the LightDM configuration?\n\nNOTE:\n1. Enter 'b' if you want to make a backup of your config file and store it in ~/.backupconfigs/lightdm/lightdm.conf, your original file lightdm.conf will be delete and the pixarch configuration file will be installed.\n2. Enter 'y' if you want to install lightdm.conf without making a backup. This will overwrite your current config.\n3. Enter 's' to skip lightdm's installation." selection

else
    echo "Bye."

fi

echo "Copying files to .config directory"
# Main config installation
# git clone https://github.com/heisenburgh/pixarch
# cd pixarch
# sudo mv * ~/.config
echo "Installing required fonts"
# Fonts
# cd ~
# git clone https://github.com/IdreesInc/Monocraft.git
# cd Monocraft/
# sudo cp Monocraft.otf ~/.local/share/fonts
# fc-cache -fv
echo "Vim configuration"
# cd ~
# mkdir .vim/plugged/ 
# mkdir .vim/autoload/
# sudo cp ~/.config/vim/.vimrc ~/
 
