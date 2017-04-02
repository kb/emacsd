;; Loaded
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Lock n Load packages not found in elpa
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/nav"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/whitespace"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/textmate"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/pbcopy"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/go-mode"))

(require 'package)

;; Add Emacs Lisp Package Archive repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)


(package-initialize)

;; Use the 'google' package by default.
(require 'google)

;; Require 3rd party before custom tweaks
(require 'textmate)
(require 'pbcopy)
(require 'cl)
(require 'saveplace)
(require 'uniquify)
(require 'whitespace)

; --- DISABLE BACKUPS
(setq backup-directory-alist (quote ((".*" . "~/.emacs_temp/backups"))))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,"~/.emacs_temp/autosaves" t)))
