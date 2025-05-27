;;; Enable modes
(which-key-mode)
(electric-pair-mode)
(electric-quote-mode)

;;; Set options
(setopt
 use-short-answers t
 use-package-compute-statistics t
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil
 indent-tabs-mode nil
 ring-bell-function 'ignore
 evil-want-keybinding nil
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
  ((rust-mode emacs-lisp-mode) . indent-bars-mode))
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

;;; Setup keymaps
;;; General
(evil-set-leader 'normal (kbd "SPC")) ; Set leader key
(evil-global-set-key 'normal (kbd "<leader> SPC") 'execute-extended-command) ; Double tap space for M-x functionality (I think)
(evil-global-set-key 'normal (kbd "<leader> wo") 'other-window) ; Move to another window
(evil-global-set-key 'normal (kbd "<leader> jl") 'join-line) ; Move to another window
;;; Evil
(evil-global-set-key 'normal (kbd "<leader> ew") 'evil-write)
(evil-global-set-key 'normal (kbd "<up>") 'evil-window-up)
(evil-global-set-key 'normal (kbd "<down>") 'evil-window-down)
(evil-global-set-key 'normal (kbd "<left>") 'evil-window-left)
(evil-global-set-key 'normal (kbd "<right>") 'evil-window-right)
;;; Magit
(evil-global-set-key 'normal (kbd "<f9>") 'magit) ; Use magit with F9
;; Dired
(evil-global-set-key 'normal (kbd "<leader> dr") 'make-directory) ; Use magit with F9
(evil-global-set-key 'normal (kbd "<leader> df") 'make-empty-file) ; Use magit with F9
;;; Sly
(evil-global-set-key 'normal (kbd "<leader> sl") 'sly)
(evil-global-set-key 'normal (kbd "<leader> sb") 'sly-eval-buffer)
(evil-global-set-key 'normal (kbd "<leader> sf") 'sly-eval-defun)
(evil-global-set-key 'visual (kbd "<leader> sr") 'sly-eval-region)
;;; Eglot
(evil-global-set-key 'normal (kbd "<leader> lf") 'eglot-format-buffer)
(evil-global-set-key 'normal (kbd "<leader> la") 'eglot-code-actions)
;;; Rust
(evil-global-set-key 'normal (kbd "<leader> rr") 'rust-run)
;;; Menus
(evil-global-set-key 'normal (kbd "<leader> bm") 'buffer-menu)
;;; Tabs
(evil-global-set-key 'normal (kbd "<leader> tn") 'tab-bar-new-tab)
(evil-global-set-key 'normal (kbd "<leader> tn") 'tab-bar-new-tab)
(evil-global-set-key 'normal (kbd "<leader> tc") 'tab-bar-close-tab)
(evil-global-set-key 'normal (kbd "<leader> to") 'tab-bar-close-other-tabs)
;;; Modes
(evil-global-set-key 'normal (kbd "<leader> mo") 'olivetti-mode)
