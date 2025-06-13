# cynvee-main-config-files

# Waring: The Emacs config is being transferred to https://github.com/Cyncrovee/Unbox-EMC. Look there for future updates.

This is a git repo for my configuration files.
If you decide to use any of these configs, feel free to add or remove from them as you see fit- Have fun with it!

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

[^warning]: See 1. in the numbered "Please keep in mind the following" list.
