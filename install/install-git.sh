#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/git"

ln -sf "$DOTFILES/git/diff-so-fancy" "$XDG_CONFIG_HOME/git"
ln -sf "$DOTFILES/git/gitconfig" "$XDG_CONFIG_HOME/git/config"
ln -sf "$DOTFILES/git/gitignore" "$XDG_CONFIG_HOME/git/ignore"

if [ -f "$DOTFILES/git/user-config" ]
then
	ln -sf "$DOTFILES/git/user-config" "$XDG_CONFIG_HOME/git/user-config"
fi
