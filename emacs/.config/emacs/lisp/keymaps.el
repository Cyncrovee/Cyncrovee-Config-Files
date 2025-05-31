;;; Setup keymaps
(evil-set-leader 'normal (kbd "SPC")) ; Set leader key
(evil-global-set-key 'normal (kbd "<leader> SPC") 'execute-extended-command) ; Double tap space for M-x functionality (I think)
;;; General
(which-key-add-key-based-replacements "<leader> g" "General")
(evil-global-set-key 'normal (kbd "<leader> gl") 'join-line) ; Connect current line to above line
;;; Evil
(which-key-add-key-based-replacements "<leader> e" "Evil")
(which-key-add-key-based-replacements "<leader> ew" "Evil Write")
(evil-global-set-key 'normal (kbd "<leader> eww") 'evil-write)
(evil-global-set-key 'normal (kbd "<leader> ewq") 'evil-write-quit)
(which-key-add-key-based-replacements "<leader> eq" "Evil Quit")
(evil-global-set-key 'normal (kbd "<leader> eqq") 'evil-quit)
(evil-global-set-key 'normal (kbd "<leader> eqa") 'evil-quit-all)
;; Window Managment
(evil-global-set-key 'normal (kbd "M-o") 'other-window) ; Move to another window
(evil-global-set-key 'normal (kbd "M-k") 'evil-window-up)
(evil-global-set-key 'normal (kbd "M-j") 'evil-window-down)
(evil-global-set-key 'normal (kbd "M-h") 'evil-window-left)
(evil-global-set-key 'normal (kbd "M-l") 'evil-window-right)
(evil-global-set-key 'normal (kbd "<up>") 'evil-window-up)
(evil-global-set-key 'normal (kbd "<down>") 'evil-window-down)
(evil-global-set-key 'normal (kbd "<left>") 'evil-window-left)
(evil-global-set-key 'normal (kbd "<right>") 'evil-window-right)
;;; Magit
(evil-global-set-key 'normal (kbd "<f9>") 'magit) ; Use magit with F9
(evil-global-set-key 'normal (kbd "<C-f9>") 'simple-magit) ; Opens Magit, then deletes other windows
;;; Files/Directories
(which-key-add-key-based-replacements "<leader> f" "Files/Directories")
(which-key-add-key-based-replacements "<leader> ff" "Find/Navigate Files/Directories")
(which-key-add-key-based-replacements "<leader> fc" "Create Files/Directories")
(evil-global-set-key 'normal (kbd "<leader> ffd") 'dired)
(evil-global-set-key 'normal (kbd "<leader> ffr") 'recentf)
(evil-global-set-key 'normal (kbd "<leader> ffo") 'recentf-open-files)
(evil-global-set-key 'normal (kbd "<leader> ffs") 'project-switch-project)
(evil-global-set-key 'normal (kbd "<leader> ffc") 'open-emacs-config)
(evil-global-set-key 'normal (kbd "<leader> fcd") 'make-directory)
(evil-global-set-key 'normal (kbd "<leader> fcf") 'make-empty-file)
;;; Describe
(which-key-add-key-based-replacements "<leader> d" "Describe")
(evil-global-set-key 'normal (kbd "<leader> ds") 'describe-symbol)
(evil-global-set-key 'normal (kbd "<leader> dk") 'describe-key)
(evil-global-set-key 'normal (kbd "<leader> dm") 'describe-key)
;;; Sly
(which-key-add-key-based-replacements "<leader> s" "Sly")
(evil-global-set-key 'normal (kbd "<leader> sl") 'sly)
(evil-global-set-key 'normal (kbd "<leader> sb") 'sly-eval-buffer)
(evil-global-set-key 'normal (kbd "<leader> sf") 'sly-eval-defun)
(evil-global-set-key 'visual (kbd "<leader> sr") 'sly-eval-region)
;;; Eglot
(which-key-add-key-based-replacements "<leader> l" "Elgot")
(evil-global-set-key 'normal (kbd "<leader> lf") 'eglot-format-buffer)
(evil-global-set-key 'normal (kbd "<leader> la") 'eglot-code-actions)
;;; Rust
(which-key-add-key-based-replacements "<leader> r" "Rust")
(evil-global-set-key 'normal (kbd "<leader> rr") 'rust-run)
;;; Menus
(which-key-add-key-based-replacements "<leader> u" "Menus")
(evil-global-set-key 'normal (kbd "<leader> up") 'list-processes)
;;; Buffers
(which-key-add-key-based-replacements "<leader> b" "Buffers")
(evil-global-set-key 'normal (kbd "<leader> bm") 'buffer-menu)
(evil-global-set-key 'normal (kbd "<leader> bc") 'kill-current-buffer)
;;; Tabs
(which-key-add-key-based-replacements "<leader> t" "Tabs")
(evil-global-set-key 'normal (kbd "<leader> tn") 'tab-line-new-tab)
(evil-global-set-key 'normal (kbd "<leader> tc") 'tab-line-close-tab)
(evil-global-set-key 'normal (kbd "C-<tab>") 'tab-line-switch-to-next-tab)
(evil-global-set-key 'normal (kbd "C-<iso-lefttab>") 'tab-line-switch-to-prev-tab)
;;; Modes/Misc Toggles
(which-key-add-key-based-replacements "<leader> m" "Modes")
(evil-global-set-key 'normal (kbd "<leader> mo") 'olivetti-mode)
(evil-global-set-key 'normal (kbd "<leader> mh") 'global-diff-hl-mode)
(evil-global-set-key 'normal (kbd "<leader> mw") 'global-visual-line-mode)
(evil-global-set-key 'normal (kbd "<leader> ml") 'toggle-truncate-lines)
(evil-global-set-key 'normal (kbd "<leader> mb") 'type-break) ; Take a break from typing
