#!/usr/bin/env bash

mkdir -p "${XDG_CONFIG_HOME}/mpv"

ln -sf "$DOTFILES/mpv/mpv.conf" "${XDG_CONFIG_HOME}/mpv"
echo -e "Install ${LightYellow}mpv.conf${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/mpv${DefaultColor}"
