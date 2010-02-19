;; --- PREFERENCES (I LIKES WHAT I DOS AND I DOS WHAT I LIKES)

;; Set ibuffer as the default
(defalias 'list-buffers 'ibuffer)

;; Makes soft-tabs (spaces sans tabs)
(setq-default indent-tabs-mode nil)

;; Override default tabbing in css mode
(add-hook 'css-mode-hook  (setq css-indent-offset 2))

;; How many spaces should my tab be?
(setq default-tab-width 2)

;; Delete works as it should
(normal-erase-is-backspace-mode 1)

(provide 'preferences)