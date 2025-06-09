;;; Enable modes
(electric-pair-mode)
(electric-quote-mode)
(which-key-mode)
(savehist-mode)
(recentf-mode)
(global-auto-revert-mode)

;;; Set options
(which-key-setup-side-window-right-bottom)
(setopt
 use-short-answers t
 use-package-compute-statistics t
 global-auto-revert-non-file-buffers t
 show-paren-when-point-inside-paren t
 word-wrap t
 truncate-lines t
 vc-follow-symlinks t
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil
 evil-want-keybinding nil
 tab-width 4
 ring-bell-function 'ignore
 inferior-lisp-program "sbcl"
 package-archive-priorities '(("gnu" . 15)
							  ("nongnu" . 10)
							  ("melpa" . 5)))
;;; Modeline format
(setopt evil-mode-line-format 'before)
(setopt mode-line-format
        '("%e"
          mode-line-position
          vc-mode
          mode-line-modes))
