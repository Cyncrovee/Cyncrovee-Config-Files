;;; Setup custom functions
(defun open-emacs-config ()
  (interactive)
  (dired user-emacs-directory))
(defun evil-write-quit ()
  (interactive)
  (evil-write)
  (evil-quit))
