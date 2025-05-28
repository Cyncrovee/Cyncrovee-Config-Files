;;; Set options
(setopt
 use-short-answers t
 use-package-compute-statistics t
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil
 indent-tabs-mode nil
 evil-want-keybinding nil
 ring-bell-function 'ignore
 inferior-lisp-program "sbcl")
;;; Modeline format
(setopt evil-mode-line-format 'before)
(setopt mode-line-format
        '("%e"
          mode-line-position
          vc-mode
          mode-line-modes))
