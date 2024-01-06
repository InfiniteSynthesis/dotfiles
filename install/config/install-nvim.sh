#!/usr/bin/env bash

mkdir -p "${VIMCONFIG}"

# init.vim
ln -sf "$DOTFILES/nvim/init.vim" "${VIMCONFIG}"
echo -e "Install ${LightYellow}init.vim${DefaultColor} in ${LightYellow}${VIMCONFIG}${DefaultColor}"

# plugconf
ln -sf "$DOTFILES/nvim/plugconf" "${VIMCONFIG}"
echo -e "Install ${LightYellow}plugconf${DefaultColor} in ${LightYellow}${VIMCONFIG}${DefaultColor}"

# ftplugin
ln -sf "$DOTFILES/nvim/ftplugin" "${VIMCONFIG}"
echo -e "Install ${LightYellow}ftplugin${DefaultColor} in ${LightYellow}${VIMCONFIG}${DefaultColor}"

# coc-settings.json
ln -sf "$DOTFILES/nvim/coc-settings.json" "${VIMCONFIG}"
echo -e "Install ${LightYellow}coc-settings.json${DefaultColor} in ${LightYellow}${VIMCONFIG}${DefaultColor}"

# K-Snippets
ln -sf "$DOTFILES/nvim/K-Snippets" "${VIMCONFIG}"
echo -e "Install ${LightYellow}K-Snippets${DefaultColor} in ${LightYellow}${VIMCONFIG}${DefaultColor}"
