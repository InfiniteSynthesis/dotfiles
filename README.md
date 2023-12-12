# Kanade's dotfiles

## Overview

Here is the complete list of dependencies.

- git/diff-so-fancy
- Neovim
- tmux
- qbittorrent-nox
- nvm/node/npm

## Installation

> **Warning:**
>
> There are **NO** backup system.
> This installation instruction is for clean install only.
> Use at your own risk.

1. Install `git`, `zsh` and a nerd font (e.g., [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) from powerlevel10k).

1. Download this repository in `$HOME/Workspace` and initialize submodules.

    ```shell
    cd ~
    mkdir -p Workspace && cd Workspace
    git clone https://github.com/InfiniteSynthesis/dotfiles.git
    cd dotfiles
    git submodule update --init --recursive
    ```

1. Set `zsh` as default shell and relaunch terminal.

    ```shell
    chsh -s $(which zsh)
    ```

1. Run package installation script `./install-packages.sh`.

1. Optionall, install the following packages.

## Feedback

Suggestions /improvements [welcome](https://github.com/InfiniteSynthesis/dotfiles/issues)!