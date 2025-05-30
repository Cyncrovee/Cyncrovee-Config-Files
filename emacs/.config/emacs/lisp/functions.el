;;; Setup custom functions
(defun open-emacs-config ()
  "Open the Emacs directory in Dired."
  (interactive)
  (dired user-emacs-directory))

(defun evil-write-quit ()
  "Call evil-write, then evil-quit."
  (interactive)
  (evil-write)
  (evil-quit))

(defun simple-magit ()
  "Open Magit, then delete other windows."
  (interactive)
  (magit)
  (delete-other-windows)
  (olivetti-mode))
