#!/usr/bin/env bash

source "$DOTFILES/install/colors.sh"

echo -e "${Yellow} ${DefaultColor}We are going to install the following packages: \
${BoldGreen}gnome-tweaks gnome-shell-extensions curl texlive-full mpv tmux fzf zathura openvpn"
echo -en "${Yellow} ${DefaultColor}Do you want to proceed? (Y/n)$"
read yn

case $yn in
	y|Y|yes|Yes|YES|"" ) ;;
	* ) echo -e "${green}󰇵 ${DefaultColor}Exiting..."; exit;;
esac

echo -e "${Yellow} ${DefaultColor}You can also insall the optioanl packages \
${BoldGreen}qbittorrent-nox virtualbox sigil"
echo -en "${Yellow} ${DefaultColor}Do you want to install? (y/N)"
read optional

sudo apt install gnome-tweaks gnome-shell-extensions curl texlive-full mpv tmux fzf zathura openvpn

if [ $optional = "y" ] || [ $optional = "yes" ] || [ $optional = "Yes" ] || [ $optional = "YES" ]; then
    sudo apt install qbittorrent-nox virtualbox sigil
fi
