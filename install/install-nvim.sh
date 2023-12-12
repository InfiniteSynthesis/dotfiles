#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/nvim"

ln -sf "$DOTFILES/nvim/K-Snippets" "$XDG_CONFIG_HOME/nvim/K-Snippets"
ln -sf "$DOTFILES/nvim/coc-settings.json" "$XDG_CONFIG_HOME/nvim/coc-settings.json"
ln -sf "$DOTFILES/nvim/ftplugin" "$XDG_CONFIG_HOME/nvim/ftplugin"
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim/init.vim"
ln -sf "$DOTFILES/nvim/plug-snapshot" "$XDG_CONFIG_HOME/nvim/plug-snapshot"
ln -sf "$DOTFILES/nvim/plugconf" "$XDG_CONFIG_HOME/nvim/plugconf"