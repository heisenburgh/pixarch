#!/bin/sh
echo "Welcome to Pixarch Installation"
read -p "Do you want to install Pixarch[Y/N]: " choice

var="Y"
if [ $choice = $var ]
then
    echo "Beginning installation for Pixarch..."
    echo "Downloading packages for Pixarch..."
    # sudo pacman -S feh sddm polybar rofi alacritty picom vim git

    echo "Installing SDDM..."
    read -p "Do you want to install the SDDM configuration?`echo $'\n>>> '`NOTE:`echo $'\n\n> '`1. Enter 'b' if you want to make a backup of your config file and store it in ~/.backupconfigs/lightdm/lightdm.conf, your original file lightdm.conf will be deleted and the pixarch configuration file will be installed.`echo $'\n\n> '`2. Enter 'y' if you want to install lightdm.conf without making a backup. This will overwrite your current config.`echo $'\n\n> '`3. Enter 's' to skip lightdm's installation.`echo $'\n'`Enter Choice: " selection

else
    echo "Bye."

fi

echo "Copying files to .config directory"
# Main config installation
# cd ~/.config/ 
# sudo rm -r *
# git clone https://github.com/heisenburgh/pixarch
# cd pixarch
# sudo mv * ~/.config
echo "Installing required fonts"
# Fonts
# cd ~
# git clone https://github.com/IdreesInc/Monocraft.git
# cd Monocraft/
# sudo cp Monocraft.otf ~/.local/share/fonts
# sudo mkdir /usr/share/fonts/OTF/ 
# sudo cp Monocraft.otf /usr/share/fonts/OTF
# fc-cache -fv
echo "Vim configuration"
# cd ~
# mkdir .vim
# mkdir .vim/plugged/ 
# mkdir .vim/autoload/
# sudo cp ~/pixarch/vim/.vimrc ~/

