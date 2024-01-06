#!/usr/bin/env bash

mkdir -p "${XDG_CONFIG_HOME}/zathura"

ln -sf "${DOTFILES}/zathura/zathurarc" "${XDG_CONFIG_HOME}/zathura"
echo -e "Install ${LightYellow}zathurarc${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/zathura${DefaultColor}"
