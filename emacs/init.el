;; Setup use-package (see: https://github.com/jwiegley/use-package)
(eval-when-compile
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;; ELPA Packages
(use-package solarized-theme
  :ensure t)
(use-package org
  :ensure t)
(use-package markdown-mode
  :ensure t)
(use-package magit
  :ensure t)
(use-package indent-bars
  :ensure t)
(use-package evil
  :ensure t
  :init
  (evil-mode))
(use-package company
  :ensure t
  :init
  (global-company-mode))
(use-package vertico
  :ensure t
  :init
  (vertico-mode))
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode))

;; Setup MELPA stable (see https://stable.melpa.org/#/getting-started)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)

;; MELPA Packages
(use-package find-file-in-project
  :ensure t)
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode))
(setq-default doom-modeline-icon nil) ;; Disable modeline icons
(setq-default doom-modeline-indent-info t) ;; Show information about the indentation settings
(setq-default doom-modeline-total-line-number t) ;; Show the total amount of lines in the buffer
(setq-default doom-modeline-workspace-name t) ;; Show workspace name

;; Load theme
(load-theme 'solarized-gruvbox-dark)

;; Enable mode(s)
(global-auto-revert-mode) ;; Automatically refresh file
(global-display-line-numbers-mode) ;; Enable line numbers
(global-hl-line-mode) ;; Highlight current line
(column-number-mode) ;; Display line number/column
;; (completion-preview-mode) ;; Enable autosuggestions (Only available in Emacs 30.1 and up)

;; Set options
(setq-default make-backup-files nil) ;; Disable backup files
(setq-default tab-width 4) ;; Set tab spaces to 4
(setq-default indent-tabs-mode nil) ;; Convert tabs to spaces
;; (setq visible-bell t) ;; Stops error sounds, however may enable a screen flashing/flickering effect
