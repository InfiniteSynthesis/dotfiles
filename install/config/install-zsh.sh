#!/usr/bin/env bash

mkdir -p "${ZDOTDIR}"

ln -sf "${DOTFILES}/zsh/zshenv" "${HOME}/.zshenv"
echo -e "Install ${LightYellow}.zshenv${DefaultColor} in ${LightYellow}${HOME}${DefaultColor}"

ln -sf "${DOTFILES}/zsh/zshrc" "${ZDOTDIR}/.zshrc"
echo -e "Install ${LightYellow}.zshrc${DefaultColor} in  ${LightYellow}${ZDOTDIR}${DefaultColor}"
