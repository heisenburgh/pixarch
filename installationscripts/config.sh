# Move all the riced files to the config directory
# Remove existing files in config directory


git clone https://github.com/heisenburgh/pixarch
cd .config/
sudo rm i3/ rofi/ alacritty/ polybar/ 
cd ~/pixarch/config
cp i3/ .config/
cp rofi/ .config/
cp polybar/ .config/
