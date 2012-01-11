;; --- LOOK n FEEL

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Transparency
;;(set-frame-parameter nil 'alpha '(85 75))

;; Default startup sizing
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 150))

;; Kill the splash screen
(setq inhibit-startup-screen t)

;; Load up color theme of choice
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;; Destroy unicode garbage in shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

(provide 'look-n-feel)
