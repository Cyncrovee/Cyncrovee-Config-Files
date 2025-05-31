(defun load-dark-theme()
  (use-package spacemacs-theme
    :ensure t
    :defer t
    :init
    (load-theme 'spacemacs-dark)))

(defun load-light-theme()
  (load-theme 'modus-operandi-tinted))

(load-dark-theme) ; If you want the light theme, comment out this line and uncomment the below line
;;; (load-light-theme)

;;; Load elisp files
(load-file (concat user-emacs-directory "/lisp/functions.el"))
(load-file (concat user-emacs-directory "/lisp/options.el"))
(load-file (concat user-emacs-directory "/lisp/packages-elpa.el"))
(load-file (concat user-emacs-directory "/lisp/packages-melpa.el"))
(load-file (concat user-emacs-directory "/lisp/keymaps.el"))
