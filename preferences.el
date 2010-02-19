;; --- PREFERENCES (I LIKES WHAT I DOS AND I DOS WHAT I LIKES)

;; Set ibuffer as the default
(defalias 'list-buffers 'ibuffer)

;; Dude, where's my git?
(setq magit-git-executable "/usr/local/git/bin/git")

;; Makes soft-tabs (spaces sans tabs)
(setq-default indent-tabs-mode nil)

;; Override default tabbing in css mode
(add-hook 'css-mode-hook  (setq css-indent-offset 2))

;; How many spaces should my tab be?
(setq default-tab-width 2)

;; Delete works as it should
(normal-erase-is-backspace-mode 1)

;; Highlight the current line
(global-hl-line-mode 1)

;; y and n. Two who keystrokes letters saved!
(defalias 'yes-or-no-p 'y-or-n-p)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; ido-mode is like magic pixie dust!
(when (> emacs-major-version 21)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point 'guess
        ido-max-prospects 10))

(provide 'preferences)