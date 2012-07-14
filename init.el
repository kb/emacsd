;; Loaded
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Lock n Load packages not found in elpa
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/nav"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/magit"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/rhtml"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/less-css-mode"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/whitespace"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/textmate"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/pbcopy"))

(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)

;; Require 3rd party before custom tweaks
(require 'textmate)
(require 'pbcopy)
(require 'cl)
(require 'saveplace)
(require 'uniquify)
(require 'feature-mode)
(require 'rhtml-mode)
(require 'less-css-mode)
(require 'whitespace)
(require 'magit)

;; Custom
(require 'look-n-feel)
(require 'bindings)
(require 'preferences)

; --- DISABLE BACKUPS
(setq backup-directory-alist (quote ((".*" . "~/.emacs_temp/backups"))))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,"~/.emacs_temp/autosaves" t)))

(put 'dired-find-alternate-file 'disabled nil)
(put 'erase-buffer 'disabled nil)
