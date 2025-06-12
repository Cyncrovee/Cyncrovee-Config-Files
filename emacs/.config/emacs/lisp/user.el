;;; User-Specific Configuration
(setopt
 ;; This variable (user-boot-theme) sets the theme on boot.
 ;; The following options are available:
 ;; "light": ef-light
 ;; "summer": ef-summer
 ;; "dark": ef-owl
 ;; "winter": ef-winter
 ;; Any other value will not load a theme, allowing you to load your own.
 ;; Alternatively, comment out the line to show a theme selection promt at boot.
 user-boot-theme "dark"
 ;; This variable (user-completion-provider) sets the completion provider. Set to "corfu" for corfu, or "company" for company.
 user-completion-provider "corfu")
