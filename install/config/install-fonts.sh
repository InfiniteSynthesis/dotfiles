#!/usr/bin/env bash

function install_basic_fonts() {
	mkdir -p "${1}"
	ln -sf "$DOTFILES/fonts/K Gothic.ttf" "${1}"
	echo -e "Install ${LightYellow}K Gothic${DefaultColor} in ${LightYellow}${1}${DefaultColor}"

	ln -sf "$DOTFILES/fonts/MesloLGS NF Regular.ttf" "${1}"
	ln -sf "$DOTFILES/fonts/MesloLGS NF Bold.ttf" "${1}"
	ln -sf "$DOTFILES/fonts/MesloLGS NF Italic.ttf" "${1}"
	ln -sf "$DOTFILES/fonts/MesloLGS NF Bold Italic.ttf" "${1}"
	echo -e "Install ${LightYellow}MesloLGS NF${DefaultColor} in ${LightYellow}${1}${DefaultColor}"
}

function install_linux_fonts() {
	ln -sf "$DOTFILES/fonts/SF-Pro.ttf" "${1}"
	echo -e "Install ${LightYellow}San Francisco Pro${DefaultColor} in ${LightYellow}${1}${DefaultColor}"
}

unameOut="$(uname -s)"
case "${unameOut}" in
	Darwin*)
		fontFolder=$XDG_DATA_HOME/Fonts
		install_basic_fonts ${fontFolder};;
	*)
		fontFolder=$XDG_DATA_HOME/fonts
		install_basic_fonts ${fontFolder}
		install_linux_fonts ${fontFolder};;
esac
