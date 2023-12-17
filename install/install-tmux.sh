#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/tmux/plugins"

ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux"

if [ -d "$DOTFILES/tmux/tmux-tokyo-night" ]
then
	ln -sf "$DOTFILES/tmux/tmux-tokyo-night" "$XDG_CONFIG_HOME/tmux/plugins"
fi

if [ -d "$DOTFILES/tmux/tmux-window-name" ]
then
	ln -sf "$DOTFILES/tmux/tmux-window-name" "$XDG_CONFIG_HOME/tmux/plugins"
fi

if [ -d "$DOTFILES/tmux/extrakto" ]
then
	ln -sf "$DOTFILES/tmux/extrakto" "$XDG_CONFIG_HOME/tmux/plugins"
fi

if [ -d "$DOTFILES/tmux/tpm" ]
then
	ln -sf "$DOTFILES/tmux/tpm" "$XDG_CONFIG_HOME/tmux/plugins"
	"$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
fi
