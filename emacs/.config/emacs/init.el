;;; Setup user settings
(defvar user-boot-theme nil)
(defvar user-completion-provider)
(load-file (concat user-emacs-directory "/lisp/user.el"))

;;; Load elisp files
(load-file (concat user-emacs-directory "/lisp/theme.el"))
(load-file (concat user-emacs-directory "/lisp/functions.el"))
(load-file (concat user-emacs-directory "/lisp/options.el"))
(load-file (concat user-emacs-directory "/lisp/packages-elpa.el"))
(load-file (concat user-emacs-directory "/lisp/packages-melpa.el"))
(load-file (concat user-emacs-directory "/lisp/keymaps.el"))
