
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
