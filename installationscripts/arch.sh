#!/bin/sh
echo "Welcome to Pixarch Installation"
echo "Do you want to install Pixarch[Y/N]:"

sudo pacman -S feh lightdm polybar rofi alacritty picom vim git
echo "Done installing basic packages"

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
 
