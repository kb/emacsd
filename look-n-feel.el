;; --- LOOK n FEEL

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Transparency (set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(95 75))
(add-to-list 'default-frame-alist '(alpha 95 75))

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

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(magit-branch ((t (:inherit magit-header :background "wheat4" :foreground "DarkBlue" :box (:line-width 2 :color "wheat3" :style released-button) :weight bold :height 100))))
 '(magit-diff-add ((nil (:foreground "green"))))
 '(magit-diff-del ((nil (:foreground "red"))))
 '(magit-diff-file-header ((t (:inherit magit-header :foreground "white"))))
 '(magit-diff-hunk-header ((t (:inherit magit-header :background "Grey13" :foreground "khaki1" :slant italic))))
 '(magit-header ((t (:foreground "white" :height 1))))
 '(magit-item-highlight ((((class color) (background dark)) (:background "gray10"))))
 '(magit-section-title ((t (:inherit magit-header :foreground "yellow" :underline t :weight bold :height 150))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.2))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.1)))))

(provide 'look-n-feel)
