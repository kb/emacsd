;; --- PREFERENCES (I LIKES WHAT I DOS AND I DOS WHAT I LIKES)

;; Set ibuffer as the default
(defalias 'list-buffers 'ibuffer)

;; Where's git?
(setq magit-git-executable "/usr/local/bin/git")

;; Enable rainbow delimiters
(add-hook 'web-mode-hook #'rainbow-delimiters-mode)
(add-hook 'ruby-mode-hook #'rainbow-delimiters-mode)

;; Makes soft-tabs (spaces sans tabs)
(setq-default indent-tabs-mode nil)

;; Override default tabbing for certain mode
(add-hook 'css-mode-hook  (setq css-indent-offset 2))

(add-hook 'web-mode-hook (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook (setq web-mode-css-indent-offset 2))

;; Set mode for file on load
;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(setq web-mode-content-types-alist
  '(("jsx" . "\\.js[x]?\\'")))

;; 2 spaces instead of 4 for javascript
(setq js-indent-level 2)

;; How many spaces should my tab be?
(setq default-tab-width 2)

;; Delete works as it should
(normal-erase-is-backspace-mode 0)

;; Turn off current line highlight
(global-hl-line-mode 0)

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

;; Sets the Option key Meta
(setq mac-option-modifier 'meta)

;; Show dot-files in nav
(setq nav-hidden t)

;; M-x eb is the shortcut
(defalias 'eb 'erase-buffer)

;; pretty colors for shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; nuke trailing whitespaces when writing to a file
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(defun duplicate-line()
  "Duplicates current line"
  (interactive)
  (kill-whole-line)
  (yank)(yank))

;; Turn on line numbers for every buffer
;; (global-linum-mode t)

;; Fix for shift up = <select> is undefined for windmove
(define-key input-decode-map "\e[1;2A" [S-up])

;; Set these key mappings in Terminal.app for windmove
;; shift cursor up: \033[1;2A
;; shift cursor down: \033[1;2B
(windmove-default-keybindings)

;; Textmate Cmd-t -> M-t
(textmate-mode)

;; Make copy fucking paste work when running in terminal
(turn-on-pbcopy)

;; Column numbers should always be displayed
(column-number-mode)

;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] (lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] (lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)
;; Open new buffer using vertical splitting
(setq split-height-threshold nil)
(setq split-width-threshold 0)

(provide 'preferences)
