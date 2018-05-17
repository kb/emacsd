;; Load all ".el" files under ~/.emacs.d/config directory.
;; via http://www.emacswiki.org/emacs-en/DotEmacsModular#LoadDirectory

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    (quote
;;     (coffee-mode web-mode multiple-cursors zenburn-theme textmate))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(magit-branch ((t (:inherit magit-header :background "wheat4" :foreground "DarkBlue" :box (:line-width 2 :color "wheat3" :style released-button) :weight bold :height 100))))
;;  '(magit-diff-add ((nil (:foreground "green"))))
;;  '(magit-diff-del ((nil (:foreground "red"))))
;;  '(magit-diff-file-header ((t (:inherit magit-header :foreground "white"))))
;;  '(magit-diff-hunk-header ((t (:inherit magit-header :background "Grey13" :foreground "khaki1" :slant italic))))
;;  '(magit-header ((t (:foreground "white" :height 1))))
;;  '(magit-item-highlight ((((class color) (background dark)) (:background "gray10"))))
;;  '(magit-section-title ((t (:inherit magit-header :foreground "yellow" :underline t :weight bold :height 150))))
;;  '(org-level-1 ((t (:inherit outline-1 :height 1.2))))
;;  '(org-level-2 ((t (:inherit outline-2 :height 1.1)))))
;; (put 'downcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(google-lsp-kythe-server "/google/data/ro/teams/grok/tools/kythe_languageserver")
 '(org-agenda-files (quote ("~/org/work.org")))
 '(package-selected-packages
   (quote
    (dockerfile-mode ahg multi-term zenburn-theme web-mode multiple-cursors coffee-mode))))
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
(put 'upcase-region 'disabled nil)
