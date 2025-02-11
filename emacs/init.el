;; Setup use-package
(eval-when-compile
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;; Setup packages
(use-package solarized-theme
  :ensure t)

(use-package evil
  :ensure t)

(use-package org
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package magit
  :ensure t)

(use-package which-key
  :ensure t)

(use-package indent-bars
  :ensure t)

(use-package vertico
  :ensure t)

(use-package evil
  :ensure t)

;; Load theme
(load-theme 'solarized-gruvbox-dark)

;; Enable mode(s)
(evil-mode)

;; Automatically refresh file
(global-auto-revert-mode)

;; Enable line numbers
(global-display-line-numbers-mode)

;; Highlight current line
(global-hl-line-mode)

;; Display line number/column
(column-number-mode)

;; Stop error sounds
(setq visible-bell t)

;; Disable backup files
(setq make-backup-files nil)

;; Set tab spaces to 4
(setq-default tab-width 4)

;; Convert tabs to sapces
(setq-default indent-tabs-mode nil)
