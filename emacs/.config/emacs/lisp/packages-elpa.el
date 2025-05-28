;;; Setup packages (ELPA)
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
  ((rust-mode) . indent-bars-mode))
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
  :ensure t
  :hook (rust-mode . 'eglot-ensure))
