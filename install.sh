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

echo -en "${Yellow} ${Default}Do you want to proceed? (Y/n)$"
read yn

case $yn in
	y|Y|yes|Yes|YES|"" ) ;;
	* ) echo -e "${Green}󰇵 ${Default}Exiting..."; exit;;
esac

###########
# INSTALL #
###########

function dot_install() {
    echo -e "${LightMagenta} Installing ${Green}${1} ${LightMagenta}config${Default}"
    . "$DOTFILES/install/config/install-${1}.sh"
}

dot_install zsh
dot_install curl
dot_install git
dot_install mpv
dot_install nvim
dot_install tmux
dot_install zathura
