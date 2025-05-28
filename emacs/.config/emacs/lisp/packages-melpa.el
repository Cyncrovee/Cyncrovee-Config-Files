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
