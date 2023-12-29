# Terminal Palette

## iTerm

Import `.itemcolors` file to settings. See [https://iterm2colorschemes.com/](https://iterm2colorschemes.com/).

## Windows Terminal

Add json palette to `settings.json` then apply in the settings tab.
See [https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme](https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme).

## Ubuntu Terminal

Use `dconf load` to read palette to exisitng profiles.
Target `:profile-uuid` can be extracted by calling `dconf dump /org/gnome/terminal/legacy/profiles:/`.
E.g.,

```shell
dconf load /org/gnome/terminal/legacy/profiles:/:profile-uuid/ < $DOTFILES/palette/ubuntuTerminal/tokyonight-moon
```
