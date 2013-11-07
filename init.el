;; Loaded
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Lock n Load packages not found in elpa
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/nav"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/less-css-mode"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/whitespace"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/textmate"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/pbcopy"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/pianobar"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/go-mode"))

(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))
;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; Require 3rd party before custom tweaks
(require 'textmate)
(require 'pbcopy)
(require 'cl)
(require 'saveplace)
(require 'uniquify)
(require 'feature-mode)
(require 'less-css-mode)
(require 'whitespace)
(require 'pianobar)
(require 'mouse)
(require 'go-mode-load)

;; Custom
(require 'look-n-feel)
(require 'bindings)
(require 'preferences)

; --- DISABLE BACKUPS
(setq backup-directory-alist (quote ((".*" . "~/.emacs_temp/backups"))))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,"~/.emacs_temp/autosaves" t)))

(put 'dired-find-alternate-file 'disabled nil)
(put 'erase-buffer 'disabled nil)
