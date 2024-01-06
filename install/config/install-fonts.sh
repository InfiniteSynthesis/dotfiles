#!/usr/bin/env bash

function install_basic_fonts() {
	mkdir -p "${1}"
	ln -sf "$DOTFILES/fonts/K Gothic.ttf" "${1}"
	echo "Install K Gothic.ttf in ${1}"

	ln -sf "$DOTFILES/fonts/MesloLGS NF Regular.ttf" "${1}"
	ln -sf "$DOTFILES/fonts/MesloLGS NF Bold.ttf" "${1}"
	ln -sf "$DOTFILES/fonts/MesloLGS NF Italic.ttf" "${1}"
	ln -sf "$DOTFILES/fonts/MesloLGS NF Bold Italic.ttf" "${1}"
	echo "Install MesloLGS NF.ttf in ${1}"
}

function install_linux_fonts() {
	ln -sf "$DOTFILES/fonts/SF-Pro.ttf" "${1}"
	echo "Install SF-Pro.ttf in ${1}"
}

unameOut="$(uname -s)"
case "${unameOut}" in
	Linux*)
		targetFolder=$XDG_DATA_HOME/fonts
		install_basic_fonts ${targetFolder}
		install_linux_fonts ${targetFolder};;
    Darwin*)
		targetFolder=$XDG_DATA_HOME/Fonts
		install_basic_fonts ${targetFolder};;
    *)
		exit;;
esac

