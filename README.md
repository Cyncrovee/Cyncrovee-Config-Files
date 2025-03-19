# cynvee-main-config-files

## This is a git repo for my config files.

## The following are compatable with GNU Stow:
- Alacritty
- Neovim (nvim)
- Vim
- Fastfetch

For example,
```shell
stow nvim
```
Would apply the neovim config, however only if there is not an existing config in ~/.config/nvim

## Please keep in mind the following:
- Any files that begin with "." will likely not be compatable with DOS file systems.
- Stow will only work in the repo is stored in the users home directory.
- The emacs config is not techinally compatable with GNU Stow, however it can sort of work if you run ```stow emacs``` and then add this line to your init.el:
```
(load "~/.config/emacs/init.el")
```
