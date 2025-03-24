# cynvee-main-config-files

## This is a git repo for my config files.

## The following are compatable with GNU Stow:
- Alacritty
- Ghostty
- Emacs
- Neovim (nvim)
- Vim
- Fastfetch

For example,
```shell
stow nvim
```
Would apply the neovim config, however only if there is not an existing config in ~/.config/nvim

## Please keep in mind the following:
1. Any files that begin with "." will likely not be compatable with DOS file systems.
2. Stow will only work in the repo is stored in the users home directory.
3. The emacs config is compatable with stow, however you need to ensure there is no emacs config currently active, otherwise it may not source the file correctly.
4. Once the repo is cloned, you may want to rename it to ".dotfiles"[^warning] or something similar, as this will make the folder hidden, however this entirely is your choice.
5. For more information on the emacs configuration, see the [[https://github.com/cyncrovee/cynvee-main-config-files/blob/main/emacs/.config/emacs/README-Emacs.org][Emacs README]]

[^warning]: See 1. in the numbered "Please keep in mind the following" list.
