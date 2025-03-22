;;; Package Managment
;; Setup use-package (See: https://github.com/jwiegley/use-package, GPL-3.0)
(eval-when-compile
  (add-to-list 'load-path "<path where use-package is installed>")
  (require 'use-package))

;; ELPA Packages
(use-package org
  :ensure t)
(use-package magit
  :ensure t)
(use-package flycheck
  :ensure t)
(use-package embark
  :ensure t)
(use-package projectile
  :ensure t
  :init
  (projectile-mode))
(use-package indent-bars ; See: https://github.com/jdtsmith/indent-bars (GPL-3.0)
  :ensure t
  :hook ((lsp-mode org-mode) . indent-bars-mode))
(use-package evil        ; See: https://github.com/emacs-evil/evil (GPL-3.0) & https://github.com/emacs-evil/evil-collection (GPL-3.0)
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (evil-mode))
(use-package company
  :ensure t
  :init
  (global-company-mode))
(use-package vertico
  :ensure t
  :init
  (vertico-mode))
(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))
(use-package orderless   ; See: https://github.com/oantolin/orderless (GPL-3.0)
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))
;; Setup MELPA stable (See: https://stable.melpa.org/#/getting-started and https://github.com/melpa/melpa, GPL-3.0)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://stable.melpa.org/packages/") t)
;; MELPA Theme(s)
(use-package doom-themes
  :ensure t)
;; MELPA Packages
(use-package lsp-mode                            ; See: https://github.com/emacs-lsp/lsp-mode (GPL-3.0)
  :ensure t
  :hook (rust-ts-mode . lsp-deferred)
  :commands (lsp-deferred))
(use-package lsp-ui
  :ensure t)
(use-package evil-collection                     ; See: https://github.com/emacs-evil/evil (GPL-3.0) & https://github.com/emacs-evil/evil-collection (GPL-3.0)
  :after evil
  :ensure t
  :init
  (evil-collection-init))
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode))
(setq-default doom-modeline-indent-info t)       ; Show information about the indentation settings
(setq-default doom-modeline-total-line-number t) ; Show the total amount of lines in the buffer
(setq-default doom-modeline-workspace-name t)    ; Show workspace name
(use-package dashboard                           ; See https://github.com/emacs-dashboard/emacs-dashboard (GPL-3.0)
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-center-content t)
(setq dashboard-items '((recents  . 10)
                        (projects . 5)
                        (agenda   . 5)))

;;; General Options
;; Load theme
(load-theme 'doom-opera) ; Feel free to swap out with another theme
;; Enable mode(s)
(global-auto-revert-mode)          ; Automatically refresh file
(global-display-line-numbers-mode) ; Enable line numbers
(global-hl-line-mode)              ; Highlight current line
(column-number-mode)               ; Display line number/column
(electric-pair-mode)               ; Automatically close parens
(electric-quote-mode)              ; Automatically close quotes
;; (completion-preview-mode)       ; Enable autosuggestions (Only available in Emacs 30.1 and up)
;; Set options
(setq-default make-backup-files nil) ; Disable backup files
(setq-default auto-save-default nil) ; Disable auto save files
(setq-default create-lockfiles nil)  ; Disable lock file creation
(setq-default tab-width 4)           ; Set tab spaces to 4
(setq-default indent-tabs-mode nil)  ; Convert tabs to spaces
;; (setq visible-bell t)             ; Stops error sounds, however may enable a screen flashing/flickering effect
