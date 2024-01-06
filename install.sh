#!/usr/bin/env bash

source ./zsh/zshenv
source ./install/colors.sh

echo -e "${Yellow}󰩰 Welcome to Kanade's dotfiles..."

echo -e "${BoldRed}
 ______________________________________________________________________________
|                                !!!WARNING!!!                                 |
|   This script will delete all your config files! Use it at your own risks.   |
|______________________________________________________________________________|
"

echo -en "${Yellow} ${DefaultColor}Do you want to proceed? (Y/n)"
read yn

case $yn in
	y|Y|yes|Yes|YES|"" ) ;;
	* ) echo -e "${Green}󰇵 ${DefaultColor}Exiting..."; exit;;
esac

###########
# INSTALL #
###########

function dot_install() {
    sleep .2s
    echo
    . "$DOTFILES/install/config/install-${1}.sh"
    echo -e "${LightGreen} ${LightMagenta}${1} ${LightGreen}config has been installed.${DefaultColor}"
}

dot_install zsh
dot_install fonts
dot_install curl
dot_install git
dot_install mpv
dot_install nvim
dot_install tmux
dot_install zathura
