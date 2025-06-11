(use-package ef-themes
  :ensure t
  :config
  (if (string-equal-ignore-case user-boot-theme "light")
      (load-theme 'ef-light))
  (if (string-equal user-boot-theme "summer")
      (load-theme 'ef-summer))
  (if (string-equal-ignore-case user-boot-theme "dark")
	  (load-theme 'ef-owl)))

