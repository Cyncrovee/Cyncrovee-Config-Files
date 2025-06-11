;;; Setup packages (ELPA)
(use-package evil
  :ensure t
  :init
  (evil-mode)
  :config
  (evil-set-undo-system 'undo-redo))
(use-corfu-completion)
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
  ((rust-mode conf-space-mode) . indent-bars-mode))
(use-package rainbow-delimiters
  :ensure t
  :hook
  ((lisp-mode emacs-lisp-mode conf-space-mode) . rainbow-delimiters-mode))
(use-package magit
  :ensure t)
(use-package diff-hl
  :ensure t)
(use-package aggressive-indent
  :ensure t
  :hook
  ((lisp-mode emacs-lisp-mode) . aggressive-indent-mode))
(use-package sly
  :ensure t)
(use-package rust-mode
  :ensure t
  :hook (rust-mode . 'eglot-ensure))
(use-package markdown-mode
  :ensure t)
(use-package consult
  :ensure t)
(use-package embark
  :ensure t)
(use-package embark-consult
  :ensure t)
