;;; Setup custom functions
(defun use-company-completion ()
  (use-package company
    :ensure t
    :init
    (global-company-mode)
    (company-tng-mode)
    :config
    (setq company-minimum-prefix-length 1
          company-idle-delay 0)))

(defun use-corfu-completion ()
  (use-package corfu
    :ensure t
    :init
    (global-corfu-mode)
    (corfu-popupinfo-mode)
    :config
    (setopt corfu-cycle t
            corfu-auto t
            corfu-auto-delay 0.0
            corfu-auto-prefix 0
            corfu-preview-current nil
            corfu-quit-no-match 'separator)
    :bind (:map corfu-map
                ("<tab>" . 'corfu-next)
                ("<backtab>" . 'corfu-previous)))
  (use-package cape
    :ensure t
    :init
    (add-hook 'completion-at-point-functions #'cape-dabbrev)
    (add-hook 'completion-at-point-functions #'cape-file)
    (add-hook 'completion-at-point-functions #'cape-elisp-symbol)
    (add-hook 'completion-at-point-functions #'cape-elisp-block)
    (add-hook 'completion-at-point-functions #'cape-keyword)))

(defun open-emacs-config ()
  "Open the Emacs directory in Dired."
  (interactive)
  (dired user-emacs-directory))

(defun open-user-file ()
  "Open the user config file, for base configuration."
  (interactive)
  (find-file-existing (concat user-emacs-directory "lisp/user.el")))

(defun evil-write-quit ()
  "Call evil-write, then evil-quit."
  (interactive)
  (evil-write)
  (evil-quit))

(defun simple-magit ()
  "Open Magit, then delete other windows and enable Olivetti mode."
  (interactive)
  (magit)
  (delete-other-windows)
  (olivetti-mode))
