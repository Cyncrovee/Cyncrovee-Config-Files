(use-package ef-themes
  :ensure t
  :config
  (if (string-equal-ignore-case user-boot-theme "light")
      (load-theme 'ef-light))
  (if (string-equal-ignore-case user-boot-theme "spring")
      (load-theme 'ef-spring))
  (if (string-equal-ignore-case user-boot-theme "summer")
      (load-theme 'ef-summer))
  (if (string-equal-ignore-case user-boot-theme "dark")
	  (load-theme 'ef-owl))
  (if (string-equal-ignore-case user-boot-theme "autumn")
	  (load-theme 'ef-autumn))
  (if (string-equal-ignore-case user-boot-theme "winter")
	  (load-theme 'ef-winter))
  (if (string-equal-ignore-case user-boot-theme "bio")
	  (load-theme 'ef-bio)))
