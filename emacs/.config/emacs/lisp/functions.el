;;; Setup custom functions
(defun open-emacs-config ()
  (interactive)
  (dired user-emacs-directory))
(defun evil-write-quit ()
  (interactive)
  (evil-write)
  (evil-quit))

(defun simple-magit ()
  "Open Magit, then delete other windows."
  (interactive)
  (magit)
  (delete-other-windows)
  (olivetti-mode))
