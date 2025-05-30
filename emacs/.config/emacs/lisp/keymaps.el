;;; Setup keymaps
;;; General
(evil-set-leader 'normal (kbd "SPC")) ; Set leader key
(evil-global-set-key 'normal (kbd "<leader> SPC") 'execute-extended-command) ; Double tap space for M-x functionality (I think)
(which-key-add-key-based-replacements "<leader> g" "General")
(evil-global-set-key 'normal (kbd "<leader> gl") 'join-line) ; Connect current line to above line
(evil-global-set-key 'normal (kbd "<leader> gc") 'open-emacs-config) ; Opent the config directory in dired
(evil-global-set-key 'normal (kbd "<leader> gt") 'swap-theme) ; Hot swap between spacemacs themes
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
;;; Magit
(evil-global-set-key 'normal (kbd "<f9>") 'magit) ; Use magit with F9
(evil-global-set-key 'normal (kbd "<up>") 'evil-window-up)
(evil-global-set-key 'normal (kbd "<down>") 'evil-window-down)
(evil-global-set-key 'normal (kbd "<left>") 'evil-window-left)
(evil-global-set-key 'normal (kbd "<right>") 'evil-window-right)
;;; Files/Directories
(which-key-add-key-based-replacements "<leader> c" "Files/Directories")
(evil-global-set-key 'normal (kbd "<leader> cd") 'make-directory)
(evil-global-set-key 'normal (kbd "<leader> cf") 'make-empty-file)
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
(evil-global-set-key 'normal (kbd "<leader> ub") 'buffer-menu)
;;; Tabs
(which-key-add-key-based-replacements "<leader> t" "Tabs")
(evil-global-set-key 'normal (kbd "<leader> tn") 'tab-bar-new-tab)
(evil-global-set-key 'normal (kbd "<leader> tc") 'tab-bar-close-tab)
(evil-global-set-key 'normal (kbd "<leader> to") 'tab-bar-close-other-tabs)
;;; Modes/Misc Toggles
(which-key-add-key-based-replacements "<leader> m" "Modes")
(evil-global-set-key 'normal (kbd "<leader> mo") 'olivetti-mode)
(evil-global-set-key 'normal (kbd "<leader> mh") 'global-diff-hl-mode)
(evil-global-set-key 'normal (kbd "<leader> mw") 'global-visual-line-mode)
(evil-global-set-key 'normal (kbd "<leader> ml") 'toggle-truncate-lines)
