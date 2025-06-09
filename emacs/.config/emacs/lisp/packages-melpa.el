;;; Setup MELPA Stable packages
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(use-package evil-collection
  :ensure t
  :init
  (evil-collection-init))
(use-package prescient
  :ensure t)
(use-package corfu-prescient
  :ensure t
  :init
  (corfu-prescient-mode))
(use-package vertico-prescient
  :ensure t
  :init
  (vertico-prescient-mode))
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setopt doom-modeline-icon nil))
(use-package olivetti
  :ensure t
  :init
  (setopt olivetti-body-width 0.70))
(use-package focus
  :ensure t)
