#!/bin/bash

echo "Welcome to Pixarch Installation Script"

export LINKDOT=${PWD%/*}

sudo pacman -S  go vim htop firefox xorg-server xorg-xinit xorg-xrdb xorg-xprop \
		rofi exa pavucontrol tmux pamixer fzf xdg-user-dirs plank sddm lf \
		feh git openssh alacritty picom polybar dash xss-lock dialog dex --needed --noconfirm

sudo ln -sfT dash /usr/bin/sh
xdg-user-dir

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
export PATH=$PATH:/home/$USER/.local/bin

echo 'Installing yay as AUR helper.'
	cd /tmp
	git clone https://aur.archlinux.org/yay.git
        cd yay
	makepkg -si
	cd ..
	rm -rf yay
        yay -S ttf-monocraft ttf-nerd-fonts-symbols-mono --answerdiff=None --noremovemake --pgpfetch --answerclean=None --noconfirm --asdeps
	fc-cache -fv


i3=$(dialog --stdout --inputbox "Install i3? [y/N]" 0 0) || exit 1
clear
shopt -s nocasematch
if [[ $i3 =~ y ]]
then
	sudo pacman -S i3-wm --noconfirm
	ln -sf $LINKDOT/flavours/i3 /home/$USER/.config/
        
else
	echo "-- moving to Qtile"
fi

qtile=$(dialog --stdout --inputbox "Install Qtile? [y/N]" 0 0) || exit 1
clear
shopt -s nocasematch
if [[ $qtile =~ y ]]
then
	sudo pacman -S qtile --noconfirm
	ln -sf $LINKDOT/flavours/qtile /home/$USER/.config/
else 
	echo "-- if you didn't install i3 or Qtile, you're on your own for a GUI."
fi

ln -sf $LINKDOT/config/alacritty /home/$USER/.config/
ln -sf $LINKDOT/config/lf /home/$USER/.config/
ln -sf $LINKDOT/config/picom /home/$USER/.config/
ln -sf $LINKDOT/config/polybar /home/$USER/.config/
ln -sf $LINKDOT/config/rofi /home/$USER/.config/
ln -sf $LINKDOT/config/rofi-power-menu /home/$USER/.config/
#Installing vim-plug and moving vimrc 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $LINKDOT/config/vim/.vimrc /home/$USER/
vim +PlugInstall +qall
#Starship bash prompt
curl -sS https://starship.rs/install.sh | sh
ln -sf ~/pixarch/config/starship.toml ~/.config/


theme=$(dialog --stdout --inputbox "Enter sudo password to copy Grub theme and SDDM theme to correct locations and fix the config files. Otherwise skip configuring both. Understand? [y/N]" 0 0) || exit 1
if [[ $theme =~ y ]]
then
	        sudo cp -r $LINKDOT/boot/grub/grubel /boot/grub/
		sudo cp -r $LINKDOT/boot/sddm/themes/pixarch_sddm /usr/share/sddm/themes/
		sudo sed 's/\#GRUB_THEME\=\"\/path\/to\/gfxtheme\"/GRUB_THEME=\"\/boot\/grub\/grubel\/theme.txt\"/' -i /etc/default/grub
                sudo cp $LINKDOT/installation_scripts/theme.conf /etc/sddm.conf
else 
	echo "Grub and SDDM theme not installed."
fi
"""
browsel=$(dialog --stdout --inputbox "Install browsel for Private search and Web browser? [y/N]" 0 0) || exit 1
if [[ $browsel =~ y ]]
then
	cd ~/code/aur
	yay -G searxng-git
	cd searxng-git
	patch PKGBUILD -i $LINKDOT/applications/browsel/searxng.patch
	yay -S searxng-git --answerdiff=None --noremovemake --pgpfetch --answerclean=None --noconfirm --asdeps
	makepkg -si
	cd ~/code/aur
	yay -G surf-git
	cd surf-git
	wget https://surf.suckless.org/patches/homepage/surf-2.0-homepage.diff
	sed 's/https\:\/\/duckduckgo\.com/http\:\/\/127.0.0.1\:8888/' -i surf-2.0-homepage.diff
	patch PKGBUILD -i $LINKDOT/applications/browsel/surf.patch
	makepkg -si
else
	echo 'Browser and Search engine not installed.'
fi
"""
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo systemctl enable sddm

# have to make script to enable parallel installation in arch
sudo sed -i 's/ParallelDownloads = .*/ParallelDownloads = 5/' /etc/pacman.conf



