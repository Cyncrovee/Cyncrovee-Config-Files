(use-package ef-themes
  :ensure t
  :config
  (if (string-equal user-boot-theme "light")
	  (load-theme 'ef-summer))
  (if (string-equal user-boot-theme "dark")
	  (load-theme 'ef-owl))
  (if (string-equal user-boot-theme "light")
	  (load-theme 'ef-summer)))
