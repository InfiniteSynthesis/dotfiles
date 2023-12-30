#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/git"

# .gitconfig
ln -sf "$DOTFILES/git/gitconfig" "$XDG_CONFIG_HOME/git/config"

# .gitignore
ln -sf "$DOTFILES/git/gitignore" "$XDG_CONFIG_HOME/git/ignore"

# diff-so-fancy
ln -sf "$DOTFILES/git/diff-so-fancy" "$XDG_CONFIG_HOME/git"

# user information config
if [ -f "$DOTFILES/git/user-config" ]
then
	ln -sf "$DOTFILES/git/user-config" "$XDG_CONFIG_HOME/git"
fi
