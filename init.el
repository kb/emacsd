;; --- LOADED
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(require 'look-n-feel)
(require 'bindings)
(require 'preferences)
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'magit)

; --- DISABLE BACKUPS
(setq backup-inhibited t)
(setq auto-save-default nil)