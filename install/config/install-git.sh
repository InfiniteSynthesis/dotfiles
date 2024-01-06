#!/usr/bin/env bash

mkdir -p "${XDG_CONFIG_HOME}/git"

# .gitconfig
ln -sf "$DOTFILES/git/gitconfig" "${XDG_CONFIG_HOME}/git/config"
echo -e "Install ${LightYellow}gitconfig${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/git${DefaultColor}"

# .gitignore
ln -sf "$DOTFILES/git/gitignore" "${XDG_CONFIG_HOME}/git/ignore"
echo -e "Install ${LightYellow}gitignore${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/git${DefaultColor}"

# diff-so-fancy
ln -sf "$DOTFILES/git/diff-so-fancy" "${XDG_CONFIG_HOME}/git"
echo -e "Install ${LightYellow}diff-so-fancy${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/git${DefaultColor}"

# user information config
if [ -f "$DOTFILES/git/user-config" ]
then
	ln -sf "$DOTFILES/git/user-config" "${XDG_CONFIG_HOME}/git"
	echo -e "Install ${LightYellow}user-config${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/git${DefaultColor}"
fi
