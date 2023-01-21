# Pixarch  
![IMG_6845](https://user-images.githubusercontent.com/62053026/213844239-c5c3fc57-6274-4b3f-bc04-1ebbcf559fd0.png)
![GitHub last commit](https://img.shields.io/github/last-commit/heisenburgh/pixarch?style=plastic) ![GitHub](https://img.shields.io/github/license/heisenburgh/pixarch?style=plastic) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/heisenburgh/pixarch?style=plastic) ![GitHub language count](https://img.shields.io/github/languages/count/heisenburgh/pixarch?color=critical&style=plastic) [![](https://dcbadge.vercel.app/api/server/MQCpbUfa&style=plastic)](https://discord.gg/MQCpbUfa)

Linux Distributions, in general, do not look as polished as proprietary operating systems, for example *MacOS*. Even distributions focused to solely provide an aesthetically pleasing environment to work in (for example *XeroLinux*), do not have a consistent theme working throughout their ecosystem. Due to this particular reason, newcomers who generally consume the mainstream media and are intimidated by the command line use the argument of ‘Ugly’ against Linux users by comparing it to other proprietary operating systems. Another problem in the mainstream Linux world is that distributions specifically built with a focus for gaming in mind are limited, and rather look too flashy for anyone's taste. Even distributions like Pop!_OS don’t support video games without tweaking some stuff first. Gaming is an important part of most people’s lives and generally, when the topic of Linux gets fired up in front of newbies, the “I can’t play games on Linux” card is often pulled out. This distribution will also focus to fix this issue. *Pixarch (for Pixel+Arch)* was initially a rice, created by [Haard](https://github.com/haardispro) and Me for the i3 window manager. It included a simple yet beautiful Pixel theme, a modified Dock, a configured GRUB theme, and finally a modified Browser with a self-hosted search engine called Browsel (our own fork of Searx). As the idea grew, we felt that there was a need to create ‘yet another’ Linux distribution that had a balance between Minimalism, Eyecandy, moderate Privacy, and Gaming. This project ultimately has the aim of providing a consistent ecosystem that appeals to the general public and is aesthetically pleasing with gaming as it’s main focus, and minimalism and garbage free as its secondary characteristics.

## Screenshots <img src="https://media0.giphy.com/media/l3V0s5MV1kudEMP9C/giphy.gif?cid=82a1493bfq18fjawj4h3z9idqpfnn5brezcp05ffmdpkw0vf&rid=giphy.gif" width="20" height="25"/>
![VirtualBox_Pixarch_04_12_2022_10_34_44](https://user-images.githubusercontent.com/62053026/210720807-0465050e-2fe8-4718-96e6-be167cdebdf7.jpg)

![VirtualBox_Pixarch_19_01_2023_18_44_07](https://user-images.githubusercontent.com/62053026/213844526-177609e6-e6a1-4132-bd5a-39994d628187.png)

![IMG_8504](https://user-images.githubusercontent.com/62053026/210720860-ff41bd60-256d-419f-9e3d-4bd59deed608.jpg)

![IMG_4356](https://user-images.githubusercontent.com/62053026/210720877-359421ff-2276-429f-bc58-ec98a4e26a84.jpg)

## Donations
The art currently used in this project, is used after taking the permission of the artist. Although this is an open-source project, pixel artists need to be paid their usual fee to get custom made assets. The Pixarch, Browsel, and Pixulator logo along with the UI elements need to be custom made. Any donations will be much appreciated!

**Bitcoin:**
bc1qn7ch285wyyk8h4w8wzcyqyt69x6z3wg3mak9v5

**BuyMeACoffee:**
https://www.buymeacoffee.com/heisenburgr

**BCH:**
qzl2zg758f2rc9g5szwhxs6dqg8vcx9kwg2tdttzkg

**LTC:**
ltc1qc28rg7nuvrlw7hm6lyern36y4jsyp3u7fxnmtx

**ETH:**
0xA5212281CE861643346Dfa383c6Db9F31741C79a

## 1. Logistics <img src="https://media2.giphy.com/media/Gm8w0lMcTY0a4/giphy.gif?cid=82a1493bolqqorahnuv9y1fpi6ryo4hdzjw5dtt6mjdi92uv&rid=giphy.gif" height="25" width="25"/>

The project is divided into 3 divisions; Privacy, Aesthetic, and Gaming. The 3 divisions and their requirements are properly explained in the sections provided below.

### 1.1 Privacy

Privacy is an important feature of any computer system. Although this distribution does not focus on privacy as much as Qubes, Tails or any other privacy oriented distribution, privacy is still a major factor when people select their distribution. After all, nobody wants a bunch of spyware etched onto their system as soon as they install the distribution. Internet privacy is an important feature that is more or less required by everybody both in the industry and in the mainstream area. However, we do not require ‘neckbeard’ levels of privacy built into the browser. In my perspective, we require a privacy respecting search engine that does not send metadata to the host and keeps the user safe. As all search engines are hosted by someone who is not you, there is little reason to trust what goes on behind the scenes. Even privacy respecting search engines like DuckDuckGo is reported to store metadata and spy on you according to some reports. To prevent this, an obvious and intuitive solution would be to pull the search results from DuckDuckGo by a program, and then render it on your browser. Thankfully, Searx is a program that does exactly what I detailed above. It pulls data from around 30 different search engines, sorts it and then displays the results. It is incredibly easy to set up and is self-hosted, meaning you don’t have to rely on a third party to get it working. However, installing Searx manually is a pain. During the installation of Pixarch, or during the welcome screen, a checkable option will be provided that can be ticked or unticked. If it remains ticked, an automation sequence will automatically install and configure Searx. The idea of integrating a VPN into the system popped into my mind but as I have virtually no knowledge about VPNs, I have not included it in the to-do. Anybody with knowledge about it and can suggest implementing it. Anyone with suggestions or more ideas related to Privacy can suggest them in the chat.

### 1.12 Privacy: To-do

Visit the Searx (or the SearxNG) website to know more about Searx. Create a script to install Searx/SearxNG onto the computer. Configure the HTML and the CSS of the default landing page to match the theme of the distribution. Configure the search engine to fine tune it according to our needs.

### 1.2 Aesthetic

Aesthetics are a dealbreaker when a person selects their distribution. Especially to people who play video-games, aesthetics are an important part of their life. Pixarch has a pixelated aesthetic that is sober and pleasing to the eyes. The main desktop screen consists of a Dock (an already configured Plank Dock) which will have the option to be kept off, a pixelated Wallpaper, a Time widget that has the pixelated font applied to it, and the top bar (an already configured Polybar). This basic theme will be followed across all tiling window manager options that will be provided during installation. The font will remain consistent across all applications (Monocraft - Idrees Hassan, open source) and the user will, of course, have the option to change the font. As of now, the GRUB theme, the Login Manager (LightDM) theme, and the Window Manager theme all match the pixelated aesthetic. Anyone with any more aesthetic related suggestions can suggest it in the chat.

### 1.21 Aesthetic: To-do

Create a GUI using Qt or GTK to configure the appearance settings. It includes changing the font, changing the color-scheme, changing the wallpaper, an option to turn off the dock, and an option to turn off the widget. The GUI should match the overall theme of the system. Fine-tune the GRUB theme, change the GRUB theme GFX-mode/the resolution to native. Create more pixel themed dock icons for more and more applications. Change the discord theme to match the system theme. Create configurations for different ‘flavours’ of Pixarch, these flavours are just different tiling window manager options: i3 (completed) Qtile (completed) DWM (completed) Xmonad Hyprland Awesome
1.3 Gaming
Gaming is the main focus of Pixarch. Installing drivers properly is a pain on Linux, and automating the way that drivers are installed on the system will save a lot of time and make it easy to use, this includes enabling the multilib repository and finding and installing appropriate drivers for Nvidia, AMD, and Intel. Further, installing the Vulkan and the Steam packages would make it easier for the everyday user who doesn’t want to play tag with the command-line. The goal of Pixarch is to provide and aesthetically pleasing, ‘just works’ gaming distribution. Proton will be installed automatically during the Steam installation. Proton provides and extra layer to Wine that ultimately helps the user to run Windows games with ease. Apart from running games from Windows, there will be a program (not exactly an emulator, but a frontend) to run console games. Emulating retro console games is an attraction to many and is extremely healthy towards conserving older games that might go extinct. Pixarch will have it’s own frontend for running emulators, like OpenEMU or RetroArch. It will make use of cores or ‘plugins’ and provide a frontend to command line emulators. Basically, an emulator frontend is a menu system that allows you to launch all of your emulators from one single interface, similar to a modern console home menu—and/or provides a UI for command line emulators which lack native user interfaces. Read this article to gain more insight on Emulator Frontends.

### 1.32 Gaming: To-do

Create automation scripts to install drivers and adding multilib to the pacman configuration file. Pre-install Steam, Proton and Vulkan support on the system. Create an emulation frontend, basically a GUI that matches with the Pixarch aesthetic, make use of emulator cores to make. More on this later.
For testers
There is no ISO for Pixarch, to test the theme-ing and contribute, you’ll need to install Arch Linux and then manually install and configure the dot-files as instructed.

### 2. Installing Arch Linux

Use the install script on the archlinux iso (archinstall) select things as you wish, but opt for the minimal profile.
when asked about additional packages, request git.
reboot.

### 2.1 Installing the dot-files
Clone this repo to your home directory ( ~ ):

```bash
git clone https://github.com/heisenburgh/pixarch.git
```

Change directory to pixarch/installation_scripts:

```bash
cd pixarch/installation_scripts
```

Run install.sh and follow the prompts:

```bash
./install.sh
```

On reboot you will be ready to go 
Use MOD+space to open Rofi (Your App Launcher) and MOD+enter to open Alacritty (Your Terminal Emulator)
