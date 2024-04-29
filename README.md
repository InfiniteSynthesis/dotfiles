# k-dotfiles

## Dependencies

Here is the complete list of dependencies.

- git / [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
- [zsh](https://www.zsh.org/) / [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Neovim](https://neovim.io/) / [vim-plug](https://github.com/junegunn/vim-plug)
- [tmux](https://github.com/tmux/tmux/wiki) / [fzf](https://github.com/junegunn/fzf)
- [nvm](https://github.com/nvm-sh/nvm) / [node](https://nodejs.org) / [npm](https://www.npmjs.com/) / [yarn](https://classic.yarnpkg.com)
- [openvpn](https://github.com/OpenVPN/openvpn)

## Installation

> [!WARNING]
> There is **NO** backup system.
> This installation instruction is for clean install only.
> Use at your own risk.

1. Install `git`, `zsh` and a nerd font (e.g., [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)).

1. Download this repository in `$HOME/Workspace` and initialize submodules.

   ```shell
   cd ~
   mkdir -p Workspace && cd Workspace
   git clone https://github.com/InfiniteSynthesis/dotfiles.git
   cd dotfiles
   git submodule update --init --recursive
   ```

1. Setup `git` user information by copying `git/user-config.exmaple` and renaming it as `git/user-config`. Update `email`, `name` and `signingkey` if needed.

1. Run package installation script `./install.sh`.

1. Set `zsh` as default shell and relaunch terminal. Then setup `powerlevel10k` theme.

   ```shell
   chsh -s $(which zsh)
   ```

1. Install [`nvm`](https://github.com/nvm-sh/nvm), [`node`](https://nodejs.org/en), [`npm`](https://www.npmjs.com/) and [`yarn`](https://classic.yarnpkg.com).

1. Install [`vim-plug`](https://github.com/junegunn/vim-plug) and the plugins.
   ```shell
   vim -S $DOTFILES/nvim/plug-snapshot
   ```

## Optionall Installation

- Run optional package installation script in `install/package`. This will install `qbittorrent-nox`, `sigil` and `virtualbox`.

- Install [`Anime4K`](https://github.com/bloc97/Anime4K) shaders for `mpv`.

- Set `qbittorrent-nox` as a system service ([official wiki](<https://github.com/qbittorrent/qBittorrent/wiki/Running-qBittorrent-without-X-server-(WebUI-only,-systemd-service-set-up,-Ubuntu-15.04-or-newer)>)).

  1. Create a new file, `/etc/systemd/system/qbittorrent.service`.

     ```shell
     sudoedit /etc/systemd/system/qbittorrent.service
     ```

  1. Save the file with the following contents or similar. Replace `qbtuser` if needed.

     ```
     [Unit]
     Description=qBittorrent-nox service
     Documentation=man:qbittorrent-nox(1)
     Wants=network-online.target
     After=network-online.target nss-lookup.target

     [Service]
     # if you have systemd < 240 (Ubuntu 18.10 and earlier, for example), you probably want to use Type=simple instead
     Type=exec
     # change user as needed
     User=qbtuser
     # The -d flag should not be used in this setup
     ExecStart=/usr/bin/qbittorrent-nox
     # uncomment this for versions of qBittorrent < 4.2.0 to set the maximum number of open files to unlimited
     #LimitNOFILE=infinity
     # uncomment this to use "Network interface" and/or "Optional IP address to bind to" options
     # without this binding will fail and qBittorrent's traffic will go through the default route
     # AmbientCapabilities=CAP_NET_RAW
     # Environment="DBUS_SESSION_BUS_ADDRESS={RESULT OF ECHO DBUS_SESSION_BUS_ADDRESS}"

     [Install]
     WantedBy=multi-user.target
     ```

  1. Enable it to start up on boot `sudo systemctl enable qbittorrent`.

- Set `qbittorrent-nox` Web UI as [`VueTorrent`](https://github.com/WDaan/VueTorrent). In "Settings - WebUI", tick "Use alternative WebUI" and set "File location" as `$DOTFILES/qbittorrent/VueTorrent` (Absolute path is needed).

- Enable system notification when a task is finished in `qbittorrent-nox`.

  1. Uncomment `Environment="DBUS_SESSION_BUS_ADDRESS={RESULT OF ECHO DBUS_SESSION_BUS_ADDRESS}` in `/etc/systemd/system/qbittorrent.service` and replace the value with `echo $DBUS_SESSION_BUS_ADDRESS`.

  1. In "Settings - Downloads", tick "Run external program on torrent finished:" and set "Command" as `$DOTFILES/qbittorrent/on-completion.sh "%N"` (Absolute path is needed).

## Feedback

Suggestions / improvements are [welcome](https://github.com/InfiniteSynthesis/dotfiles/issues)!
