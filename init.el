;; User Info
(setq user-full-name "Kyle Bolton")
(setq user-mail-address "kyle.bolton@gmail.com")

;; Load all ".el" files under ~/.emacs.d/config directory.
;; via http://www.emacswiki.org/emacs-en/DotEmacsModular#LoadDirectory
(load "~/.emacs.d/load-directory")
(load-directory "~/.emacs.d/config")
