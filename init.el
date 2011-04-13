;; Loaded
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; Lock n Load packages not found in elpa
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/nav"))
(add-to-list 'load-path (concat dotfiles-dir "/non_elpa/magit"))

;; Load up elpa
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(require 'look-n-feel)
(require 'bindings)
(require 'preferences)
(require 'cl)
(require 'saveplace)
(require 'uniquify)
(require 'feature-mode)
(require 'nav)
(require 'magit)

; --- DISABLE BACKUPS
(setq backup-directory-alist (quote ((".*" . "~/.emacs_temp/backups"))))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,"~/.emacs_temp/autosaves" t)))

;; Fire up  cucumber mode
;; (add-to-list 'auto-mode-alist '("/.features&" . feature-mode))

(put 'dired-find-alternate-file 'disabled nil)
