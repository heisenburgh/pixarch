![213844239-c5c3fc57-6274-4b3f-bc04-1ebbcf559fd0](https://user-images.githubusercontent.com/116705410/213900555-49337b76-4097-4af6-bd01-ab671c69668d.png)
### 1. Installing Arch Linux

Use the install script on the archlinux iso (archinstall) select things as you wish, but opt for the minimal profile.
when asked about additional packages, request git.
reboot.

### 2. Installing the dot-files
Clone this repo to your home directory ```~/```:
```bash
git clone https://github.com/heisenburgh/pixarch.git
```
Change directory to ```pixarch/installation_scripts```:
```bash
cd pixarch/installation_scripts
```
Run ```install.sh``` and follow the prompts:
```bash
./install.sh
# Still in development and contains bugs. Run at your own risk.
```
On reboot you will be ready to go.
Use MOD+space to open Rofi (Your App Launcher) and MOD+enter to open Alacritty (Your Terminal Emulator)

#### To install the latest testing branch

```bash
git checkout testing 
```
```bash
cd installation_scripts && ./install.sh
```

