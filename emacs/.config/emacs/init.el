;;; Enable modes/misc functions
(electric-pair-mode)
(electric-quote-mode)
(which-key-mode)

;;; Set options
(setopt
 use-short-answers t
 use-package-compute-statistics t
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil
 indent-tabs-mode nil
 evil-want-keybinding nil
 ring-bell-function 'ignore
 inferior-lisp-program "sbcl")
;;; Modeline format
(setopt evil-mode-line-format 'before)
(setopt mode-line-format
        '("%e"
          mode-line-position
          vc-mode
          mode-line-modes))

;;; Setup packages
(use-package spacemacs-theme
  :defer t
  :init
  (load-theme 'spacemacs-dark))
(use-package evil
  :ensure t
  :init
  (evil-mode)
  :config
  (evil-set-undo-system 'undo-redo))
(use-package company
  :ensure t
  :init
  (setq company-minimum-prefix-length 1
        company-idle-delay 0)
  (global-company-mode)
  (company-tng-mode))
(use-package vertico
  :ensure t
  :init
  (vertico-mode)
  (define-key vertico-map (kbd "<tab>") 'vertico-next)
  (define-key vertico-map (kbd "<backtab>") 'vertico-previous)
  (define-key vertico-map (kbd "<C-return>") 'vertico-insert))
(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))
(use-package indent-bars
  :ensure t
  :hook
  ((rust-mode emacs-lisp-mode lisp-mode) . indent-bars-mode))
(use-package rainbow-delimiters
  :ensure t
  :hook
  ((lisp-mode-hook emacs-lisp-mode-hook) . rainbow-delimiters-mode))
(use-package magit
  :ensure t)
(use-package aggressive-indent
  :ensure t
  :hook
  ((lisp-mode-hook emacs-lisp-mode-hook) . aggressive-indent-mode))
(use-package sly
  :ensure t)
(use-package rust-mode
  :ensure t)
;;; Setup MELPA packages
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(use-package evil-collection
  :ensure t
  :init
  (evil-collection-init))
(use-package olivetti
  :ensure t
  :init
  (setopt olivetti-body-width 0.70))

;;; Setup Eglot
(add-hook 'rust-mode-hook 'eglot-ensure)

;;; Setup custom functions
(defun open-emacs-config ()
  (interactive)
  (dired user-emacs-directory))
(defun evil-write-quit ()
  (interactive)
  (evil-write)
  (evil-quit))

;;; Setup keymaps
;;; General
(evil-set-leader 'normal (kbd "SPC")) ; Set leader key
(evil-global-set-key 'normal (kbd "<leader> SPC") 'execute-extended-command) ; Double tap space for M-x functionality (I think)
(which-key-add-key-based-replacements "<leader> g" "General")
(evil-global-set-key 'normal (kbd "<leader> gw") 'other-window) ; Move to another window
(evil-global-set-key 'normal (kbd "<leader> gl") 'join-line) ; Connect current line to above line
(evil-global-set-key 'normal (kbd "<leader> gc") 'open-emacs-config) ; Opent the config directory in dired
(evil-global-set-key 'normal (kbd "<leader> gt") 'swap-theme) ; Hot swap between spacemacs themes
;;; Evil
(which-key-add-key-based-replacements "<leader> e" "Evil")
(which-key-add-key-based-replacements "<leader> ew" "Evil Write")
(evil-global-set-key 'normal (kbd "<leader> eww") 'evil-write)
(evil-global-set-key 'normal (kbd "<leader> ewq") 'evil-write-quit)
(which-key-add-key-based-replacements "<leader> eq" "Evil Quit")
(evil-global-set-key 'normal (kbd "<leader> eqq") 'evil-quit)
(evil-global-set-key 'normal (kbd "<leader> eqa") 'evil-quit-all)
(evil-global-set-key 'normal (kbd "<up>") 'evil-window-up)
(evil-global-set-key 'normal (kbd "<down>") 'evil-window-down)
(evil-global-set-key 'normal (kbd "<left>") 'evil-window-left)
(evil-global-set-key 'normal (kbd "<right>") 'evil-window-right)
;;; Magit
(evil-global-set-key 'normal (kbd "<f9>") 'magit) ; Use magit with F9
;;; Files/Directories
(which-key-add-key-based-replacements "<leader> c" "Files/Directories")
(evil-global-set-key 'normal (kbd "<leader> cd") 'make-directory)
(evil-global-set-key 'normal (kbd "<leader> cf") 'make-empty-file)
;;; Describe
(which-key-add-key-based-replacements "<leader> d" "Describe")
(evil-global-set-key 'normal (kbd "<leader> ds") 'describe-symbol)
(evil-global-set-key 'normal (kbd "<leader> dk") 'describe-key)
(evil-global-set-key 'normal (kbd "<leader> dm") 'describe-key)
;;; Sly
(which-key-add-key-based-replacements "<leader> s" "Sly")
(evil-global-set-key 'normal (kbd "<leader> sl") 'sly)
(evil-global-set-key 'normal (kbd "<leader> sb") 'sly-eval-buffer)
(evil-global-set-key 'normal (kbd "<leader> sf") 'sly-eval-defun)
(evil-global-set-key 'visual (kbd "<leader> sr") 'sly-eval-region)
;;; Eglot
(which-key-add-key-based-replacements "<leader> l" "Elgot")
(evil-global-set-key 'normal (kbd "<leader> lf") 'eglot-format-buffer)
(evil-global-set-key 'normal (kbd "<leader> la") 'eglot-code-actions)
;;; Rust
(which-key-add-key-based-replacements "<leader> r" "Rust")
(evil-global-set-key 'normal (kbd "<leader> rr") 'rust-run)
;;; Menus
(which-key-add-key-based-replacements "<leader> u" "Menus")
(evil-global-set-key 'normal (kbd "<leader> ub") 'buffer-menu)
;;; Tabs
(which-key-add-key-based-replacements "<leader> t" "Tabs")
(evil-global-set-key 'normal (kbd "<leader> tn") 'tab-bar-new-tab)
(evil-global-set-key 'normal (kbd "<leader> tc") 'tab-bar-close-tab)
(evil-global-set-key 'normal (kbd "<leader> to") 'tab-bar-close-other-tabs)
;;; Modes
(which-key-add-key-based-replacements "<leader> m" "Modes")
(evil-global-set-key 'normal (kbd "<leader> mo") 'olivetti-mode)
