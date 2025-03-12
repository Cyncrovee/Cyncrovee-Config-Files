#!/bin/bash

# This will only work if the directory is named ".dotfiles"
mkdir ~/.config/emacs
cp ~/.dotfiles/emacs/init.el ~/.config/emacs/
echo '(load "~/.config/emacs/init.el")' >> ~/.emacs.d/init.el
