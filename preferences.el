;; --- PREFERENCES (I LIKES WHAT I DOS AND I DOS WHAT I LIKES)

;; Set some shell preferences
(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/usr/local/git/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path))

;; Set ibuffer as the default
(defalias 'list-buffers 'ibuffer)

;; Dude, where's my git?
(setq magit-git-executable "/usr/local/git/bin/git")

;; Makes soft-tabs (spaces sans tabs)
(setq-default indent-tabs-mode nil)

;; Override default tabbing for certain mode
(add-hook 'css-mode-hook  (setq css-indent-offset 2))

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

;; Set quick jump directories for nav
(setq nav-quickdir-list (list "~/www" "~/repos" "~/Dropbox"))

;; Set quick jump files for nav
(setq nav-quickfile-list (list "~/.bash_profile" "~/.gitconfig" "~/.emacs.d/preferences.el"))

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

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Yuuuuuuppp! Cmd-t / Meta-t
(textmate-mode)

;; Make copy fucking paste work when running in terminal
(turn-on-pbcopy)

(provide 'preferences)
