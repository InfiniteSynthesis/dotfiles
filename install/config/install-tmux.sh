#!/usr/bin/env bash

mkdir -p "${XDG_CONFIG_HOME}/tmux/plugins"

# conf
ln -sf "$DOTFILES/tmux/tmux.conf" "${XDG_CONFIG_HOME}/tmux"
echo -e "Install ${LightYellow}tmux.conf${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/tmux${DefaultColor}"

# color scheme
if [ -d "$DOTFILES/tmux/tmux-tokyo-night" ]
then
	ln -sf "$DOTFILES/tmux/tmux-tokyo-night" "${XDG_CONFIG_HOME}/tmux/plugins"
	echo -e "Install ${LightYellow}tmux-tokyo-night${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/tmux/plugins${DefaultColor}"
fi

# tmux window name
if [ -d "$DOTFILES/tmux/tmux-window-name" ]
then
	ln -sf "$DOTFILES/tmux/tmux-window-name" "${XDG_CONFIG_HOME}/tmux/plugins"
	echo -e "Install ${LightYellow}tmux-window-name${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/tmux/plugins${DefaultColor}"
fi

# extrakto
if [ -d "$DOTFILES/tmux/extrakto" ]
then
	ln -sf "$DOTFILES/tmux/extrakto" "${XDG_CONFIG_HOME}/tmux/plugins"
	echo -e "Install ${LightYellow}extrakto${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/tmux/plugins${DefaultColor}"
fi

# tpm
if [ -d "$DOTFILES/tmux/tpm" ]
then
	ln -sf "$DOTFILES/tmux/tpm" "${XDG_CONFIG_HOME}/tmux/plugins"
	echo -e "Install ${LightYellow}tpm${DefaultColor} in ${LightYellow}${XDG_CONFIG_HOME}/tmux/plugins${DefaultColor}"
	"${XDG_CONFIG_HOME}/tmux/plugins/tpm/bin/install_plugins"
fi
