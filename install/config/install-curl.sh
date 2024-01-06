#!/usr/bin/env bash

ln -sf "${DOTFILES}/curl/curlrc" "${XDG_CONFIG_HOME}/.curlrc"
echo -e "Install ${LightYellow}.curlrc${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}${DefaultColor}"
