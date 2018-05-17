;; Loaded
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Lock n Load packages not found in elpa
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/nav"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/whitespace"))
(add-to-list 'load-path (concat dotfiles-dir "../non_elpa/go-mode"))

(require 'package)

;; Add Emacs Lisp Package Archive repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; Use the 'google' package by default.
(require 'google)
(require 'google-lsp)
(require 'google-ycmd)

;;(require 'lsp-flycheck)  ; if you want Flycheck support
(customize-set-variable 'google-lsp-kythe-server "/google/data/ro/teams/grok/tools/kythe_languageserver")
(google-lsp-init)

;; Require 3rd party before custom tweaks
(require 'cl)
(require 'saveplace)
(require 'uniquify)
(require 'whitespace)
(require 'ahg)
(require 'org)

; --- DISABLE BACKUPS
(setq backup-directory-alist (quote ((".*" . "~/.emacs_temp/backups"))))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,"~/.emacs_temp/autosaves" t)))
