# Pixarch
> *"We milked Arch, next is your mom."*

Pixarch is a pixel-themed minimalistic Arch Linux rice. It has its own extremely minimalistic browser named Browsel, and has custom configurations for Rofi, Alacritty, i3 and Polybar.
Pixarch uses the wonderful [Monocraft](https://github.com/IdreesInc/Monocraft) font made by Idrees Hassan.

## Screenshots
![VirtualBox_Arch dwm rice_01_12_2022_18_18_54](https://user-images.githubusercontent.com/62053026/205472576-6ad8b65c-8104-4df9-af6b-b6f660a8e716.png)
![Screenshot 2](https://github.com/heisenburgh/pixarch/blob/main/screenshots/1.png?raw=true)

## Installation
Install scripts for various linux distributions are placed in the `installationscripts` folder. Although Pixarch is ideally meant to run for Arch Linux only, ports for Debian, Fedora, and other distributions is a work in progress.

## Browsel
Browsel is Pixarch's own private instance of the [Searx](searx.github.io) search engine. 
> Searx is a free internet metasearch engine which aggregates results from more than 70 search services. Users are neither tracked nor profiled. Additionally, searx can be used over Tor for online anonymity.
Searx protects the privacy of its users in multiple ways, it does not serve ads or tracking content unlike most search services. So private data is not forwarded to third parties who might monetize it. Besides protecting users from search services, both referring page and search query are hidden from visited result pages.
The problem with search engines (even DuckDuckGo, that is popular amongst the community) is that it is run by a third-party, and the user has to trust the adminstrator for what he runs behind the curtains. This is problematic as the user does not know what information the adminstrator is censoring behind closed doors.
You can always access public instances of Searx, but it encounters the same problems as described above. Therefore, we run a private instance of Searx on Pixarch known as 'Browsel' (Browser+Pixel, very cheeky, also, a misnomer.). While running the installation script, you may stop the installation of Browsel if you don't need it on your system. Alternatively, you can install it yourself using the steps described in Browsel Installation.


